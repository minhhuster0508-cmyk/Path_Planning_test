function [idxParent, cMin] = chooseParent(idxNb, V, Parent, Cost, xNew, map, idxNear)
% Chon nut cha tot nhat trong cac nut lan can dua tren chi phi nho nhat.
if isempty(idxNb), idxParent = []; cMin = inf; return; end
cMin = inf; idxParent = idxNear;
for j = idxNb(:)'
if isCollisionSegment(V(j,:), xNew, map), continue; end
c = Cost(j) + dist(V(j,:), xNew);
if c < cMin
cMin = c; idxParent = j;
end
end
end