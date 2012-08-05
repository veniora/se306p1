FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/Project2Sample/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/Project2Sample/msg/__init__.py"
  "../src/Project2Sample/msg/_R_ID.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
