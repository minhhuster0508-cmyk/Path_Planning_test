
%% MAIN RRT* PATH PLANNING (MATLAB)
% Clean entry point
clear; clc; close all;
addpath(genpath('core')); addpath('config'); addpath('utils');


% Load map & parameters
cfg = map_config();
[cfg.start, cfg.goal] = pick_start_goal(cfg.map, cfg.goal_radius);

% Run RRT*
[path, tree] = rrtstar(cfg);


% Visualize

visualize(cfg.map, cfg.start, cfg.goal, path, tree);
