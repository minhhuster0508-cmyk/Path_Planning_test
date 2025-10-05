function [path, tree] = rrtstar(cfg)
Parent = 0; % chi so cha
Cost = 0; % chi phi tu goc->nut
kdim = 2; 
goalIdx = NaN;
V = cfg.start;


for iter = 1:cfg.max_iter
% lay diem mau
if rand < 0.05
x_rand = cfg.goal;
else
x_rand = [randi([1 size(cfg.map,2)]), randi([1 size(cfg.map,1)])];
end
if isCollisionPoint(x_rand, cfg.map), continue; end

[idxNear, xNear] = nearest(V, x_rand); % tim nut gan nhat

xNew = steer(xNear, x_rand, cfg.step_size); % tien ve diem mau
if isCollisionSegment(xNear, xNew, cfg.map), continue; end

n = size(V,1);
r = min(cfg.step_size*20, cfg.gamma_rrt*(log(n)/n)^(1/kdim));% ban kinh lan can theo cong thuc
idxNb = neighbors(V, xNew, r);

[idxParent, cMin] = chooseParent(idxNb, V, Parent, Cost, xNew, cfg.map, idxNear); % chon nut cha toi uu
if isempty(idxParent)
idxParent = idxNear;
cMin = Cost(idxNear) + dist(V(idxNear,:), xNew);
end


V(end+1,:) = xNew; % tao nut
Parent(end+1,1) = idxParent;
Cost(end+1,1) = cMin;
newIdx = size(V,1);

for j = idxNb(:)'% lien ket voi nut lan can 
newCost = Cost(newIdx) + dist(V(newIdx,:), V(j,:));
if newCost < Cost(j) && ~isCollisionSegment(V(newIdx,:), V(j,:), cfg.map)
Parent(j) = newIdx; Cost(j) = newCost;
end
end

if dist(xNew, cfg.goal) <= cfg.goal_radius % kiem tra diem ket thuc
goalIdx = newIdx; break; 
end
end

if ~isnan(goalIdx)% truy vet duong di
path = tracePath(V, Parent, goalIdx);
else
path = [];
end

tree.V = V; tree.Parent = Parent;
end