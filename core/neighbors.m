function idx = neighbors(V, x, r)
% tra ve chi so cac nut nam trong ban kinh r tu x
idx = find(sum((V - x).^2, 2) <= r^2);
end