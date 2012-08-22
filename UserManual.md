Prerequisites

1. Must have an account on Github (https://github.com/) configured and be made a collaborator to "veniora/se306p1" repository.  

2. Must have the electric version of ROS (Robot Operating System) installed on Ubuntu 11.04 or 11.10.  See the ROS installation guide for more details (http://www.ros.org/wiki/electric/Installation/Ubuntu) 



Setup

1. Open an instance of the terminal (Ctrl + Alt + t) in Ubuntu.  Navigate to the directory of your choice and clone the repository "veniora/se306p1" onto your local machine from Github by typing:

   git clone http://github.com/veniora/se306p1.git

2. Navigate to your home directory by typing "cd".  Open the file ".bashrc" by typing "gedit .bashrc".  The ".bashrc" file can also be opened with another text editor i.e. vim.  

3. To the ".bashrc" file, append the following lines:

   source /opt/ros/electric/setup.bash
   
   export ROS_PACKAGE_PATH=PATH_TO_YOUR_REPO/ros/stacks:$ROS_PACKAGE_PATH

   NOTE: PATH_TO_YOUR_REPO must be replaced by the path of the directory in which the repository was cloned in step 1 of the setup process.  

   While it is not necessary to be appending "source /opt/ros/electric/setup.bash" to the ".bashrc" file, it is recommended. Alternatively, with every instance of the terminal, the "setup.bash" file must be sourced to use any ROS commands.

4. Save changes to the ".bashrc" file and close it.  



Running the application

1. Open an instance of the terminal (Ctrl + Alt + t) in Ubuntu.

2. Navigate to the stage package by typing "roscd stage".

3. Compile the package by typing "make".

4. Next, navigate to Project2Sample package by typing "roscd Project2Sample"

5. Compile the package by typing "make".

6. Navigate to the bin directory by typing "cd bin". 

7. Lastly, run the executable Launcher by typing "./Launcher x" where x is a given number of robot nodes greater than 24.  
   






