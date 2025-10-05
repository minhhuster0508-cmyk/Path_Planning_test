function L = pathLength(P)
%tong cac duong thang doc theo duong gap khuc P
if isempty(P) || size(P,1) < 2, L = 0; return; end
L = sum(hypot(diff(P(:,1)), diff(P(:,2))));
end