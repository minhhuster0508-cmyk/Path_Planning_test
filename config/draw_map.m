function draw_map(cfg)
% Hien thi ban đo, diem bat dau/ket thuc va cac vat can

figure; 
imshow(~cfg.map); hold on; % dao mau de vat can la den, vung trong la trang
title('RRT* Map');
xlabel('X (columns)');
ylabel('Y (rows)');
axis on; grid on;

% Ve diem bat dau
plot(cfg.start(1), cfg.start(2), 'go', 'MarkerSize', 10, 'LineWidth', 2);
text(cfg.start(1)+5, cfg.start(2), 'Start', 'Color', 'g', 'FontWeight', 'bold');

% Ve diem ket thuc
plot(cfg.goal(1), cfg.goal(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
text(cfg.goal(1)+5, cfg.goal(2), 'Goal', 'Color', 'r', 'FontWeight', 'bold');

% Ve ban kinh vung ket thuc
viscircles(cfg.goal, cfg.goal_radius, 'Color', 'r', 'LineStyle', '--');

hold off;
end