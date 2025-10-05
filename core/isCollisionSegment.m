function tf = isCollisionSegment(a, b, map)
% kiem tra va cham lay doc mau [a,b]
N = max(2, ceil(hypot(b(1)-a(1), b(2)-a(2))));
xs = round(linspace(a(1), b(1), N));
ys = round(linspace(a(2), b(2), N));
tf = any(xs<1 | ys<1 | ys>size(map,1) | xs>size(map,2)) || ...
any(map(sub2ind(size(map), ys, xs)) ~= 0);
end