function tf = isCollisionPoint(p, map)
% Tra ve true neu diem p nam ngoai ban do hoac va vao chuong ngai vat.
x = round(p(1)); y = round(p(2));
if x < 1 || y < 1 || y > size(map,1) || x > size(map,2)
tf = true; return; end
tf = map(y,x) ~= 0;
end