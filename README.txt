se306p1

SETUP:

1. If it does not already exist create a file named .bashrc in your home directory.
1.a. Files starting with .* will be hidden, use "ls -a" to show them.
1.b. "cd" will take you to your home directory.
1.c. "vim .bashrc" will open .bashrc or create it if it doesnt exist.

2. Append the following lines to .bashrc 
(NOTE: Replace ~/ros/stacks with PATH_TO_YOUR_REPO/ros/stacks. For example mine is ~/se306p1/ros/stacks)

source /opt/ros/electric/setup.bash
export ROS_PACKAGE_PATH=PATH_TO_YOUR_REPO/ros/stacks:$ROS_PACKAGE_PATH
export STAGEPATH='rospack find stage'/share/stage

2.a. IMPORTANT! Replace PATH_TO_YOUR_REPO with the path to your repo. For example my repo is in a folder called se306p1 in my home directory so I replace PATH_TO_YOUR_REPO with ~/se306p1
2.b. "~" points to your home directory.

3. Run these commands from the command line:

roscd stage
make
roscd Project2Sample
rosmake

4. Setup is now complete

