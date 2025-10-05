function cfg = map_config()
%MAP_CONFIG cau hinh ban do, bat dau/ket thuc, va tham so tinh toan.


% ---- Ban do (H x W), 0 = o trong, 1 = vatcan ----
H = 200; W = 300;
map = zeros(H, W, 'uint8');
map(60:140, 80:90) = 1;
map(60:70 , 90:220) = 1;
map(130:140,110:260) = 1;
map(30:170,260:270) = 1;


% ---- dau vao/ra ----
cfg.map = map;
cfg.start = [20, 30]; % [x y]
cfg.goal = [280, 170];
cfg.goal_radius = 5; % pixels


% ---- tham so RRT* ----
cfg.max_iter = 6000;
cfg.step_size = 8; % chieu dai buoc dinh huong (pixels)
cfg.gamma_rrt = 40; % do lon vung tim nut lan can
end