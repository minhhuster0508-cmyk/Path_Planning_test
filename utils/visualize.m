function visualize(map, start, goal, path, tree)
figure('Name','RRT* (0=free, 1=obstacle)','Color','w');
imshow(~map); hold on;


% Cay duong di
if numel(tree.Parent) > 1
plot([tree.V(tree.Parent(2:end),1) tree.V(2:end,1)]', ...
[tree.V(tree.Parent(2:end),2) tree.V(2:end,2)]', '-', ...
'Color', [0 .6 1 .2]);
end


% bat dau/ket thuc
plot(start(1), start(2), 'bo', 'MarkerFaceColor', 'b');
plot(goal(1), goal(2), 'ro', 'MarkerFaceColor', 'r');


% Path
if ~isempty(path)
plot(path(:,1), path(:,2), 'm-', 'LineWidth', 2);
title(sprintf('Path length: %.1f (nodes: %d)', pathLength(path), size(tree.V,1)));
else
title('Goal not reached');
end
hold off;
end