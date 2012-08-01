#ifndef STG_H
#define STG_H
/*
 *  Stage : a multi-robot simulator. Part of the Player Project.
 * 
 *  Copyright (C) 2001-2009 Richard Vaughan, Brian Gerkey, Andrew
 *  Howard, Toby Collett, Reed Hedges, Alex Couture-Beil, Jeremy
 *  Asher, Pooya Karimian
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/** \file stage.hh
 *  Desc: External header file for the Stage library
 *  Author: Richard Vaughan (vaughan@sfu.ca) 
 *  Date: 1 June 2003
 *  SVN: $Id: stage.hh 8330 2009-10-27 19:13:58Z rtv $
 */

// C libs
#include <unistd.h>
#include <stdint.h> // for portable int types eg. uint32_t
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <libgen.h>
#include <string.h>
#include <sys/types.h>
#include <sys/time.h>
#include <pthread.h> 

// C++ libs
#include <cmath>
#include <iostream>
#include <vector>
#include <list>
#include <map>
#include <set>
#include <queue>
#include <algorithm>

// FLTK Gui includes
#include <FL/Fl.H>
#include <FL/Fl_Box.H>
#include <FL/Fl_Gl_Window.H>
#include <FL/Fl_Menu_Bar.H>
#include <FL/Fl_Window.H>
#include <FL/fl_draw.H>
#include <FL/gl.h> // FLTK takes care of platform-specific GL stuff
// except GLU
#ifdef __APPLE__
#include <OpenGL/glu.h>
#else
#include <GL/glu.h>
#endif 

/** @brief The Stage library uses its own namespace */
namespace Stg 
{
  // forward declare
  class Block;
  class Canvas;
  class Cell;
  class Worldfile;
  class World;
  class WorldGui;
  class Model;
  class OptionsDlg;
  class Camera;
  class FileManager;
  class Option;
  
  typedef Model* (*creator_t)( World*, Model*, const std::string& type );
  
  /** Set of pointers to Models. */
  typedef std::set<Model*> ModelPtrSet;

  /** Set of pointers to Models. */
  typedef std::vector<Model*> ModelPtrVec;

  /** Set of pointers to Blocks. */
  typedef std::set<Block*> BlockPtrSet;

  /** Vector of pointers to Cells.*/
  typedef std::vector<Cell*> CellPtrVec;

  /** Initialize the Stage library */
  void Init( int* argc, char** argv[] );

  /** returns true iff Stg::Init() has been called. */
  bool InitDone();
  
  /** returns a human readable string indicating the libstage version
		number. */
  const char* Version();

  /** Copyright string */
  const char COPYRIGHT[] =				       
    "Copyright Richard Vaughan and contributors 2000-2009";

  /** Author string */
  const char AUTHORS[] =					
    "Richard Vaughan, Brian Gerkey, Andrew Howard, Reed Hedges, Pooya Karimian, Toby Collett, Jeremy Asher, Alex Couture-Beil and contributors.";

  /** Project website string */
  const char WEBSITE[] = "http://playerstage.org";

  /** Project description string */
  const char DESCRIPTION[] =				       
    "Robot simulation library\nPart of the Player Project";

  /** Project distribution license string */
  const char LICENSE[] = 
    "Stage robot simulation library\n"					\
    "Copyright (C) 2000-2009 Richard Vaughan and contributors\n"	\
    "Part of the Player Project [http://playerstage.org]\n"		\
    "\n"								\
    "This program is free software; you can redistribute it and/or\n"	\
    "modify it under the terms of the GNU General Public License\n"	\
    "as published by the Free Software Foundation; either version 2\n"	\
    "of the License, or (at your option) any later version.\n"		\
    "\n"								\
    "This program is distributed in the hope that it will be useful,\n"	\
    "but WITHOUT ANY WARRANTY; without even the implied warranty of\n"	\
    "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"	\
    "GNU General Public License for more details.\n"			\
    "\n"								\
    "You should have received a copy of the GNU General Public License\n" \
    "along with this program; if not, write to the Free Software\n"	\
    "Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.\n" \
    "\n"								\
    "The text of the license may also be available online at\n"		\
    "http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\n";
  
  /** Convenient constant */
  const double thousand = 1e3;

  /** Convenient constant */
  const double million = 1e6;

  /** Convenient constant */
  const double billion = 1e9;

  /** convert an angle in radians to degrees. */
  inline double rtod( double r ){ return( r*180.0/M_PI ); }
  
  /** convert an angle in degrees to radians. */
  inline double dtor( double d ){ return( d*M_PI/180.0 ); }
  
  /** Normalize an angle to within +/_ M_PI. */
  inline double normalize( double a )
  {
	 while( a < -M_PI ) a += 2.0*M_PI;
	 while( a >  M_PI ) a -= 2.0*M_PI;	 
	 return a;
  };
	
  /** take binary sign of a, either -1, or 1 if >= 0 */
  inline int sgn( int a){ return( a<0 ? -1 : 1); }
	
  /** take binary sign of a, either -1.0, or 1.0 if >= 0. */
  inline double sgn( double a){ return( a<0 ? -1.0 : 1.0); }
  
  /** any integer value other than this is a valid fiducial ID */
  enum { FiducialNone = 0 };

  /** Value that uniquely identifies a model */
  typedef uint32_t stg_id_t;

  /** Metres: floating point unit of distance */
  typedef double stg_meters_t;

  /** Radians: unit of angle */
  typedef double stg_radians_t;

  /** time structure */
  typedef struct timeval stg_time_t;

  /** Milliseconds: unit of (short) time */
  typedef unsigned long stg_msec_t;

  /** Microseconds: unit of (very short) time */
  typedef uint64_t stg_usec_t;

  /** Kilograms: unit of mass */
  typedef double stg_kg_t; // Kilograms (mass)

  /** Joules: unit of energy */
  typedef double stg_joules_t;

  /** Watts: unit of power (energy/time) */
  typedef double stg_watts_t;
  
  /** boolean */
  typedef bool stg_bool_t;
  
  class Color
  {
  public:
	 float r,g,b,a;
	
	 Color( float r, float g, float b, float a=1.0 );
	
	 /** Look up the color in the X11-style database. If the color is
		  not found in the database, a cheerful red color will be used
		  instead.  */
	 Color( const std::string& name );	
	
	 Color();
	
	 bool operator!=( const Color& other );
	 bool operator==( const Color& other );
	 static Color RandomColor();
	 void Print( const char* prefix );
  };
  
  /** specify a rectangular size */
  class Size
  {
  public:
    stg_meters_t x, y, z;
	
    Size( stg_meters_t x, 
			 stg_meters_t y, 
			 stg_meters_t z )
      : x(x), y(y), z(z)
    {/*empty*/}
	
    /** default constructor uses default non-zero values */
    Size() : x( 0.4 ), y( 0.4 ), z( 1.0 )
    {/*empty*/}	
	
	 void Load( Worldfile* wf, int section, const char* keyword );
	 void Save( Worldfile* wf, int section, const char* keyword );
	 
	 void Zero()
	 { x=y=z=0.0; }
  };
  
  /** Specify a 3 axis position, in x, y and heading. */
  class Pose
  {
  public:
    stg_meters_t x, y, z;///< location in 3 axes
    stg_radians_t a;///< rotation about the z axis. 
    
    Pose( stg_meters_t x, 
			 stg_meters_t y, 
			 stg_meters_t z,
			 stg_radians_t a ) 
      : x(x), y(y), z(z), a(a)
    { /*empty*/ }
    
    Pose() : x(0.0), y(0.0), z(0.0), a(0.0)
    { /*empty*/ }		 
    
    virtual ~Pose(){};
    
    /** return a random pose within the bounding rectangle, with z=0 and
		  angle random */
    static Pose Random( stg_meters_t xmin, stg_meters_t xmax, 
								stg_meters_t ymin, stg_meters_t ymax )
    {		 
      return Pose( xmin + drand48() * (xmax-xmin),
						 ymin + drand48() * (ymax-ymin),
						 0, 
						 normalize( drand48() * (2.0 * M_PI) ));
    }
    
	 /** Print pose in human-readable format on stdout
		  @param prefix Character string to prepend to pose output 
	 */
    virtual void Print( const char* prefix )
    {
      printf( "%s pose [x:%.3f y:%.3f z:%.3f a:%.3f]\n",
				  prefix, x,y,z,a );
    }
	
	 std::string String()
	 {
		char buf[256];
		snprintf( buf, 256, "[ %.3f %.3f %.3f %.3f ]",
					 x,y,z,a );
		return std::string(buf);
	 }
	
	 /* returns true iff all components of the velocity are zero. */
	 bool IsZero() const { return( !(x || y || z || a )); };
	
	 /** Set the pose to zero [0,0,0,0] */
	 void Zero(){ x=y=z=a=0.0; }
	
	 void Load( Worldfile* wf, int section, const char* keyword );
	 void Save( Worldfile* wf, int section, const char* keyword );
	
	 inline Pose operator+( const Pose& p )
	 {
		const double cosa = cos(a);
		const double sina = sin(a);
	  
		return Pose( x + p.x * cosa - p.y * sina,
						 y + p.x * sina + p.y * cosa,
						 z + p.z,
						 normalize(a + p.a) );	 
	 }	
  };
  
  
  /** Specify a 3 axis velocity in x, y and heading. 	*/
  class Velocity : public Pose
  {
  public:
	 /** @param x x position in meters 
		  @param y y position in meters 
		  @param z z position in meters 
		  @param a heading in radians 
	 */
    Velocity( stg_meters_t x, 
				  stg_meters_t y, 
				  stg_meters_t z,
				  stg_radians_t a ) :
		Pose( x, y, z, a )
    { /*empty*/ }
    
    Velocity()
    { /*empty*/ }		 
    
	 /** Print velocity in human-readable format on stdout
		  @param prefix Character string to prepend to pose output 
	 */
    virtual void Print( const char* prefix )
    {
      printf( "%s velocity [x:%.3f y:%.3f z:%3.f a:%.3f]\n",
				  prefix, x,y,z,a );
    }	 
  };
  
  /** Specify an object's basic geometry: position and rectangular
      size.  */
  class Geom
  {
  public:
    Pose pose;///< position
    Size size;///< extent
    
    void Print( const char* prefix )
    {
      printf( "%s geom pose: (%.2f,%.2f,%.2f) size: [%.2f,%.2f]\n",
				  prefix,
				  pose.x,
				  pose.y,
				  pose.a,
				  size.x,
				  size.y );
    }
	 
	 /** Default constructor. Members pose and size use their default constructors. */
	 Geom() : pose(), size() {}

	 /** construct from a prior pose and size */
	 Geom( const Pose& p, const Size& s ) : pose(p), size(s) {}
	 
	 void Zero()
	 {
		pose.Zero();
		size.Zero();
	 }
  };
  
  /** Bound a range of values, from min to max. min and max are initialized to zero. */
  class Bounds
  {
  public:
	 /// smallest value in range, initially zero
    double min;
	 /// largest value in range, initially zero
    double max; 
    
    Bounds() : min(0), max(0) { /* empty*/  }
    Bounds( double min, double max ) : min(min), max(max) { /* empty*/  }
  };
    
  /** Define a three-dimensional bounding box, initialized to zero */
  class stg_bounds3d_t
  {
  public:
	 /// volume extent along x axis, intially zero
    Bounds x; 
	 /// volume extent along y axis, initially zero
    Bounds y; 
	 /// volume extent along z axis, initially zero
    Bounds z; 

	 stg_bounds3d_t() : x(), y(), z() {}
	 stg_bounds3d_t( const Bounds& x, const Bounds& y, const Bounds& z) 
		: x(x), y(y), z(z) {}
  };
  
  /** Define a field-of-view: an angle and range bounds */
  typedef struct
  {
    Bounds range; ///< min and max range of sensor
    stg_radians_t angle; ///< width of viewing angle of sensor
  } stg_fov_t;
  
  /** Define a point on a 2d plane */
  class stg_point_t
  {
  public:
    stg_meters_t x, y;
	 stg_point_t( stg_meters_t x, stg_meters_t y ) : x(x), y(y){}	 
	 stg_point_t() : x(0.0), y(0.0){}
	
	 bool operator+=( const stg_point_t& other ) 
	 { return ((x += other.x) && (y += other.y) ); }  
  };
  
  /** Define a point in 3d space */
  class stg_point3_t
  {
  public:
    stg_meters_t x,y,z;
	 stg_point3_t( stg_meters_t x, stg_meters_t y, stg_meters_t z ) 
		: x(x), y(y), z(z) {}	 
  
	 stg_point3_t() : x(0.0), y(0.0), z(0.0) {}
  };
  
  /** Define an integer point on the 2d plane */
  class stg_point_int_t
  {
  public:
    int x,y;
		stg_point_int_t( int x, int y ) : x(x), y(y){}	 
		stg_point_int_t() : x(0), y(0){}
		
		/** required to put these in sorted containers like std::map */
		bool operator<( const stg_point_int_t& other ) const
		{
			if( x < other.x ) return true;
			if( other.x < x ) return false;
			return y < other.y;
		}
 
	 bool operator==( const stg_point_int_t& other ) const
		{ return ((x == other.x) && (y == other.y) ); }
  };
  
  typedef std::vector<stg_point_int_t> PointIntVec;

  /** create an array of 4 points containing the corners of a unit
      square.  */
  stg_point_t* stg_unit_square_points_create();
  
  /** laser return value */

  typedef enum 
    {
      LaserTransparent=0, ///<not detected by laser model 
      LaserVisible, ///< detected by laser with a reflected intensity of 0 
      LaserBright  ///< detected by laser with a reflected intensity of 1 
    } stg_laser_return_t;
  
  /** Convenient OpenGL drawing routines, used by visualization
		code. */
  namespace Gl
  {
	 void pose_shift( const Pose &pose );
	 void pose_inverse_shift( const Pose &pose );
	 void coord_shift( double x, double y, double z, double a  );
	 void draw_grid( stg_bounds3d_t vol );
	 /** Render a string at [x,y,z] in the current color */
	 void draw_string( float x, float y, float z, const char *string);
	 void draw_string_multiline( float x, float y, float w, float h, 
										  const char *string, Fl_Align align );
	 void draw_speech_bubble( float x, float y, float z, const char* str );
	 void draw_octagon( float w, float h, float m );
	 void draw_octagon( float x, float y, float w, float h, float m );
	 void draw_vector( double x, double y, double z );
	 void draw_origin( double len );
	 void draw_array( float x, float y, float w, float h, 
							float* data, size_t len, size_t offset, 
							float min, float max );
	 void draw_array( float x, float y, float w, float h, 
							float* data, size_t len, size_t offset );
	 /** Draws a rectangle with center at x,y, with sides of length dx,dy */
	 void draw_centered_rect( float x, float y, float dx, float dy );
  } // namespace Gl
  
  void RegisterModels();
  
  
  /** Abstract class for adding visualizations to models. DataVisualize must be overloaded, and is then called in the models local coord system */
  class Visualizer {
  private:
	 const std::string menu_name;
	 const std::string worldfile_name;
	 
  public:
	 Visualizer( const std::string& menu_name, 
					 const std::string& worldfile_name ) 
		: menu_name( menu_name ),
		  worldfile_name( worldfile_name )
	 { }
	 
	 virtual ~Visualizer( void ) { }
	 virtual void Visualize( Model* mod, Camera* cam ) = 0;
	 
	 const std::string& GetMenuName() { return menu_name; }
	 const std::string& GetWorldfileName() { return worldfile_name; }
  };


  typedef int(*stg_model_callback_t)(Model* mod, void* user );
  typedef int(*stg_world_callback_t)(World* world, void* user );
  
  // return val, or minval if val < minval, or maxval if val > maxval
  double constrain( double val, double minval, double maxval );
    
  typedef struct 
  {
    int enabled;
    Pose pose;
    stg_meters_t size; ///< rendered as a sphere with this diameter
    Color color;
    stg_msec_t period; ///< duration of a complete cycle
    double duty_cycle; ///< mark/space ratio
  } stg_blinkenlight_t;

  
  /** Defines a rectangle of [size] located at [pose] */
  typedef struct
  {
    Pose pose;
    Size size;
  } stg_rotrect_t; // rotated rectangle

  /** load the image file [filename] and convert it to an array of
      rectangles, filling in the number of rects, width and
      height. Memory is allocated for the rectangle array [rects], so
      the caller must free [rects].
  */
  int stg_rotrects_from_image_file( const char* filename, 
												stg_rotrect_t** rects,
												unsigned int* rect_count,
												unsigned int* widthp, 
												unsigned int* heightp );

  
  /** matching function should return true iff the candidate block is
      stops the ray, false if the block transmits the ray */
  typedef bool (*stg_ray_test_func_t)(Model* candidate, 
												  Model* finder, 
												  const void* arg );

  // STL container iterator macros
#define VAR(V,init) __typeof(init) V=(init)
#define FOR_EACH(I,C) for(VAR(I,(C).begin());I!=(C).end();I++)

/** wrapper for Erase-Remove method of removing all instances of thing from container */
  template <class T, class C>
  void EraseAll( T thing, C& cont )
  { cont.erase( std::remove( cont.begin(), cont.end(), thing ), cont.end() ); }
  
  // Error macros - output goes to stderr
#define PRINT_ERR(m) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", __FILE__, __FUNCTION__)
#define PRINT_ERR1(m,a) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", a, __FILE__, __FUNCTION__)    
#define PRINT_ERR2(m,a,b) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", a, b, __FILE__, __FUNCTION__) 
#define PRINT_ERR3(m,a,b,c) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", a, b, c, __FILE__, __FUNCTION__)
#define PRINT_ERR4(m,a,b,c,d) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", a, b, c, d, __FILE__, __FUNCTION__)
#define PRINT_ERR5(m,a,b,c,d,e) fprintf( stderr, "\033[41merr\033[0m: "m" (%s %s)\n", a, b, c, d, e, __FILE__, __FUNCTION__)

  // Warning macros
#define PRINT_WARN(m) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", __FILE__, __FUNCTION__)
#define PRINT_WARN1(m,a) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", a, __FILE__, __FUNCTION__)    
#define PRINT_WARN2(m,a,b) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", a, b, __FILE__, __FUNCTION__) 
#define PRINT_WARN3(m,a,b,c) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", a, b, c, __FILE__, __FUNCTION__)
#define PRINT_WARN4(m,a,b,c,d) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", a, b, c, d, __FILE__, __FUNCTION__)
#define PRINT_WARN5(m,a,b,c,d,e) printf( "\033[44mwarn\033[0m: "m" (%s %s)\n", a, b, c, d, e, __FILE__, __FUNCTION__)

  // Message macros
#ifdef DEBUG
#define PRINT_MSG(m) printf( "Stage: "m" (%s %s)\n", __FILE__, __FUNCTION__)
#define PRINT_MSG1(m,a) printf( "Stage: "m" (%s %s)\n", a, __FILE__, __FUNCTION__)    
#define PRINT_MSG2(m,a,b) printf( "Stage: "m" (%s %s)\n", a, b, __FILE__, __FUNCTION__) 
#define PRINT_MSG3(m,a,b,c) printf( "Stage: "m" (%s %s)\n", a, b, c, __FILE__, __FUNCTION__)
#define PRINT_MSG4(m,a,b,c,d) printf( "Stage: "m" (%s %s)\n", a, b, c, d, __FILE__, __FUNCTION__)
#define PRINT_MSG5(m,a,b,c,d,e) printf( "Stage: "m" (%s %s)\n", a, b, c, d, e,__FILE__, __FUNCTION__)
#else
#define PRINT_MSG(m) printf( "Stage: "m"\n" )
#define PRINT_MSG1(m,a) printf( "Stage: "m"\n", a)
#define PRINT_MSG2(m,a,b) printf( "Stage: "m"\n,", a, b )
#define PRINT_MSG3(m,a,b,c) printf( "Stage: "m"\n", a, b, c )
#define PRINT_MSG4(m,a,b,c,d) printf( "Stage: "m"\n", a, b, c, d )
#define PRINT_MSG5(m,a,b,c,d,e) printf( "Stage: "m"\n", a, b, c, d, e )
#endif

  // DEBUG macros
#ifdef DEBUG
#define PRINT_DEBUG(m) printf( "debug: "m" (%s %s)\n", __FILE__, __FUNCTION__)
#define PRINT_DEBUG1(m,a) printf( "debug: "m" (%s %s)\n", a, __FILE__, __FUNCTION__)    
#define PRINT_DEBUG2(m,a,b) printf( "debug: "m" (%s %s)\n", a, b, __FILE__, __FUNCTION__) 
#define PRINT_DEBUG3(m,a,b,c) printf( "debug: "m" (%s %s)\n", a, b, c, __FILE__, __FUNCTION__)
#define PRINT_DEBUG4(m,a,b,c,d) printf( "debug: "m" (%s %s)\n", a, b, c ,d, __FILE__, __FUNCTION__)
#define PRINT_DEBUG5(m,a,b,c,d,e) printf( "debug: "m" (%s %s)\n", a, b, c ,d, e, __FILE__, __FUNCTION__)
#else
#define PRINT_DEBUG(m)
#define PRINT_DEBUG1(m,a)
#define PRINT_DEBUG2(m,a,b)
#define PRINT_DEBUG3(m,a,b,c)
#define PRINT_DEBUG4(m,a,b,c,d)
#define PRINT_DEBUG5(m,a,b,c,d,e)
#endif

  class Block;
  class Model;

  /** Define a callback function type that can be attached to a
      record within a model and called whenever the record is set.*/
  typedef int (*stg_model_callback_t)( Model* mod, void* user );
  
  // ANCESTOR CLASS
  /** Base class for Model and World */
  class Ancestor
  {
    friend class Canvas; // allow Canvas access to our private members
	 
  protected:
	 ModelPtrVec children;
    bool debug;
	 std::string token;
	 pthread_mutex_t access_mutex; ///< Used by Lock() and Unlock() to prevent parallel access to this model

	 void Load( Worldfile* wf, int section );
	 void Save( Worldfile* wf, int section );
	 
  public:	
	 /* The maximum length of a Stage model identifier string */
	 //static const uint32_t TOKEN_MAX = 64;
	 	 
    /** get the children of the this element */
	 ModelPtrVec& GetChildren(){ return children;}
    
    /** recursively call func( model, arg ) for each descendant */
    void ForEachDescendant( stg_model_callback_t func, void* arg );
		
    /** array contains the number of each type of child model */
	 std::map<std::string,unsigned int> child_type_counts;
	 
    Ancestor();
    virtual ~Ancestor();
	 
    virtual void AddChild( Model* mod );
    virtual void RemoveChild( Model* mod );
    virtual Pose GetGlobalPose();
	 
    const char* Token()
    { return token.c_str(); }
	 
    void SetToken( const std::string& str )
    { token = str; } 

	 void Lock(){ pthread_mutex_lock( &access_mutex ); }	
	 void Unlock(){ pthread_mutex_unlock( &access_mutex ); }
  };

  /** raytrace sample
   */
  class RaytraceResult
  {
  public:
    Pose pose; ///< location and direction of the ray origin
    stg_meters_t range; ///< range to beam hit in meters
    Model* mod; ///< the model struck by this beam
    Color color; ///< the color struck by this beam
	 
	 RaytraceResult() : pose(), range(0), mod(NULL), color() {}
	 RaytraceResult( const Pose& pose, 
						  stg_meters_t range ) 
		: pose(pose), range(range), mod(NULL), color() {}	 
  };

  typedef RaytraceResult stg_raytrace_result_t;
	
  class Ray
  {
  public:
	 Ray( const Model* mod, const Pose& origin, const stg_meters_t range, const stg_ray_test_func_t func, const void* arg, const bool ztest ) :
		mod(mod), origin(origin), range(range), func(func), arg(arg), ztest(ztest)
	 {}

	 Ray() : mod(NULL), origin(0,0,0,0), range(0), func(NULL), arg(NULL), ztest(true)
	 {}

	 const Model* mod;
	 Pose origin;
	 stg_meters_t range;
	 stg_ray_test_func_t func;
	 const void* arg;
	 bool ztest;		
  };
		

  // defined in stage_internal.hh
  class Region;
  class SuperRegion;
  class BlockGroup;
  class PowerPack;

  class LogEntry
  {
	 stg_usec_t timestamp;
	 Model* mod;
	 Pose pose;
	 
  public:
	 LogEntry( stg_usec_t timestamp, Model* mod );
	 
	 /** A log of all LogEntries ever created */
	 static std::vector<LogEntry> log;
	 
	 /** Returns the number of logged entries */
	 static size_t Count(){ return log.size(); }
	 
	 /** Clear the log */
	 static void Clear(){ log.clear(); }

	 /** Print the log on stdout */
	 static void Print();
  };

  class CtrlArgs
  {
  public:
	 std::string worldfile;
	 std::string cmdline;

	 CtrlArgs( std::string w, std::string c ) : worldfile(w), cmdline(c) {}
  };

  /// %World class
  class World : public Ancestor
  {
    friend class Block;
    friend class Model; // allow access to private members
    friend class ModelFiducial;
    friend class Canvas;

  public: 
	 /** contains the command line arguments passed to Stg::Init(), so
		  that controllers can read them. */
	 static std::vector<std::string> args;
	 static std::string ctrlargs;

  private:
	
    static std::set<World*> world_set; ///< all the worlds that exist
    static bool quit_all; ///< quit all worlds ASAP  
    static void UpdateCb( World* world);
    static unsigned int next_id; ///<initially zero, used to allocate unique sequential world ids
	 
    bool destroy;
    bool dirty; ///< iff true, a gui redraw would be required

	 /** Pointers to all the models in this world. */
	 std::set<Model*> models;

	 /** pointers to the models that make up the world, indexed by name. */
	 std::map<std::string, Model*> models_by_name; 		

	 /** pointers to the models that make up the world, indexed by worldfile entry index */
	 std::map<int,Model*> models_by_wfentity;
		
	 /** Keep a list of all models with detectable fiducials. This
		  avoids searching the whole world for fiducials. */
	 ModelPtrVec models_with_fiducials;
	 
	 /** Add a model to the set of models with non-zero fiducials, if not already there. */
	 void FiducialInsert( Model* mod )
	 { 
		FiducialErase( mod ); // make sure it's not there already
		models_with_fiducials.push_back( mod ); 
	 }
	 
	 /** Remove a model from the set of models with non-zero fiducials, if it exists. */
	 void FiducialErase( Model* mod )
	 { 
		EraseAll( mod, models_with_fiducials );
	 }

    double ppm; ///< the resolution of the world model in pixels per meter   
    bool quit; ///< quit this world ASAP  
	 
	 bool show_clock; ///< iff true, print the sim time on stdout
	 unsigned int show_clock_interval; ///< updates between clock outputs

    pthread_mutex_t thread_mutex; ///< protect the worker thread management stuff
	 unsigned int threads_working; ///< the number of worker threads not yet finished
    pthread_cond_t threads_start_cond; ///< signalled to unblock worker threads
    pthread_cond_t threads_done_cond; ///< signalled by last worker thread to unblock main thread
    int total_subs; ///< the total number of subscriptions to all models
	 unsigned int worker_threads; ///< the number of worker threads to use
	 
  protected:	 

	 std::list<std::pair<stg_world_callback_t,void*> > cb_list; ///< List of callback functions and arguments
    stg_bounds3d_t extent; ///< Describes the 3D volume of the world
    bool graphics;///< true iff we have a GUI

	 std::set<Option*> option_table; ///< GUI options (toggles) registered by models
	 std::list<PowerPack*> powerpack_list; ///< List of all the powerpacks attached to models in the world
    /** World::quit is set true when this simulation time is reached */
    stg_usec_t quit_time;
	 std::list<float*> ray_list;///< List of rays traced for debug visualization
    stg_usec_t sim_time; ///< the current sim time in this world in microseconds
	 std::map<stg_point_int_t,SuperRegion*> superregions;
    SuperRegion* sr_cached; ///< The last superregion looked up by this world
	 
	 std::vector<ModelPtrVec> update_lists;  
	 
    uint64_t updates; ///< the number of simulated time steps executed so far
    Worldfile* wf; ///< If set, points to the worldfile used to create this world

	 void CallUpdateCallbacks(); ///< Call all calbacks in cb_list, removing any that return true;

  public:
	 
    bool paused; ///< if true, the simulation is stopped

    virtual void Start(){ paused = false; };
    virtual void Stop(){ paused = true; };
    virtual void TogglePause(){ paused ? Start() : Stop(); };

	 bool Paused(){ return( paused ); };
	
	 PointIntVec rt_cells;
	 PointIntVec rt_candidate_cells;

    static const int DEFAULT_PPM = 50;  // default resolution in pixels per meter

	 /** Attach a callback function, to be called with the argument at
		  the end of a complete update step */
	 void AddUpdateCallback( stg_world_callback_t cb, void* user );

	 /** Remove a callback function. Any argument data passed to
		  AddUpdateCallback is not automatically freed. */
	 int RemoveUpdateCallback( stg_world_callback_t cb, void* user );
	 /** Log the state of a Model */
	 void Log( Model* mod );

    /** hint that the world needs to be redrawn if a GUI is attached */
    void NeedRedraw(){ dirty = true; };
    
    /** Special model for the floor of the world */
    Model* ground;
    
    /** Get human readable string that describes the current simulation
		  time. */
    virtual std::string ClockString( void ) const;
		
	 Model* CreateModel( Model* parent, const std::string& typestr );	 
    void LoadModel( Worldfile* wf, int entity );
    void LoadBlock( Worldfile* wf, int entity );
    void LoadBlockGroup( Worldfile* wf, int entity );
    
    virtual Model* RecentlySelectedModel(){ return NULL; }
		
    SuperRegion* AddSuperRegion( const stg_point_int_t& coord );
    SuperRegion* GetSuperRegion( const stg_point_int_t& coord );
    SuperRegion* GetSuperRegionCached( const stg_point_int_t& coord);
    SuperRegion* GetSuperRegionCached( int32_t x, int32_t y );
    void ExpireSuperRegion( SuperRegion* sr );
		
		/** add a Cell pointer to the vector for each cell on the line from
				pt1 to pt2 inclusive */
    void ForEachCellInLine( const stg_point_int_t& pt1,
														const stg_point_int_t& pt2, 
														CellPtrVec& cells );
		
    /** convert a distance in meters to a distance in world occupancy
		  grid pixels */
    int32_t MetersToPixels( stg_meters_t x )
    { return (int32_t)floor(x * ppm); };
		
    stg_point_int_t MetersToPixels( const stg_point_t& pt )
    { return stg_point_int_t( MetersToPixels(pt.x), MetersToPixels(pt.y)); };
		
    // dummy implementations to be overloaded by GUI subclasses
    virtual void PushColor( Color col ) 
	 { /* do nothing */  (void)col; };
    virtual void PushColor( double r, double g, double b, double a ) 
	 { /* do nothing */ (void)r; (void)g; (void)b; (void)a; };
	 
    virtual void PopColor(){ /* do nothing */  };
		
    SuperRegion* CreateSuperRegion( stg_point_int_t origin );
    void DestroySuperRegion( SuperRegion* sr );
	 	
	 /** trace a ray. */
	 stg_raytrace_result_t Raytrace( const Ray& ray );

    stg_raytrace_result_t Raytrace( const Pose& pose, 			 
												const stg_meters_t range,
												const stg_ray_test_func_t func,
												const Model* finder,
												const void* arg,
												const bool ztest );
		
    void Raytrace( const Pose &pose, 			 
						 const stg_meters_t range,
						 const stg_radians_t fov,
						 const stg_ray_test_func_t func,
						 const Model* finder,
						 const void* arg,
						 stg_raytrace_result_t* samples,
						 const uint32_t sample_count,
						 const bool ztest );
		
		
    /** Enlarge the bounding volume to include this point */
    void Extend( stg_point3_t pt );
  
    virtual void AddModel( Model* mod );
    virtual void RemoveModel( Model* mod );

    void AddModelName( Model* mod, const std::string& name );
		
    void AddPowerPack( PowerPack* pp );
    void RemovePowerPack( PowerPack* pp );
		
    void ClearRays();
  
    /** store rays traced for debugging purposes */
    void RecordRay( double x1, double y1, double x2, double y2 );
		
    /** Returns true iff the current time is greater than the time we
		  should quit */
    bool PastQuitTime();
				
    static void* update_thread_entry( std::pair<World*,int>* info );
    
    class Event
    {
    public:
      
      Event( stg_usec_t time, Model* mod ) 
		  : time(time), mod(mod) {}
      
      stg_usec_t time; // time that event occurs
      Model* mod; // model to update
      
      bool operator<( const Event& other ) const;
    };
	 
	 std::vector<std::priority_queue<Event> > event_queues;
	 void Enqueue( unsigned int queue_num, stg_usec_t delay, Model* mod );
	 
	 std::set<Model*> active_energy;
	 std::set<Model*> active_velocity;

	 /** The amount of simulated time to run for each call to Update() */
	 stg_usec_t sim_interval;
	 
	 /** consume events from the queue up to and including the current sim_time */
	 void ConsumeQueue( unsigned int queue_num );

	 /** returns an event queue index number for a model to use for
		  updates */
	 unsigned int GetEventQueue( Model* mod );

  public:
    /** returns true when time to quit, false otherwise */
    static bool UpdateAll(); 
	 
    World( const std::string& name = "MyWorld", 
			  double ppm = DEFAULT_PPM );
		
    virtual ~World();
  	 
    stg_usec_t SimTimeNow(void);
	 
    Worldfile* GetWorldFile(){ return wf; };
	 
    virtual bool IsGUI() const { return false; }
	 
    virtual void Load( const char* worldfile_path );
    virtual void UnLoad();
    virtual void Reload();
    virtual bool Save( const char* filename );
    virtual bool Update(void);
	 
    bool TestQuit(){ return( quit || quit_all );  }
    void Quit(){ quit = true; }
    void QuitAll(){ quit_all = true; }
    void CancelQuit(){ quit = false; }
    void CancelQuitAll(){ quit_all = false; }
	 
	 void TryCharge( PowerPack* pp, const Pose& pose );

    /** Get the resolution in pixels-per-metre of the underlying
		  discrete raytracing model */ 
    double Resolution(){ return ppm; };
   
    /** Returns a pointer to the model identified by name, or NULL if
		  nonexistent */
    Model* GetModel( const std::string& name ) const;
  
    /** Return the 3D bounding box of the world, in meters */
    const stg_bounds3d_t& GetExtent(){ return extent; };
  
    /** Return the number of times the world has been updated. */
    uint64_t GetUpdateCount() { return updates; }

	 /// Register an Option for pickup by the GUI
	 void RegisterOption( Option* opt );	
	 
	 /// Control printing time to stdout
	 void ShowClock( bool enable ){ show_clock = enable; };

	 /** Return the floor model */
	 Model* GetGround() {return ground;};
	
  };

  class Block
  {
    friend class BlockGroup;
    friend class Model;
    friend class SuperRegion;
    friend class World;
    friend class Canvas;
  public:
  
    /** Block Constructor. A model's body is a list of these
		  blocks. The point data is copied, so pts can safely be freed
		  after constructing the block.*/
    Block( Model* mod,  
			  stg_point_t* pts, 
			  size_t pt_count,
			  stg_meters_t zmin,
			  stg_meters_t zmax,
			  Color color,
			  bool inherit_color );
  
    /** A from-file  constructor */
    Block(  Model* mod,  Worldfile* wf, int entity);
	 
    ~Block();
	 
    /** render the block into the world's raytrace data structure */
    void Map(); 	 
	 
    /** remove the block from the world's raytracing data structure */
    void UnMap();	 
	 
	 /** draw the block in OpenGL as a solid single color */    
	 void DrawSolid();

	 /** draw the projection of the block onto the z=0 plane	*/
    void DrawFootPrint(); 

	 /** Translate all points in the block by the indicated amounts */
	 void Translate( double x, double y );	 

	 /** Return the center of the block on the X axis */
	 double CenterX();

	 /** Return the center of the block on the Y axis */
	 double CenterY();

	 /** Set the center of the block on the X axis */
	 void SetCenterX( double y );

	 /** Set the center of the block on the Y axis */
	 void SetCenterY( double y );

	 /** Set the center of the block */
	 void SetCenter( double x, double y);	 

	 /** Set the extent in Z of the block */
	 void SetZ( double min, double max );

    stg_point_t* Points( unsigned int *count )
    { if( count ) *count = pt_count; return &pts[0]; };	         
	 
	 std::vector<stg_point_t>& Points()
    { return pts; };	         
	     
    inline void RemoveFromCellArray( CellPtrVec* blocks );
    inline void GenerateCandidateCells();  

	 void AppendTouchingModels( ModelPtrSet& touchers );
	 
	 /** Returns the first model that shares a bitmap cell with this model */
    Model* TestCollision(); 
    void SwitchToTestedCells();  
    void Load( Worldfile* wf, int entity );  
    Model* GetModel(){ return mod; };  
    const Color& GetColor();		
	 void Rasterize( uint8_t* data, 
						  unsigned int width, unsigned int height,		
						  stg_meters_t cellwidth, stg_meters_t cellheight );
		
  private:
    Model* mod; ///< model to which this block belongs
	 std::vector<stg_point_t> mpts; ///< cache of this->pts in model coordindates
    size_t pt_count; ///< the number of points	 
	 std::vector<stg_point_t> pts; ///< points defining a polygonx	 
    Size size;	 
    Bounds local_z; ///<  z extent in local coords
    Color color;
    bool inherit_color;
	 
	 /** experimental - range 0 - 1, render glowing */
	 double glow;
	 
    void DrawTop();
    void DrawSides();
	 
    /** z extent in global coordinates */
    Bounds global_z;	 
    bool mapped;
		
		/** record the list entries for the cells where this block is rendered */
		std::vector< std::list<Block*>::iterator > list_entries;

    /** record the cells into which this block has been rendered to
		  UnMapping them very quickly. */  
	 CellPtrVec * rendered_cells;

    /** When moving a model, we test for collisions by generating, for
		  each block, a list of the cells in which it would be rendered if the
		  move were to be successful. If no collision occurs, the move is
		  allowed - the rendered cells are cleared, the potential cells are
		  written, and the pointers to the rendered and potential cells are
		  switched for next time (avoiding a memory copy).*/
	 CellPtrVec * candidate_cells;
	
	 PointIntVec gpts;
	
	 /** find the position of a block's point in model coordinates
		  (m) */
	 stg_point_t BlockPointToModelMeters( const stg_point_t& bpt );
	
	 /** invalidate the cache of points in model coordinates */
	 void InvalidateModelPointCache();
  };


  class BlockGroup
  {
    friend class Model;
	 friend class Block;

  private:
    int displaylist;

    void BuildDisplayList( Model* mod );
	 
	 BlockPtrSet blocks;
    Size size;
    stg_point3_t offset;
    stg_meters_t minx, maxx, miny, maxy;

  public:
    BlockGroup();
    ~BlockGroup();
	 
    uint32_t GetCount(){ return blocks.size(); };
    const Size& GetSize(){ return size; };
    const stg_point3_t& GetOffset(){ return offset; };
	 
    /** Establish the min and max of all the blocks, so we can scale this
		  group later. */
    void CalcSize();
	 
    void AppendBlock( Block* block );
    void CallDisplayList( Model* mod );
    void Clear() ; /** deletes all blocks from the group */
	 
	 void AppendTouchingModels( ModelPtrSet& touchers );
	 
    /** Returns a pointer to the first model detected to be colliding
		  with a block in this group, or NULL, if none are detected. */
    Model* TestCollision();
 
    void SwitchToTestedCells();
	 
    void Map();
    void UnMap();
	 
	 /** Draw the block in OpenGL as a solid single color. */
    void DrawSolid( const Geom &geom); 

	 /** Draw the projection of the block onto the z=0 plane. */
	 void DrawFootPrint( const Geom &geom);

    void LoadBitmap( Model* mod, const std::string& bitmapfile, Worldfile *wf );
    void LoadBlock( Model* mod, Worldfile* wf, int entity );
	 
	 void Rasterize( uint8_t* data, 
						  unsigned int width, unsigned int height,
						  stg_meters_t cellwidth, stg_meters_t cellheight );
	 
	 void InvalidateModelPointCache()
	 {
		FOR_EACH( it, blocks )
		  (*it)->InvalidateModelPointCache();
	 }

  };

  class Camera 
  {
  protected:
    float _pitch; //left-right (about y)
    float _yaw; //up-down (about x)
    float _x, _y, _z;
	
  public:
    Camera() : _pitch( 0 ), _yaw( 0 ), _x( 0 ), _y( 0 ), _z( 0 ) { }
    virtual ~Camera() { }

    virtual void Draw( void ) const = 0;
    virtual void SetProjection( void ) const = 0;

	 float yaw( void ) const { return _yaw; }
	 float pitch( void ) const { return _pitch; }
	 
	 float x( void ) const { return _x; }
	 float y( void ) const { return _y; }
	 float z( void ) const { return _z; }
	 
    virtual void reset() = 0;
    virtual void Load( Worldfile* wf, int sec ) = 0;

    //TODO data should be passed in somehow else. (at least min/max stuff)
    //virtual void SetProjection( float pixels_width, float pixels_height, float y_min, float y_max ) const = 0;
  };

  class PerspectiveCamera : public Camera
  {
  private:
    float _z_near;
    float _z_far;
    float _vert_fov;
    float _horiz_fov;
    float _aspect;

  public:
    PerspectiveCamera( void );

    virtual void Draw( void ) const;
    virtual void SetProjection( void ) const;
    //void SetProjection( float aspect ) const;
    void update( void );

    void strafe( float amount );
    void forward( float amount );
	
	 void setPose( float x, float y, float z ) { _x = x; _y = y; _z = z; }
	 void addPose( float x, float y, float z ) { _x += x; _y += y; _z += z; if( _z < 0.1 ) _z = 0.1; }
    void move( float x, float y, float z );
	 void setFov( float horiz_fov, float vert_fov ) { _horiz_fov = horiz_fov; _vert_fov = vert_fov; }
    ///update vertical fov based on window aspect and current horizontal fov
	 void setAspect( float aspect ) { _aspect = aspect; }
	 void setYaw( float yaw ) { _yaw = yaw; }
	 float horizFov( void ) const { return _horiz_fov; }
	 float vertFov( void ) const { return _vert_fov; }
	 void addYaw( float yaw ) { _yaw += yaw; }
	 void setPitch( float pitch ) { _pitch = pitch; }
	 void addPitch( float pitch ) { _pitch += pitch; if( _pitch < 0 ) _pitch = 0; else if( _pitch > 180 ) _pitch = 180; }
	
	 float realDistance( float z_buf_val ) const {
      return _z_near * _z_far / ( _z_far - z_buf_val * ( _z_far - _z_near ) );
    }
	 void scroll( float dy ) { _z += dy; }
	 float nearClip( void ) const { return _z_near; }
	 float farClip( void ) const { return _z_far; }
	 void setClip( float near, float far ) { _z_far = far; _z_near = near; }
	
	 void reset() { setPitch( 70 ); setYaw( 0 ); }
	
    void Load( Worldfile* wf, int sec );
    void Save( Worldfile* wf, int sec );
  };
  
  class OrthoCamera : public Camera
  {
  private:
    float _scale;
    float _pixels_width;
    float _pixels_height;
    float _y_min;
    float _y_max;
  
  public:
    OrthoCamera( void ) : _scale( 15 ) { }
    virtual void Draw() const;
    virtual void SetProjection( float pixels_width, float pixels_height, float y_min, float y_max );
    virtual void SetProjection( void ) const;
  
    void move( float x, float y );
	 void setYaw( float yaw ) { _yaw = yaw;	}
	 void setPitch( float pitch ) { _pitch = pitch; }
	 void addYaw( float yaw ) { _yaw += yaw;	}
	 void addPitch( float pitch ) {
      _pitch += pitch;
      if( _pitch > 90 )
		  _pitch = 90;
      else if( _pitch < 0 )
		  _pitch = 0;
    }
  
	 void setScale( float scale ) { _scale = scale; }
	 void setPose( float x, float y) { _x = x; _y = y; }
  
    void scale( float scale, float shift_x = 0, float h = 0, float shift_y = 0, float w = 0 );	
	 void reset( void ) { _pitch = _yaw = 0; }
  
	 float scale() const { return _scale; }
  
    void Load( Worldfile* wf, int sec );
    void Save( Worldfile* wf, int sec );
  };


  /** Extends World to implement an FLTK / OpenGL graphical user
      interface.
  */
  class WorldGui : public World, public Fl_Window 
  {
    friend class Canvas;
    friend class ModelCamera;
    friend class Model;
    friend class Option;

  private:

    Canvas* canvas;
    std::vector<Option*> drawOptions;
    FileManager* fileMan; ///< Used to load and save worldfiles
	 std::vector<stg_usec_t> interval_log;
	 
	 /** Stage attempts to run this many times faster than real
		  time. If -1, Stage runs as fast as possible. */
	 float speedup; 

    Fl_Menu_Bar* mbar;
    OptionsDlg* oDlg;
    bool pause_time;

	 /** The amount of real time elapsed between $timing_interval
		  timesteps. */
    stg_usec_t real_time_interval;
	 
	 /** The current real time in microseconds. */
    stg_usec_t real_time_now; 

	 /** The last recorded real time, sampled every $timing_interval
		  updates. */
    stg_usec_t real_time_recorded;
	 
	 /** Number of updates between measuring elapsed real time. */
	 uint64_t timing_interval;

    // static callback functions
    static void windowCb( Fl_Widget* w, WorldGui* wg );	
    static void fileLoadCb( Fl_Widget* w, WorldGui* wg );
    static void fileSaveCb( Fl_Widget* w, WorldGui* wg );
    static void fileSaveAsCb( Fl_Widget* w, WorldGui* wg );
    static void fileExitCb( Fl_Widget* w, WorldGui* wg );
    static void viewOptionsCb( OptionsDlg* oDlg, WorldGui* wg );
    static void optionsDlgCb( OptionsDlg* oDlg, WorldGui* wg );
    static void helpAboutCb( Fl_Widget* w, WorldGui* wg );
    static void pauseCb( Fl_Widget* w, WorldGui* wg );
    static void onceCb( Fl_Widget* w, WorldGui* wg );
    static void fasterCb( Fl_Widget* w, WorldGui* wg );
    static void slowerCb( Fl_Widget* w, WorldGui* wg );
    static void realtimeCb( Fl_Widget* w, WorldGui* wg );
    static void fasttimeCb( Fl_Widget* w, WorldGui* wg );
    static void resetViewCb( Fl_Widget* w, WorldGui* wg );
    static void moreHelptCb( Fl_Widget* w, WorldGui* wg );
	
    // GUI functions
    bool saveAsDialog();
    bool closeWindowQuery();
	
    virtual void AddModel( Model* mod );
	
	 void SetTimeouts();

  protected:
	
    virtual void PushColor( Color col );
    virtual void PushColor( double r, double g, double b, double a );
    virtual void PopColor();
	
    void DrawOccupancy();
    void DrawVoxels();
	 
  public:
	
    WorldGui(int W,int H,const char*L=0);
    ~WorldGui();
	
    virtual std::string ClockString() const;
    virtual bool Update();	
    virtual void Load( const char* filename );
    virtual void UnLoad();
    virtual bool Save( const char* filename );	
    virtual bool IsGUI() const { return true; };	
    virtual Model* RecentlySelectedModel() const;

    virtual void Start();
    virtual void Stop();
	
    stg_usec_t RealTimeNow(void) const;
 
    void DrawBoundingBoxTree();
    
    Canvas* GetCanvas( void ) const { return canvas; } 

    /** show the window - need to call this if you don't Load(). */
    void Show(); 

    /** Get human readable string that describes the current global energy state. */
    std::string EnergyString( void );	
    virtual void RemoveChild( Model* mod );	 
  };


  class StripPlotVis : public Visualizer
  {
  private:
	 
	 Model* mod;
	 float* data;
	 size_t len;
	 size_t count;
	 unsigned int index;
	 float x,y,w,h,min,max;
	 Color fgcolor, bgcolor;
	 
  public:
	 StripPlotVis( float x, float y, float w, float h, 
						size_t len, 
						Color fgcolor, Color bgcolor,
						const char* name, const char* wfname );
	 virtual ~StripPlotVis();
	 virtual void Visualize( Model* mod, Camera* cam );		
	 void AppendValue( float value );
  };


  class PowerPack
  {
	 friend class WorldGui;
	 friend class Canvas;
	 
  protected:
	 
	 class DissipationVis : public Visualizer
	 {
	 private:
		unsigned int columns, rows;
		stg_meters_t width, height;
		 
		 std::vector<stg_joules_t> cells;
		 
		 stg_joules_t peak_value;
		 double cellsize;
		 
		static stg_joules_t global_peak_value; 

	 public:
		DissipationVis( stg_meters_t width, 
							 stg_meters_t height, 
							 stg_meters_t cellsize );

		virtual ~DissipationVis();
		virtual void Visualize( Model* mod, Camera* cam );		
		
		void Accumulate( stg_meters_t x, stg_meters_t y, stg_joules_t amount );
	 } event_vis;
	 

	 StripPlotVis output_vis;
	 StripPlotVis stored_vis;

	 /** The model that owns this object */
	 Model* mod;
    
	 /** Energy stored */
	 stg_joules_t stored;
	 
	 /** Energy capacity */
	 stg_joules_t capacity;
	 
	 /** TRUE iff the device is receiving energy */
	 bool charging;
	 
	 /** Energy dissipated */
	 stg_joules_t dissipated;
	 
	 // these are used to visualize the power draw
	 stg_usec_t last_time;
	 stg_joules_t last_joules;
	 stg_watts_t last_watts;

	 static stg_joules_t global_stored;
	 static stg_joules_t global_capacity;
	 static stg_joules_t global_dissipated;	 
	 static stg_joules_t global_input;

  public:
	 PowerPack( Model* mod );
	 ~PowerPack();
	 
	 /** OpenGL visualization of the powerpack state */
	 void Visualize( Camera* cam );

	 /** Print human-readable status on stdout, prefixed with the
		  argument string */
	 void Print( char* prefix ) const;
	 
	 /** Returns the energy capacity minus the current amount stored */
	 stg_joules_t RemainingCapacity() const;
	 
	 /** Add to the energy store */
	 void Add( stg_joules_t j );
		
	 /** Subtract from the energy store */
	 void Subtract( stg_joules_t j );
		
	 /** Transfer some stored energy to another power pack */
	 void TransferTo( PowerPack* dest, stg_joules_t amount );	 

	 double ProportionRemaining() const
	 { return( stored / capacity ); }

	 void Print( const char* prefix ) const
	 { printf( "%s PowerPack %.2f/%.2f J\n", prefix, stored, capacity ); }		
	 
	 stg_joules_t GetStored() const;
	 stg_joules_t GetCapacity() const;
	 stg_joules_t GetDissipated() const;
	 void SetCapacity( stg_joules_t j );
	 void SetStored( stg_joules_t j );	

	 /** Returns true iff the device received energy at the last timestep */
	 bool GetCharging() const { return charging; }
	 
	 void ChargeStart(){ charging = true; }
	 void ChargeStop(){ charging = false; }

	 /** Lose energy as work or heat */
	 void Dissipate( stg_joules_t j );
	 
	 /** Lose energy as work or heat, and record the event */
	 void Dissipate( stg_joules_t j, const Pose& p );
  };

   
  /// %Model class
  class Model : public Ancestor
  {
    friend class Ancestor;
    friend class World;
    friend class World::Event;
    friend class WorldGui;
    friend class Canvas;
    friend class Block;
    friend class Region;
    friend class BlockGroup;
    friend class PowerPack;
    friend class Ray;
	
  private:
	 /** the number of models instatiated - used to assign unique IDs */
	 static uint32_t count;
	 static std::map<stg_id_t,Model*> modelsbyid;
	 std::vector<Option*> drawOptions;
	 const std::vector<Option*>& getOptions() const { return drawOptions; }
	 
  protected:
	 pthread_mutex_t access_mutex;

	 /** If true, the model always has at least one subscription, so
		  always runs. Defaults to false. */
	 bool alwayson;

	 BlockGroup blockgroup;
	 /**  OpenGL display list identifier for the blockgroup */
	 int blocks_dl;

	 /** Iff true, 4 thin blocks are automatically added to the model,
		  forming a solid boundary around the bounding box of the
		  model. */
	 int boundary;
		
	 /** container for a callback function and a single argument, so
		  they can be stored together in a list with a single pointer. */
  public:
	 class stg_cb_t
	 {
	 public:
		stg_model_callback_t callback;
		void* arg;
			
		stg_cb_t( stg_model_callback_t cb, void* arg ) 
		  : callback(cb), arg(arg) {}
			
		stg_cb_t( stg_world_callback_t cb, void* arg ) 
		  : callback(NULL), arg(arg) { (void)cb; }
			
		stg_cb_t() : callback(NULL), arg(NULL) {}
			
		/** for placing in a sorted container */
		bool operator<( const stg_cb_t& other ) const
		{ return ((void*)(callback)) < ((void*)(other.callback)); }
			
		/** for searching in a sorted container */
		bool operator==( const stg_cb_t& other ) const
		{ return( callback == other.callback);  }			
	 };
		
	 class Flag
	 {
	 public:
		Color color;
		double size;
		static int displaylist;
		
		Flag( Color color, double size );
		Flag* Nibble( double portion );
		
		/** Draw the flag in OpenGl. Takes a quadric parameter to save
			 creating the quadric for each flag */
		void Draw(  GLUquadric* quadric );
	 };

  protected:
	 /** A list of callback functions can be attached to any
		  address. When Model::CallCallbacks( void*) is called, the
		  callbacks are called.*/
	 static std::map<void*, std::set<stg_cb_t> > callbacks;
		
	 /** Default color of the model's blocks.*/
	 Color color;
	 double friction;
		
	 /** This can be set to indicate that the model has new data that
		  may be of interest to users. This allows polling the model
		  instead of adding a data callback. */
	 bool data_fresh;
	 stg_bool_t disabled; ///< if non-zero, the model is disabled  
	 std::list<Visualizer*> cv_list;
	 std::list<Flag*> flag_list;
	 Geom geom;

	 /** Records model state and functionality in the GUI, if used */
	 class GuiState
	 {
	 public:
		bool grid;
		bool move;
		bool nose;
		bool outline;
		
		GuiState();
		void Load( Worldfile* wf, int wf_entity );
	 } gui;
	 
	 bool has_default_block;
  
	 /* Hooks for attaching special callback functions (not used as
		 variables - we just need unique addresses for them.) */  
	 class CallbackHooks
	 {
	 public:
		int flag_incr;
		int flag_decr;
		int init;
		int load;
		int save;
		int shutdown;
		int startup;
		int update;
		int update_done;

		 /* optimization: record the number of attached callbacks for pose
				and velocity, so we can cheaply determine whether we need to
				call a callback for SetPose() and SetVelocity(), which happen
				very frequently. */
		 int attached_velocity;
		 int attached_pose;
		 int attached_update;
		 
		 CallbackHooks() : 
			 attached_velocity(0), 
			 attached_pose(0), 
			 attached_update(0) 
		 {}

	 } hooks;
  
	 /** unique process-wide identifier for this model */
	 uint32_t id;	
	 stg_usec_t interval; ///< time between updates in usec	 
	 stg_usec_t interval_energy; ///< time between updates of powerpack in usec
	 stg_usec_t interval_pose; ///< time between updates of pose due to velocity in usec

	 stg_usec_t last_update; ///< time of last update in us  
	 bool log_state; ///< iff true, model state is logged
	 stg_meters_t map_resolution;
	 stg_kg_t mass;

	 /** Pointer to the parent of this model, possibly NULL. */
	 Model* parent; 

	 /** The pose of the model in it's parents coordinate frame, or the
		  global coordinate frame is the parent is NULL. */
	 Pose pose;

	 /** Optional attached PowerPack, defaults to NULL */
	 PowerPack* power_pack;

	 /** list of powerpacks that this model is currently charging,
		  initially NULL. */
	 std::list<PowerPack*> pps_charging;
		
		/** Props map can contain arbitrary named data items. Can be used
				by derived model types to store properties, and for user code
				to associate arbitrary items with a model. */
	 std::map<std::string,const void*> props;

	 /** Visualize the most recent rasterization operation performed by this model */
	 class RasterVis : public Visualizer
	 {
	 private:
		uint8_t* data;
		unsigned int width, height;
		stg_meters_t cellwidth, cellheight;
		std::vector<stg_point_t> pts;
	  
	 public:
		RasterVis();
		virtual ~RasterVis( void ){}
		virtual void Visualize( Model* mod, Camera* cam );
	  
		void SetData( uint8_t* data, 
						  unsigned int width, 
						  unsigned int height,
						  stg_meters_t cellwidth,
						  stg_meters_t cellheight );
	  
		int subs;     //< the number of subscriptions to this model
		int used;     //< the number of connections to this model
	  
		void AddPoint( stg_meters_t x, stg_meters_t y );
		void ClearPts();
	  
	 } rastervis;
	 
	 bool rebuild_displaylist; ///< iff true, regenerate block display list before redraw
	 std::string say_string;   ///< if non-null, this string is displayed in the GUI 
		
	 stg_bool_t stall;
	 int subs;    ///< the number of subscriptions to this model
	 /** Thread safety flag. Iff true, Update() may be called in
		  parallel with other models. Defaults to false for safety */
	 bool thread_safe;
	 
	 /** Cache of recent poses, used to draw the trail. */
	 class TrailItem 
	 {																							
	 public:
		stg_usec_t time;
		Pose pose;
		Color color;
		
		TrailItem() 
		  : time(0), pose(), color(){}
		 
		 //TrailItem( stg_usec_t time, Pose pose, Color color ) 
		 //: time(time), pose(pose), color(color){}
	 };
	
		/** a ring buffer for storing recent poses */
		std::vector<TrailItem> trail;

		/** current position in the ring buffer */
		unsigned int trail_index;

	 /** The maxiumum length of the trail drawn. Default is 20, but can
		  be set in the world file using the tail_length model
		  property. */
	 static unsigned int trail_length;
	 
	 /** Number of world updates between trail records. */
	 static uint64_t trail_interval;
	 
		/** Record the current pose in our trail. Delete the trail head if it is full. */
		void UpdateTrail();

	 //stg_model_type_t type;  
	 const std::string type;
	 /** The index into the world's vector of event queues. Initially
			 -1, to indicate that it is not on a list yet. */
		unsigned int event_queue_num; 
		bool used;   ///< TRUE iff this model has been returned by GetUnusedModelOfType()  
		Velocity velocity;
		
		/** respond to velocity state by changing position. Initially
				false, set to true by subclass, worldfile, or explcicit call
				to Model::VelocityEnable(). */
		bool velocity_enable;
		
		stg_watts_t watts;///< power consumed by this model
	 
	 /** If >0, this model can transfer energy to models that have
		  watts_take >0 */
	 stg_watts_t watts_give;
	
	 /** If >0, this model can transfer energy from models that have
		  watts_give >0 */
	 stg_watts_t watts_take;
	
	 Worldfile* wf;
	 int wf_entity;
	 World* world; // pointer to the world in which this model exists
	 WorldGui* world_gui; //pointer to the GUI world - NULL if running in non-gui mode

  public:
	 
	 const std::string& GetModelType() const {return type;}	 
	 std::string GetSayString(){return std::string(say_string);}
	 
    /** Returns a pointer to the model identified by name, or NULL if
		  it doesn't exist in this model. */
    Model* GetChild( const std::string& name ) const;

	 class Visibility
	 {
	 public:
		bool blob_return;
		int fiducial_key;
		int fiducial_return;
		bool gripper_return;
		stg_laser_return_t laser_return;
		bool obstacle_return;
		bool ranger_return;
		bool gravity_return;
		bool sticky_return;
		
		Visibility();
		void Load( Worldfile* wf, int wf_entity );
	 } vis;
	 
	 stg_usec_t GetUpdateInterval(){ return interval; }
	 stg_usec_t GetEnergyInterval(){ return interval_energy; }
	 stg_usec_t GetPoseInterval(){ return interval_pose; }
	 
	 /** Render the model's blocks as an occupancy grid into the
		  preallocated array of width by height pixels */
	 void Rasterize( uint8_t* data, 
						  unsigned int width, unsigned int height,
						  stg_meters_t cellwidth, stg_meters_t cellheight );
	
  private: 
	 /** Private copy constructor declared but not defined, to make it
		  impossible to copy models. */
	 explicit Model(const Model& original);

	 /** Private assignment operator declared but not defined, to make it
		  impossible to copy models */
	 Model& operator=(const Model& original);

  protected:

		/** Register an Option for pickup by the GUI. */
	 void RegisterOption( Option* opt );

	 void AppendTouchingModels( ModelPtrSet& touchers );

	 /** Check to see if the current pose will yield a collision with
		  obstacles.  Returns a pointer to the first entity we are in
		  collision with, or NULL if no collision exists. */
	 Model* TestCollision();

	 /** Recursively call TestCollision() on this model and all its
		  descendents */
    Model* TestCollisionTree();
  
	 void CommitTestedPose();

	 void Map();
	 void UnMap();

	 void MapWithChildren();
	 void UnMapWithChildren();
  
	 // Find the root model, and map/unmap the whole tree.
	 void MapFromRoot();
	 void UnMapFromRoot();

	 /** raytraces a single ray from the point and heading identified by
		  pose, in local coords */
	 stg_raytrace_result_t Raytrace( const Pose &pose,
												const stg_meters_t range, 
												const stg_ray_test_func_t func,
												const void* arg,
												const bool ztest = true );
  
	 /** raytraces multiple rays around the point and heading identified
		  by pose, in local coords */
	 void Raytrace( const Pose &pose,
						 const stg_meters_t range, 
						 const stg_radians_t fov, 
						 const stg_ray_test_func_t func,
						 const void* arg,
						 stg_raytrace_result_t* samples,
						 const uint32_t sample_count,
						 const bool ztest = true  );
  
	 stg_raytrace_result_t Raytrace( const stg_radians_t bearing, 			 
												const stg_meters_t range,
												const stg_ray_test_func_t func,
												const void* arg,
												const bool ztest = true );
  
	 void Raytrace( const stg_radians_t bearing, 			 
						 const stg_meters_t range,
						 const stg_radians_t fov,
						 const stg_ray_test_func_t func,
						 const void* arg,
						 stg_raytrace_result_t* samples,
						 const uint32_t sample_count,
						 const bool ztest = true );
  

	 /** Causes this model and its children to recompute their global
		  position instead of using a cached pose in
		  Model::GetGlobalPose()..*/
	 void GPoseDirtyTree();

	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void UpdatePose();
	 virtual void UpdateCharge();

	 Model* ConditionalMove( const Pose& newpose );

	 stg_meters_t ModelHeight() const;

	 void DrawBlocksTree();
	 virtual void DrawBlocks();
	 void DrawBoundingBox();
	 void DrawBoundingBoxTree();
	 virtual void DrawStatus( Camera* cam );
	 void DrawStatusTree( Camera* cam );
  
	 void DrawOriginTree();
	 void DrawOrigin();
  
	 void PushLocalCoords();
	 void PopCoords();
  
	 /** Draw the image stored in texture_id above the model */
	 void DrawImage( uint32_t texture_id, Camera* cam, float alpha, double width=1.0, double height=1.0 );
  	
	 virtual void DrawPicker();
	 virtual void DataVisualize( Camera* cam );  
	 virtual void DrawSelected(void);
	
	 void DrawTrailFootprint();
	 void DrawTrailBlocks();
	 void DrawTrailArrows();
	 void DrawGrid();
	 //	void DrawBlinkenlights();
	 void DataVisualizeTree( Camera* cam );
	 void DrawFlagList();
	 void DrawPose( Pose pose );
	
  public:
	 virtual void PushColor( Color col ){ world->PushColor( col ); }	
	 virtual void PushColor( double r, double g, double b, double a ){ world->PushColor( r,g,b,a ); }	
	 virtual void PopColor()	{ world->PopColor(); }
	
	 PowerPack* FindPowerPack() const;
	
	 //void RecordRenderPoint( GSList** head, GSList* link, 
	 //					unsigned int* c1, unsigned int* c2 );

	 void PlaceInFreeSpace( stg_meters_t xmin, stg_meters_t xmax, 
									stg_meters_t ymin, stg_meters_t ymax );
	
	 /** Return a human-readable string describing the model's pose */
	 std::string PoseString()
	 { return pose.String(); }
	
	 /** Look up a model pointer by a unique model ID */
	 static Model* LookupId( uint32_t id )
	 { return modelsbyid[id]; }
	 
	 /** Constructor */
	 Model( World* world, 
			  Model* parent = NULL, 
			  const std::string& type = "model" );
	 
	 /** Destructor */
	 virtual ~Model();
	
	 void Say( const std::string& str );
	 
	 /** Attach a user supplied visualization to a model. */
	 void AddVisualizer( Visualizer* custom_visual, bool on_by_default );

	 /** remove user supplied visualization to a model - supply the same ptr passed to AddCustomVisualizer */
	 void RemoveVisualizer( Visualizer* custom_visual );

	 void BecomeParentOf( Model* child );

	 void Load( Worldfile* wf, int wf_entity )
	 {
		/** Set the worldfile and worldfile entity ID - must be called
			 before Load() */
		SetWorldfile( wf, wf_entity );
		Load(); // call virtual load
	 }
	
	 /** Set the worldfile and worldfile entity ID */
	 void SetWorldfile( Worldfile* wf, int wf_entity )
	 { this->wf = wf; this->wf_entity = wf_entity; }
	
	 /** configure a model by reading from the current world file */
	 virtual void Load();
	
	 /** save the state of the model to the current world file */
	 virtual void Save();
	
	 /** Call Init() for all attached controllers. */
	 void InitControllers();

	 void AddFlag(  Flag* flag );
	 void RemoveFlag( Flag* flag );
	
	 void PushFlag( Flag* flag );
	 Flag* PopFlag();
	
	 int GetFlagCount() const { return flag_list.size(); }
    
	 /** Disable the model. Its pose will not change due to velocity
		  until re-enabled using Enable(). This is used for example when
		  dragging a model with the mouse pointer. The model is enabled by
		  default. */
	 void Disable(){ disabled = true; };

	 /** Enable the model, so that non-zero velocities will change the
		  model's pose. Models are enabled by default. */
	 void Enable(){ disabled = false; };
  
	 /** Load a control program for this model from an external
		  library */
	 void LoadControllerModule( const char* lib );
	
	 /** Sets the redraw flag, so this model will be redrawn at the
		  earliest opportunity */
	 void NeedRedraw();
	
	 /** Add a block to this model by loading it from a worldfile
		  entity */
	 void LoadBlock( Worldfile* wf, int entity );

	 /** Add a block to this model centered at [x,y] with extent [dx, dy,
		  dz] */
	 Block* AddBlockRect( stg_meters_t x, stg_meters_t y, 
								 stg_meters_t dx, stg_meters_t dy, 
								 stg_meters_t dz );
	
	 /** remove all blocks from this model, freeing their memory */
	 void ClearBlocks();
  
	 /** Returns a pointer to this model's parent model, or NULL if this
		  model has no parent */
	 Model* Parent() const { return this->parent; }

	 /** Returns a pointer to the world that contains this model */
	 World* GetWorld() const { return this->world; }
  
	 /** return the root model of the tree containing this model */
	 Model* Root(){ return(  parent ? parent->Root() : this ); }
  
	 bool IsAntecedent( const Model* testmod ) const;
	
	 /** returns true if model [testmod] is a descendent of this model */
	 bool IsDescendent( const Model* testmod ) const;
	
	 /** returns true if model [testmod] is a descendent or antecedent of this model */
	 bool IsRelated( const Model* testmod ) const;

	 /** get the pose of a model in the global CS */
	 Pose GetGlobalPose() const;
	
	 /** get the velocity of a model in the global CS */
	 Velocity GetGlobalVelocity()  const;
	
	 /* set the velocity of a model in the global coordinate system */
	 void SetGlobalVelocity( const Velocity& gvel );
	
	 /** subscribe to a model's data */
	 void Subscribe();
	
	 /** unsubscribe from a model's data */
	 void Unsubscribe();
	
	 /** set the pose of model in global coordinates */
	 void SetGlobalPose(  const Pose& gpose );
	
	 /** set a model's velocity in its parent's coordinate system */
	 void SetVelocity(  const Velocity& vel );
	
		/** Enable update of model pose according to velocity state */
		void VelocityEnable();

		/** Disable update of model pose according to velocity state */
		void VelocityDisable();

	 /** set a model's pose in its parent's coordinate system */
	 void SetPose(  const Pose& pose );
	
	 /** add values to a model's pose in its parent's coordinate system */
	 void AddToPose(  const Pose& pose );
	
	 /** add values to a model's pose in its parent's coordinate system */
	 void AddToPose(  double dx, double dy, double dz, double da );
	
	 /** set a model's geometry (size and center offsets) */
	 void SetGeom(  const Geom& src );
  
	 /** Set a model's fiducial return value. Values less than zero
		  are not detected by the fiducial sensor. */
	 void SetFiducialReturn(  int fid );
  
	 /** Get a model's fiducial return value. */
	 int GetFiducialReturn()  const { return vis.fiducial_return; }
  
	 /** set a model's fiducial key: only fiducial finders with a
		  matching key can detect this model as a fiducial. */
	 void SetFiducialKey(  int key );
	
	 Color GetColor() const { return color; }
	 
	 /** return a model's unique process-wide identifier */
	 uint32_t GetId()  const { return id; }
	 
	 /** Get the total mass of a model and it's children recursively */
	 stg_kg_t GetTotalMass();
	 
	 /** Get the mass of this model's children recursively. */
	 stg_kg_t GetMassOfChildren();

	 /** Change a model's parent - experimental*/
	 int SetParent( Model* newparent);
	
	 /** Get (a copy of) the model's geometry - it's size and local
		  pose (offset from origin in local coords). */
	 Geom GetGeom() const { return geom; }
	
	 /** Get (a copy of) the pose of a model in its parent's coordinate
		  system.  */
	 Pose GetPose() const { return pose; }
	
	 /** Get (a copy of) the model's velocity in its local reference
		  frame. */
	 Velocity GetVelocity() const { return velocity; }
	
	 // guess what these do?
	 void SetColor( Color col );
	 void SetMass( stg_kg_t mass );
	 void SetStall( stg_bool_t stall );
	 void SetGravityReturn( int val );
	 void SetGripperReturn( int val );
	 void SetStickyReturn( int val );
	 void SetLaserReturn( stg_laser_return_t val );
	 void SetObstacleReturn( int val );
	 void SetBlobReturn( int val );
	 void SetRangerReturn( int val );
	 void SetBoundary( int val );
	 void SetGuiNose( int val );
	 void SetGuiMove( int val );
	 void SetGuiGrid( int val );
	 void SetGuiOutline( int val );
	 void SetWatts( stg_watts_t watts );
	 void SetMapResolution( stg_meters_t res );
	 void SetFriction( double friction );
	
	 bool DataIsFresh() const { return this->data_fresh; }
	
	 /* attach callback functions to data members. The function gets
		 called when the member is changed using SetX() accessor method */
		
	 void AddCallback( void* address, 
							 stg_model_callback_t cb, 
							 void* user );
		
	 int RemoveCallback( void* member,
								stg_model_callback_t callback );
		
	 int CallCallbacks(  void* address );
		
	 /* wrappers for the generic callback add & remove functions that hide
		 some implementation detail */
	
	 void AddStartupCallback( stg_model_callback_t cb, void* user )
	 { AddCallback( &hooks.startup, cb, user ); };
	
	 void RemoveStartupCallback( stg_model_callback_t cb )
	 { RemoveCallback( &hooks.startup, cb ); };
	
	 void AddShutdownCallback( stg_model_callback_t cb, void* user )
	 { AddCallback( &hooks.shutdown, cb, user ); };
	
	 void RemoveShutdownCallback( stg_model_callback_t cb )
	 { RemoveCallback( &hooks.shutdown, cb ); }
	
	 void AddLoadCallback( stg_model_callback_t cb, void* user )
	 { AddCallback( &hooks.load, cb, user ); }
	
	 void RemoveLoadCallback( stg_model_callback_t cb )
	 { RemoveCallback( &hooks.load, cb ); }
	
	 void AddSaveCallback( stg_model_callback_t cb, void* user )
	 { AddCallback( &hooks.save, cb, user ); }
	
	 void RemoveSaveCallback( stg_model_callback_t cb )
	 { RemoveCallback( &hooks.save, cb ); }
  
	 void AddUpdateCallback( stg_model_callback_t cb, void* user )
	 { AddCallback( &hooks.update, cb, user ); }
	 
	 void RemoveUpdateCallback( stg_model_callback_t cb )
	 {	RemoveCallback( &hooks.update, cb ); }
	 
	 void AddFlagIncrCallback( stg_model_callback_t cb, void* user )
	 {	AddCallback( &hooks.flag_incr, cb, user ); }
	
	 void RemoveFlagIncrCallback( stg_model_callback_t cb )
	 {	RemoveCallback( &hooks.flag_incr, cb ); }

	 void AddFlagDecrCallback( stg_model_callback_t cb, void* user )
	 {	AddCallback( &hooks.flag_decr, cb, user ); }
	
	 void RemoveFlagDecrCallback( stg_model_callback_t cb )
	 {	RemoveCallback( &hooks.flag_decr, cb ); }
	 
		
	 virtual void Print( char* prefix ) const;
	 virtual const char* PrintWithPose() const;
	
	 /** Given a global pose, returns that pose in the model's local
		  coordinate system. */
	 Pose GlobalToLocal( const Pose& pose ) const;
	 
	 /** Return the global pose (i.e. pose in world coordinates) of a
		  pose specified in the model's local coordinate system */
	 Pose LocalToGlobal( const Pose& pose ) const
	 {  
		return( ( GetGlobalPose() + geom.pose ) + pose );
	 }
		
		/** Fill an array of global pixels from an array of local points. */
		void LocalToPixels( const std::vector<stg_point_t>& local,
												std::vector<stg_point_int_t>& pixels) const;
		
	 /** Return the 2d point in world coordinates of a 2d point
		  specified in the model's local coordinate system */
	 stg_point_t LocalToGlobal( const stg_point_t& pt) const;		

	 /** returns the first descendent of this model that is unsubscribed
		  and has the type indicated by the string */
	 Model* GetUnsubscribedModelOfType( const std::string& type ) const;
	
	 /** returns the first descendent of this model that is unused
		  and has the type indicated by the string. This model is tagged as used. */
	 Model* GetUnusedModelOfType( const std::string& type );
  
	 /** Returns the value of the model's stall boolean, which is true
		  iff the model has crashed into another model */
	 bool Stalled() const { return this->stall; }
	 
	 /** Returns the current number of subscriptions. If alwayson, this
		  is never less than 1.*/
	 unsigned int GetSubscriptionCount() const { return subs; }

	 /** Returns true if the model has one or more subscribers, else false. */
	 bool HasSubscribers() const { return( subs > 0 ); }	 

	 static std::map< std::string, creator_t> name_map;	 
  };


  // BLOBFINDER MODEL --------------------------------------------------------


  /// %ModelBlobfinder class
  class ModelBlobfinder : public Model
  {
  public:
	 /** Sample data */
	 class Blob
	 {
	 public:
		Color color;
		uint32_t left, top, right, bottom;
		stg_meters_t range;
	 };

	 class Vis : public Visualizer 
	 {
	 private:
		//static Option showArea;
	 public:
		Vis( World* world );
		virtual ~Vis( void ){}
		virtual void Visualize( Model* mod, Camera* cam );
	 } vis;

  private:
	 std::vector<Blob> blobs;
	 std::vector<Color> colors;

	 // predicate for ray tracing
	 static bool BlockMatcher( Block* testblock, Model* finder );

  public:
	 stg_radians_t fov;
	 stg_radians_t pan;
	 stg_meters_t range;
	 unsigned int scan_height;
	 unsigned int scan_width;
	 
	 // constructor
	 ModelBlobfinder( World* world,
							Model* parent,
							const std::string& type );
	 // destructor
	 ~ModelBlobfinder();
	
	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void Load();
		
	 Blob* GetBlobs( unsigned int* count )
	 { 
		if( count ) *count = blobs.size();
		return &blobs[0];
	 }

	 /** Start finding blobs with this color.*/
	 void AddColor( Color col );

	 /** Stop tracking blobs with this color */
	 void RemoveColor( Color col );

	 /** Stop tracking all colors. Call this to clear the defaults, then
		  add colors individually with AddColor(); */
	 void RemoveAllColors();
  };




  // LASER MODEL --------------------------------------------------------
  
  /// %ModelLaser class
  class ModelLaser : public Model
  {
  public:
	 /** Laser range data */
	 class Sample
	 {
	 public:
		stg_meters_t range; ///< range to laser hit in meters
		double reflectance; ///< intensity of the reflection 0.0 to 1.0
	 };
		
	 /** Convenience object for setting parameters using SetConfig/GetConfig */
	 class Config
	 {
	 public:
		uint32_t sample_count; ///< Number of range samples
		uint32_t resolution; ///< interpolation
		Bounds range_bounds; ///< min and max ranges
		stg_radians_t fov; ///< Field of view, centered about the pose angle
		stg_usec_t interval; ///< Time interval  between updates (TODO: is this used?)
	 };
		
  private:	 
	 class Vis : public Visualizer 
	 {
	 private:
		static Option showArea;
		static Option showStrikes;
		static Option showFov;
		static Option showBeams;

	 public:
		Vis( World* world );		virtual ~Vis( void ){}
		virtual void Visualize( Model* mod, Camera* cam );
	 } vis;
	 	
	 unsigned int sample_count;
	 std::vector<Sample> samples;

	 stg_meters_t range_max;
	 stg_radians_t fov;
	 uint32_t resolution;
    
	 // set up data buffers after the config changes
	 void SampleConfig();

  public:
	 // constructor
	 ModelLaser( World* world,
					 Model* parent,
					 const std::string& type ); 
  
	 // destructor
	 ~ModelLaser();
	
	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void Load();
	 virtual void Print( char* prefix );
  
	 /** returns an array of range & reflectance samples */
	 Sample* GetSamples( uint32_t* count );
	 
	 /** returns a const reference to a vector of range and reflectance samples */
	 const std::vector<Sample>& GetSamples();
	 
	 /** Get the user-tweakable configuration of the laser */
	 Config GetConfig( );
	 
	 /** Set the user-tweakable configuration of the laser */
	 void SetConfig( Config& cfg );  
  };
  

  // Light indicator model
  class ModelLightIndicator : public Model
  {
  public:
	 ModelLightIndicator( World* world, 
								 Model* parent,
								 const std::string& type );
	 ~ModelLightIndicator();
  
	 void SetState(bool isOn);

  protected:
	 virtual void DrawBlocks();

  private:
	 bool m_IsOn;
  };

  // \todo  GRIPPER MODEL --------------------------------------------------------


  class ModelGripper : public Model
  {
  public:

	 enum paddle_state_t {
		PADDLE_OPEN = 0, // default state
		PADDLE_CLOSED, 
		PADDLE_OPENING,
		PADDLE_CLOSING,
	 };
	 
	 enum lift_state_t {
		LIFT_DOWN = 0, // default state
		LIFT_UP, 
		LIFT_UPPING, // verbed these to match the paddle state
		LIFT_DOWNING, 
	 };
	 
	 enum cmd_t {
		CMD_NOOP = 0, // default state
		CMD_OPEN, 
		CMD_CLOSE,
		CMD_UP, 
		CMD_DOWN    
	 };
	 
	 
	 /** gripper configuration 
	  */
	 struct config_t
	 {
		Size paddle_size; ///< paddle dimensions 
		paddle_state_t paddles;
		lift_state_t lift;		
		double paddle_position; ///< 0.0 = full open, 1.0 full closed
		double lift_position; ///< 0.0 = full down, 1.0 full up
		Model* gripped;
		bool paddles_stalled; // true iff some solid object stopped the paddles closing or opening
		double close_limit; ///< How far the gripper can close. If < 1.0, the gripper has its mouth full.		
		bool autosnatch; ///< if true, cycle the gripper through open-close-up-down automatically
		double break_beam_inset[2]; ///< distance from the end of the paddle
      Model* beam[2]; ///< points to a model detected by the beams
      Model* contact[2]; ///< pointers to a model detected by the contacts		
	 };
	 
  private:
	 virtual void Update();
	 virtual void DataVisualize( Camera* cam );
	 
	 void FixBlocks();
	 void PositionPaddles();
	 void UpdateBreakBeams();
	 void UpdateContacts();

	 config_t cfg;
	 cmd_t cmd;
	 
	 Block* paddle_left;
	 Block* paddle_right;

	 static Option showData;

  public:	 
	 static const Size size;

	 // constructor
	 ModelGripper( World* world,
						Model* parent,
						const std::string& type );
	 // destructor
	 virtual ~ModelGripper();
  
	 virtual void Load();
	 virtual void Save();

	 /** Configure the gripper */
	 void SetConfig( config_t & newcfg ){ this->cfg = newcfg; FixBlocks(); }
	 
	 /** Returns the state of the gripper .*/
	 config_t GetConfig(){ return cfg; };
	 
	 /** Set the current activity of the gripper. */
	 void SetCommand( cmd_t cmd ) { this->cmd = cmd; }
	 /** Command the gripper paddles to close. Wrapper for SetCommand( CMD_CLOSE ). */
	 void CommandClose() { SetCommand( CMD_CLOSE ); }
	 /** Command the gripper paddles to open. Wrapper for SetCommand( CMD_OPEN ). */
	 void CommandOpen() { SetCommand( CMD_OPEN ); }
	 /** Command the gripper lift to go up. Wrapper for SetCommand( CMD_UP ). */
	 void CommandUp() { SetCommand( CMD_UP ); }
	 /** Command the gripper lift to go down. Wrapper for SetCommand( CMD_DOWN ). */
	 void CommandDown() { SetCommand( CMD_DOWN ); }
  };


  // \todo BUMPER MODEL --------------------------------------------------------

  //   typedef struct
  //   {
  //     Pose pose;
  //     stg_meters_t length;
  //   } stg_bumper_config_t;

  //   typedef struct
  //   {
  //     Model* hit;
  //     stg_point_t hit_point;
  //   } stg_bumper_sample_t;


  // FIDUCIAL MODEL --------------------------------------------------------

  /// %ModelFiducial class
  class ModelFiducial : public Model
  {
  public:  
	 /** Detected fiducial data */
	 class Fiducial
	 {
	 public:
		stg_meters_t range; ///< range to the target
		stg_radians_t bearing; ///< bearing to the target 
		Pose geom; ///< size and relative angle of the target
		Pose pose; ///< Absolute accurate position of the target in world coordinates (it's cheating to use this in robot controllers!)
		Model* mod; ///< Pointer to the model (real fiducial detectors can't do this!)
		int id; ///< the fiducial identifier of the target (i.e. its fiducial_return value), or -1 if none can be detected.  
	 };

  private:
	 // if neighbor is visible, add him to the fiducial scan
	 void AddModelIfVisible( Model* him );

	 virtual void Update();
	 virtual void DataVisualize( Camera* cam );

	 static Option showData;
	 static Option showFov;
	 
	 std::vector<Fiducial> fiducials;
		
  public:		
	 ModelFiducial( World* world, 
						 Model* parent,
						 const std::string& type );
	 virtual ~ModelFiducial();
	
	 virtual void Load();
	 void Shutdown( void );

	 stg_meters_t max_range_anon;///< maximum detection range
	 stg_meters_t max_range_id; ///< maximum range at which the ID can be read
	 stg_meters_t min_range; ///< minimum detection range
	 stg_radians_t fov; ///< field of view 
	 stg_radians_t heading; ///< center of field of view
	 int key; ///< /// only detect fiducials with a key that matches this one (defaults 0)
		
		
	 /** Access the dectected fiducials. C++ style. */
	 std::vector<Fiducial>& GetFiducials() { return fiducials; }
		
	 /** Access the dectected fiducials, C style. */
	 Fiducial* GetFiducials( unsigned int* count )
	 {
		if( count ) *count = fiducials.size();
		return &fiducials[0];
	 }
  };


  // RANGER MODEL --------------------------------------------------------

  /// %ModelRanger class
  class ModelRanger : public Model
  {
  public:
	 class Sensor
	 {
	 public:
		Pose pose;
		Size size;
		Bounds bounds_range;
		stg_radians_t fov;
		int ray_count;
		stg_meters_t range;
	 };

  protected:

	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void DataVisualize( Camera* cam );
	
  public:
	 ModelRanger( World* world, Model* parent,
					  const std::string& type );
	 virtual ~ModelRanger();
	
	 virtual void Load();
	 virtual void Print( char* prefix );
	 
	 std::vector<Sensor> sensors;
	
  private:
	 static Option showRangerData;
	 static Option showRangerTransducers;		
  };
	
  // BLINKENLIGHT MODEL ----------------------------------------------------
  class ModelBlinkenlight : public Model
  {
  private:
	 double dutycycle;
	 bool enabled;
	 stg_msec_t period;
	 bool on;

	 static Option showBlinkenData;
  public:
	 ModelBlinkenlight( World* world,
							  Model* parent,
							  const std::string& type );

	 ~ModelBlinkenlight();
	
	 virtual void Load();
	 virtual void Update();
	 virtual void DataVisualize( Camera* cam );
  };

	
  // CAMERA MODEL ----------------------------------------------------

  /// %ModelCamera class
  class ModelCamera : public Model
  {
  public:
	 typedef struct 
	 {
		// GL_V3F
		GLfloat x, y, z;
	 } ColoredVertex;
  
  private:
	 Canvas* _canvas;

	 GLfloat* _frame_data;  //opengl read buffer
	 GLubyte* _frame_color_data;  //opengl read buffer

	 bool _valid_vertexbuf_cache;
	 ColoredVertex* _vertexbuf_cache; //cached unit vectors with appropriate rotations (these must be scalled by z-buffer length)
	
	 int _width;         //width of buffer
	 int _height;        //height of buffer
	 static const int _depth = 4;
	
	 int _camera_quads_size;
	 GLfloat* _camera_quads;
	 GLubyte* _camera_colors;
	
	 static Option showCameraData;
	
	 PerspectiveCamera _camera;
	 float _yaw_offset; //position camera is mounted at
	 float _pitch_offset;
		
	 ///Take a screenshot from the camera's perspective. return: true for sucess, and data is available via FrameDepth() / FrameColor()
	 bool GetFrame();
	
  public:
	 ModelCamera( World* world,
					  Model* parent,
					  const std::string& type ); 
	  
	 ~ModelCamera();
  
	 virtual void Load();
	
	 ///Capture a new frame ( calls GetFrame )
	 virtual void Update();
	
	 ///Draw Camera Model - TODO
	 //virtual void Draw( uint32_t flags, Canvas* canvas );
	
	 ///Draw camera visualization
	 virtual void DataVisualize( Camera* cam );
	
	 ///width of captured image
	 int getWidth( void ) const { return _width; }
	
	 ///height of captured image
	 int getHeight( void ) const { return _height; }
	
	 ///get reference to camera used
	 const PerspectiveCamera& getCamera( void ) const { return _camera; }
	
	 ///get a reference to camera depth buffer
	 const GLfloat* FrameDepth() const { return _frame_data; }
	
	 ///get a reference to camera color image. 3 bytes (RGB) per pixel
	 const GLubyte* FrameColor() const { return _frame_color_data; }
	
	 ///change the pitch
	 void setPitch( float pitch ) { _pitch_offset = pitch; _valid_vertexbuf_cache = false; }
	
	 ///change the yaw
	 void setYaw( float yaw ) { _yaw_offset = yaw; _valid_vertexbuf_cache = false; }
  };

  // POSITION MODEL --------------------------------------------------------

  /// %ModelPosition class
  class ModelPosition : public Model
  {
	 friend class Canvas;

  public:
	 /** Define a position  control method */
	 typedef enum
		{ CONTROL_VELOCITY, 
		  CONTROL_POSITION 
		} ControlMode;
	 
	 /** Define a localization method */
	 typedef enum
		{ LOCALIZATION_GPS, 
		  LOCALIZATION_ODOM 
		} LocalizationMode;
	 
	 /** Define a driving method */
	 typedef enum
		{ DRIVE_DIFFERENTIAL, 
		  DRIVE_OMNI, 
		  DRIVE_CAR 
		} DriveMode;
	 
  private:
	 Pose goal;///< the current velocity or pose to reach, depending on the value of control_mode
	 ControlMode control_mode;
	 DriveMode drive_mode;
	 LocalizationMode localization_mode; ///< global or local mode
	 Velocity integration_error; ///< errors to apply in simple odometry model
	 double wheelbase;
	 
  public:
	 // constructor
	 ModelPosition( World* world,
						 Model* parent,
						 const std::string& type );
	 // destructor
	 ~ModelPosition();

	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void Load();
	 	
	 /** Specify a point in space. Arrays of Waypoints can be attached to
		  Models and visualized. */
	 class Waypoint
	 {
	 public:
		Waypoint( stg_meters_t x, stg_meters_t y, stg_meters_t z, stg_radians_t a, Color color ) ;
		Waypoint( const Pose& pose, Color color ) ;
		Waypoint();
		void Draw() const;
		
		Pose pose;
		Color color;
	 };
	 
	 std::vector<Waypoint> waypoints;

	 class WaypointVis : public Visualizer
	 {
	 public:
		WaypointVis();
		virtual ~WaypointVis( void ){}
		virtual void Visualize( Model* mod, Camera* cam );
	 } wpvis;
	 
	 class PoseVis : public Visualizer
	 {
	 public:
		PoseVis();
		virtual ~PoseVis( void ){}
		virtual void Visualize( Model* mod, Camera* cam );
	 } posevis;

	 /** Set the current pose estimate.*/
	 void SetOdom( Pose odom );
		
	 /** Sets the control_mode to CONTROL_VELOCITY and sets
		  the goal velocity. */
	 void SetSpeed( double x, double y, double a );
	 void SetXSpeed( double x );
	 void SetYSpeed( double y );
	 void SetZSpeed( double z );
	 void SetTurnSpeed( double a );
	 void SetSpeed( Velocity vel );
	 /** Set velocity along all axes to  to zero. */
	 void Stop();

	 /** Sets the control mode to CONTROL_POSITION and sets
		  the goal pose */
	 void GoTo( double x, double y, double a );
	 void GoTo( Pose pose );

	 // localization state
	 Pose est_pose; ///< position estimate in local coordinates
	 Pose est_pose_error; ///< estimated error in position estimate
	 Pose est_origin; ///< global origin of the local coordinate system
  };


  // ACTUATOR MODEL --------------------------------------------------------

  /// %ModelActuator class
  class ModelActuator : public Model
  {
  public:
	 /** Define a actuator control method */
	 typedef enum
		{ CONTROL_VELOCITY,
		  CONTROL_POSITION
		} ControlMode;
  
	 /** Define an actuator type */
	 typedef enum
		{ TYPE_LINEAR,
		  TYPE_ROTATIONAL
		} ActuatorType;
  
  private:
	 double goal; //< the current velocity or pose to reach, depending on the value of control_mode
	 double pos;
	 double max_speed;
	 double min_position;
	 double max_position;
	 ControlMode control_mode;
	 ActuatorType actuator_type;
	 stg_point3_t axis;
  
	 Pose InitialPose;
  public:  
	 // constructor
	 ModelActuator( World* world,
						 Model* parent,
						 const std::string& type );
	 // destructor
	 ~ModelActuator();
  
	 virtual void Startup();
	 virtual void Shutdown();
	 virtual void Update();
	 virtual void Load();
  
	 /** Sets the control_mode to CONTROL_VELOCITY and sets
		  the goal velocity. */
	 void SetSpeed( double speed );
  
	 double GetSpeed() const {return goal;}
  
	 /** Sets the control mode to CONTROL_POSITION and sets
		  the goal pose */
	 void GoTo( double pose );
  
	 double GetPosition() const {return pos;};
	 double GetMaxPosition() const {return max_position;};
	 double GetMinPosition() const {return min_position;};
  
  };


}; // end namespace stg

#endif
