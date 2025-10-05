function [idx, node] = nearest(V, x)
% chi so va gia tri nut gan nhat trong V so voi x.
[~, idx] = min(sum((V - x).^2, 2));
node = V(idx,:);
end