
#include "stage.hh"
#include "worldfile.hh"

#include <libgen.h> // for dirname(3)
#include <limits.h> // for _POSIX_PATH_MAX

#undef DEBUG

using namespace Stg;
using namespace std;

BlockGroup::BlockGroup() 
  : displaylist(0),
	blocks(), 
	minx(0),
	maxx(0),
	miny(0),
	maxy(0)
{ /* empty */ }

BlockGroup::~BlockGroup()
{	 
  Clear();
}

void BlockGroup::AppendBlock( Block* block )
{
  blocks.insert( block );
}

void BlockGroup::Clear()
{
  FOR_EACH( it, blocks )
	delete *it;
  
  blocks.clear();
}

void BlockGroup::SwitchToTestedCells()
{
  // confirm the tentative pose for all blocks
  FOR_EACH( it, blocks )
	(*it)->SwitchToTestedCells();  
}

void BlockGroup::AppendTouchingModels( ModelPtrSet &v )
{
  FOR_EACH( it, blocks )
	(*it)->AppendTouchingModels( v );  
}

Model* BlockGroup::TestCollision()
{
  Model* hitmod = NULL;
   
  FOR_EACH( it, blocks )
	if( (hitmod = (*it)->TestCollision()))
	  break; // bail on the earliest collision

  return hitmod; // NULL if no collision
}


// establish the min and max of all the blocks, so we can scale this
// group later
void BlockGroup::CalcSize()
{  
  // assuming the blocks currently fit in a square +/- one billion units
  //double minx, miny, maxx, maxy, minz, maxz;
  minx = miny =  billion;
  maxx = maxy = -billion;
  
  size.z = 0.0; // grow to largest z we see
  
  FOR_EACH( it, blocks )
	{
	  // examine all the points in the polygon
	  Block* block = *it;
	  
	  for( unsigned int p=0; p < block->pt_count; p++ )
		{
		  stg_point_t* pt = &block->pts[p];
		  if( pt->x < minx ) minx = pt->x;
		  if( pt->y < miny ) miny = pt->y;
		  if( pt->x > maxx ) maxx = pt->x;
		  if( pt->y > maxy ) maxy = pt->y;
		}
	  
	  size.z = std::max( block->local_z.max, size.z );
	}
  
  // store these bounds for normalization purposes
  size.x = maxx-minx;
  size.y = maxy-miny;
  
  offset.x = minx + size.x/2.0;
  offset.y = miny + size.y/2.0;
  offset.z = 0; // todo?

  InvalidateModelPointCache();
}


void BlockGroup::Map()
{
  FOR_EACH( it, blocks )
	(*it)->Map();
}

void BlockGroup::UnMap()
{
  FOR_EACH( it, blocks )
	(*it)->UnMap();
}

void BlockGroup::DrawSolid( const Geom & geom )
{
  glPushMatrix();

  Gl::pose_shift( geom.pose );

  glScalef( geom.size.x / size.x,
			geom.size.y / size.y,				
			geom.size.z / size.z );
  
  glTranslatef( -offset.x, -offset.y, -offset.z );
  
  FOR_EACH( it, blocks )
	(*it)->DrawSolid();

  glPopMatrix();
}

void BlockGroup::DrawFootPrint( const Geom & geom )
{
  glPushMatrix();
  
  glScalef( geom.size.x / size.x,
			geom.size.y / size.y,				
			geom.size.z / size.z );
  
  glTranslatef( -offset.x, -offset.y, -offset.z );
  
  FOR_EACH( it, blocks )
	(*it)->DrawFootPrint();

  glPopMatrix();
}

void BlockGroup::BuildDisplayList( Model* mod )
{
  if( ! mod->world->IsGUI() )
	return;

  //printf( "display list for model %s\n", mod->token );
  if( displaylist == 0 )
	{
	  displaylist = glGenLists(1);
	  CalcSize();
	}

  glNewList( displaylist, GL_COMPILE );	
    
  Geom geom = mod->GetGeom();

  Gl::pose_shift( geom.pose );

  glScalef( geom.size.x / size.x,
			geom.size.y / size.y,				
			geom.size.z / size.z );
  
  glTranslatef( -offset.x, -offset.y, -offset.z );
  
  glPolygonMode( GL_FRONT_AND_BACK, GL_FILL );
  glEnable(GL_POLYGON_OFFSET_FILL);
  glPolygonOffset(1.0, 1.0);
  
  mod->PushColor( mod->color );
  
  FOR_EACH( it, blocks )
	{
	  Block* blk = (*it);
		
	  if( (!blk->inherit_color) && (blk->color != mod->color) )
		{
		  mod->PushColor( blk->color );		
		  blk->DrawSolid();
		  mod->PopColor();
		}
	  else
		blk->DrawSolid();
	}
  
  mod->PopColor();
  
  glDisable(GL_POLYGON_OFFSET_FILL);
  
  glPolygonMode( GL_FRONT_AND_BACK, GL_LINE );
  glDepthMask(GL_FALSE);
  
  Color c = mod->color;
  c.r /= 2.0;
  c.g /= 2.0;
  c.b /= 2.0;
  mod->PushColor( c );

  //c.Print( "color" );


  FOR_EACH( it, blocks )
	{
	  Block* blk = *it;
		
	  if( (!blk->inherit_color) && (blk->color != mod->color) )
		{
		  Color c = blk->color;
		  c.r /= 2.0;
		  c.g /= 2.0;
		  c.b /= 2.0;
		  mod->PushColor( c );
		  //c.Print( "bar" );
		  blk->DrawSolid();
		  mod->PopColor();
		}
	  else
		blk->DrawSolid();
	}

  glDepthMask(GL_TRUE);
  glPolygonMode( GL_FRONT_AND_BACK, GL_FILL );
  
  mod->PopColor();

  glEndList();
}

void BlockGroup::CallDisplayList( Model* mod )
{
  if( displaylist == 0 )
		BuildDisplayList( mod );
  
  glCallList( displaylist );
}

void BlockGroup::LoadBlock( Model* mod, Worldfile* wf, int entity )
{
  AppendBlock( new Block( mod, wf, entity ));
}				
  
void BlockGroup::LoadBitmap( Model* mod, const std::string& bitmapfile, Worldfile* wf )
{
  PRINT_DEBUG1( "attempting to load bitmap \"%s\n", bitmapfile );
  
  char full[_POSIX_PATH_MAX];
  
  if( bitmapfile[0] == '/' )
	 strncpy( full, bitmapfile.c_str(), _POSIX_PATH_MAX );
  else
	{
	  char *tmp = strdup(wf->filename.c_str());
	  snprintf( full, _POSIX_PATH_MAX,
					"%s/%s",  dirname(tmp), bitmapfile.c_str() );
	  free(tmp);
	}
  
  PRINT_DEBUG1( "attempting to load image %s", full );
  
  stg_rotrect_t* rects = NULL;
  unsigned int rect_count = 0;
  unsigned int width, height;
  if( stg_rotrects_from_image_file( full,
									&rects,
									&rect_count,
									&width, &height ) )
	{
	  PRINT_ERR1( "failed to load rects from image file \"%s\"",
				  full );
	  return;
	}
  
  //printf( "found %d rects in \"%s\" at %p\n", 
  //	  rect_count, full, rects );
			 
  if( rects && (rect_count > 0) )
	{
	  // TODO fix this
	  Color col( 1.0, 0.0, 1.0, 1.0 );
		
	  for( unsigned int r=0; r<rect_count; r++ )
		{
		  stg_point_t pts[4];
			 
		  double x = rects[r].pose.x;
		  double y = rects[r].pose.y;
		  double w = rects[r].size.x;
		  double h = rects[r].size.y;
			 
		  pts[0].x = x;
		  pts[0].y = y;
		  pts[1].x = x + w;
		  pts[1].y = y;
		  pts[2].x = x + w;
		  pts[2].y = y + h;
		  pts[3].x = x;
		  pts[3].y = y + h;							 
			 
		  AppendBlock( new Block( mod,
								  pts,4,
								  0,1,
								  col,
								  true ) );		 
		}			 
	  free( rects );
	}  
  
  CalcSize();
}


void BlockGroup::Rasterize( uint8_t* data, 
							unsigned int width, 
							unsigned int height,
							stg_meters_t cellwidth,
							stg_meters_t cellheight )
{  
  FOR_EACH( it, blocks )
	(*it)->Rasterize( data, width, height, cellwidth, cellheight );
}
