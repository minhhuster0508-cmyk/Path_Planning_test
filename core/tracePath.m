function path = tracePath(V, Parent, idx)
% truy nguoc tu idx ve goc
path = V(idx,:); p = idx;
while p ~= 0
p = Parent(p);
if p == 0, break; end
path = [V(p,:); path]; %#ok<AGROW>
end
end