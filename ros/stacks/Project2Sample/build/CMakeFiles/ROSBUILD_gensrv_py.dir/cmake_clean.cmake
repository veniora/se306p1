FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/Project2Sample/msg"
  "../src/Project2Sample/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/Project2Sample/srv/__init__.py"
  "../src/Project2Sample/srv/_ClosestDistance.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
