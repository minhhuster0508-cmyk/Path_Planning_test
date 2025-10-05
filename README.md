# Path_Planning_test

## How to Run

**To get started, clone this repository to your local machine:**
```bash
git clone https://github.com/minhhuster0508-cmyk/Path_Planning_test.git
```
**Open MATLAB and set the working directory to the project folder and add all project folders automatically:**
```matlab
addpath(genpath(pwd));
```
**Run the demo script:**
```matlab
run('run/rrtstar.m')
```

**The script will:**

Load the map and configuration from config/map_config.m

Execute the RRT* algorithm (core/main_rrtstar.m)

Visualize the exploration tree and the final optimized path
