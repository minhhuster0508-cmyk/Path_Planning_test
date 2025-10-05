# Path_Planning_test

## How to Run

 **Open MATLAB and set the working directory to the project folder:**
 ```matlab
   cd('D:\UAV Project\PathPlanning-Minh')
 ```

**Run the demo script:**
```matlab
run('run/rrtstar_run.m')
```

**The script will:**

Load the map and configuration from config/map_config.m

Execute the RRT* algorithm (core/main_rrtstar.m)

Visualize the exploration tree and the final optimized path
