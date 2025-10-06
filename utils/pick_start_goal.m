function [start_xy, goal_xy] = pick_start_goal(map, goal_radius)
    
    if nargin < 2, goal_radius = 5; end
    [H, W] = size(map);

    figure('Name','Chọn START (xanh) và GOAL (đỏ)','Color','w');
    imshow(~map, 'InitialMagnification', 'fit'); hold on; axis on;
    title('Click 1 lần để chọn START (xanh). Sau đó click để chọn GOAL (đỏ).');

    function [pt] = pick_point(prompt, color)
        while true
            disp(prompt);
            [x, y] = ginput(1);               % x = cột, y = hàng (toạ độ ảnh)
            x = round(x);  y = round(y);
            % ép vào trong biên
            x = min(max(x,1), W);
            y = min(max(y,1), H);
            if map(y,x) == 0
                plot(x, y, 'o', 'Color', color, 'MarkerSize', 8, 'LineWidth', 2);
                pt = [x y];
                break;
            else
                beep;  % bam vao vat can
                title('Điểm nằm TRÊN VẬT CẢN, hãy chọn lại!');
            end
        end
    end

    start_xy = pick_point('Chọn START (vùng trống).', [0 0.7 1]);
    title('Chọn GOAL (vùng trống).');
    goal_xy  = pick_point('Chọn GOAL (vùng trống).', [1 0 0]);

    % ve vong goal
    th = linspace(0,2*pi,100);
    plot(goal_xy(1)+goal_radius*cos(th), goal_xy(2)+goal_radius*sin(th), 'r--', 'LineWidth',1.2);

    hold off; drawnow;
end