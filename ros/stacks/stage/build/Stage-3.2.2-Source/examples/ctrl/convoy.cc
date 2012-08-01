/////////////////////////////////
// File: pioneer_flocking.cc
// Desc: Flocking behaviour, Stage controller demo
// Created: 2009.7.8
// Author: Richard Vaughan <vaughan@sfu.ca>
// License: GPL
/////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "stage.hh"
using namespace Stg;


class Robot
{
public:
  //ModelLaser* laser;
  ModelPosition* position;
  ModelRanger* ranger;
  ModelFiducial* fiducial;

  ModelFiducial::Fiducial* closest;  
  stg_radians_t closest_heading_error; 

  unsigned int updates;

  double destx, desty;

  class Vis : public Visualizer 
  {
  private:
	 //static Option showArea;
  public:
	 Vis( Robot* rob );
	 virtual ~Vis( void ){}
	 virtual void Visualize( Model* mod, Camera* cam );
	 
	 class Robot* rob;
  } vis;

  // constructor
  Robot( Model* pos );
};


// forward declare
int RangerUpdate( ModelRanger* mod, Robot* robot );
int FiducialUpdate( ModelFiducial* fid, Robot* robot );

Robot::Robot( Model* pos ) : 
  position( (ModelPosition*)pos ),
  ranger( (ModelRanger*)position->GetModel( "ranger:0" )),
  fiducial( (ModelFiducial*)position->GetModel( "fiducial:0" )),  
  closest(NULL),
  updates(0),
  vis( this )
{
  assert( ranger );
  assert( fiducial );
    
  ranger->AddUpdateCallback( (stg_model_callback_t)RangerUpdate, this );
  fiducial->AddUpdateCallback( (stg_model_callback_t)FiducialUpdate, this );

  fiducial->Subscribe();
  ranger->Subscribe();
  position->Subscribe();

  pos->AddVisualizer( &vis, true );
  
}


Robot::Vis::Vis( Robot* rob ) :
  Visualizer( "convoy", "convoy" ),
  rob(rob)
{}

void Robot::Vis::Visualize( Model* mod, Camera* cam )
{
  mod->PushColor( Color(0,0,0) );//mod->GetColor() );
  //glRectf( 0,0,1,1 );

  const Pose& p = mod->GetPose();
  
  // return to global frame
  glPushMatrix();
  Gl::pose_inverse_shift( p );
  
  glBegin( GL_LINES );
  
  glVertex2f( p.x, p.y);
  glVertex2f( rob->destx, rob->desty );
  
  if( rob->closest )
	 {
		glVertex2f( p.x, p.y);
		glVertex2f( rob->closest->pose.x, rob->closest->pose.y );
	 }
  //glVertex2f( p.x, p.y);
  //glVertex2f( rob->destx, rob->desty );

  glEnd();
  
  mod->PopColor();
  glPopMatrix();
}

const double VSPEED = 0.4; // meters per second
const double EXPAND_WGAIN = 0.3; // turn speed gain
const double FLOCK_WGAIN = 0.3; // turn speed gain
const double SAFE_DIST = 1.0; // meters
const double SAFE_ANGLE = 0.5; // radians


// Stage calls this when the model starts up
extern "C" int Init( Model* mod )
{  
  new Robot( mod );
  return 0; //ok
}

int RangerUpdate( ModelRanger* rgr, Robot* robot )
{  	
  if( robot->updates++ % 1000 == 0 )
	 {
		robot->destx = drand48() * 10;
		robot->desty = drand48() * 10;

		if( robot->updates % 3 == 0 )
		  {
			 robot->destx += 30;
			 robot->desty += 30;
		  }
	 }

  // compute the vector sum of the sonar ranges	      
  double dx=0, dy=0;
  
  // use the front-facing sensors only
  for( unsigned int i=0; i < 8; i++ )
	 {
		ModelRanger::Sensor& s = rgr->sensors[i];
		dx += s.range * cos( s.pose.a );
		dy += s.range * sin( s.pose.a );
	 }
  
  //if( (dx == 0) || (dy == 0) )
  //return 0;
    
  // angle to destination
  const Pose& p = robot->position->GetPose();	    
  double angle_to_goal = atan2( robot->desty-p.y, robot->destx - p.x );
  double error = normalize(angle_to_goal - p.a);  
  //turn_speed = 1.0 * error;

  double resultant_angle = atan2( dy, dx );
  double forward_speed = 0.0;
  double side_speed = 0.0;	   
  //double turn_speed = error;//EXPAND_WGAIN * resultant_angle;
  double turn_speed = error + EXPAND_WGAIN * resultant_angle;
  
  // if the front is clear, drive forwards
  if( (rgr->sensors[3].range > SAFE_DIST) && // forwards
	  (rgr->sensors[4].range > SAFE_DIST) &&
	  (rgr->sensors[5].range > SAFE_DIST ) && //
	  (rgr->sensors[6].range > SAFE_DIST/2.0) && 
	  (rgr->sensors[2].range > SAFE_DIST ) && 
	  (rgr->sensors[1].range > SAFE_DIST/2.0) && 
	  (fabs( resultant_angle ) < SAFE_ANGLE) )
	{
	  forward_speed = VSPEED;
	  
	  // and steer to match the heading of the nearest robot
	  //if( robot->closest && (robot->closest->geom.a < 1.0) )
	  //turn_speed += FLOCK_WGAIN * robot->closest->geom.a; 	  
	}
  else
	{
	  // front not clear. we might be stuck, so wiggle a bit
	  //if( fabs(turn_speed) < 0.1 )
	  //turn_speed = drand48();
	}
  
  robot->position->SetSpeed( forward_speed, side_speed, turn_speed );
  
  return 0;
}


int FiducialUpdate( ModelFiducial* fid, Robot* robot )
{  	
  // find the closest teammate
  
  double dist = 2.0;//1e6; // big
  
  if( robot->closest )
	 delete robot->closest;
  
  robot->closest = NULL;
  
  FOR_EACH( it, fid->GetFiducials() )
	{
	  ModelFiducial::Fiducial* other = &(*it);
	  
	  if( other->range < dist )
		{
		  dist = other->range;
		  robot->closest = other;
		}				
	}
  
  if( robot->closest ) // if we saw someone
	  // replace the pointer into the vector with a copy that will
	  // still be valid when the vector is changed
	  robot->closest = new ModelFiducial::Fiducial( *robot->closest );
  
  return 0;
}
