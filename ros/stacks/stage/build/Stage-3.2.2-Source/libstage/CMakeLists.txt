MESSAGE( STATUS "Configuring libstage" )

# for config.h
include_directories(${PROJECT_BINARY_DIR})

set( stageSrcs    
	block.cc
	blockgroup.cc
	camera.cc
	color.cc
	file_manager.cc
	file_manager.hh
	gl.cc
	logentry.cc
	model.cc
	model_actuator.cc
	model_blinkenlight.cc
	model_blobfinder.cc
	model_callbacks.cc
	model_camera.cc
	model_draw.cc
	model_fiducial.cc
	model_getset.cc
	model_gripper.cc
	model_laser.cc
	model_lightindicator.cc
	model_load.cc
	model_position.cc
	model_ranger.cc
	option.cc
	powerpack.cc
	region.cc
	stage.cc
	stage.hh
	texture_manager.cc
	typetable.cc		
	world.cc			
	worldfile.cc		
   canvas.cc 
   options_dlg.cc
   options_dlg.hh
   vis_strip.cc			
   worldgui.cc 
   ancestor.cc
)

set_source_files_properties( ${stageSrcs} PROPERTIES COMPILE_FLAGS "${FLTK_CFLAGS}" )
 
add_library(stage SHARED ${stageSrcs})

target_link_libraries( stage
		       ${OPENGL_LIBRARIES}
  				 ${LTDL_LIB}
  				 ${FLTK_LIBS2}
)

# causes the shared library to have a version number
set_target_properties( stage PROPERTIES
		       VERSION ${VERSION}
             LINK_FLAGS "${FLTK_LDFLAGS}"	  
	     INSTALL_NAME_DIR ${CMAKE_INSTALL_PREFIX}/lib
)

set( stagebinarySrcs main.cc )

add_executable( stagebinary ${stagebinarySrcs} )

# When compiling stagebinarySrcs, pass CFLAGS from fltk-config
set_source_files_properties( ${stagebinarySrcs} PROPERTIES COMPILE_FLAGS "${FLTK_CFLAGS}" )

set_target_properties( stagebinary PROPERTIES OUTPUT_NAME stage )

if(PROJECT_OS_LINUX)
  separate_arguments(FLTK_LIBS)
  target_link_libraries( stagebinary stage ${LTDL_LIB} ${FLTK_LIBS} ${OPENGL_LIBRARIES} Xft jpeg png Xinerama )
else()
  target_link_libraries( stagebinary stage )
endif()
set_target_properties( stagebinary PROPERTIES
             LINK_FLAGS ${FLTK_LDFLAGS}
)

INSTALL(TARGETS stagebinary stage
	RUNTIME DESTINATION bin
	LIBRARY DESTINATION lib
)

INSTALL(FILES stage.hh 
        DESTINATION include/${PROJECT_NAME}-${APIVERSION})

