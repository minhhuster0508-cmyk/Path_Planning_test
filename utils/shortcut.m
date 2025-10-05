function P2 = shortcut(P, map, K)
%lam muot duong di ngau nhien.
if nargin < 3, K = 200; end
if size(P,1) < 3, P2 = P; return; end
P2 = P;
for k = 1:K
if size(P2,1) < 3, break; end
i = randi([1 size(P2,1)-2]);
j = randi([i+2 size(P2,1)]);
if ~isCollisionSegment(P2(i,:), P2(j,:), map)
P2 = [P2(1:i,:); P2(j:end,:)]; %#ok<AGROW>
end
end
end