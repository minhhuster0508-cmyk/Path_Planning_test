function cfg = map_config()
  % cau hinh ban do, bat dau/ket thuc, va tham so tinh toan.
  % ---- Ban do (H x W), 0 = o trong, 1 = vatcan ----
H = 600; W = 600;
  map = zeros(H, W, 'uint8');
  map(100:200, 95:105) = 1;
  map(95:105,200:400) = 1;
  map(500:600,495:505) =1;
  map(395:405,400:600) =1;
  map(300:500,295:305) =1;
  map(1:200,395:405) =1;
  map(95:105,500:600) =1;
  map(295:305,200:505) =1;
  map(395:405,100:300) =1;
  % dau vao/ra
cfg.map = map;
cfg.start = [20, 30]; % [x y]
cfg.goal = [580, 570];
cfg.goal_radius = 5; % pixels
  % tham so RRT* 
cfg.max_iter = 6000;
cfg.step_size = 8; % chieu dai buoc dinh huong (pixels)
cfg.gamma_rrt = 40; % do lon vung tim nut lan can
end
