function y = steer(from, to, step)
% tien mot buoc tu diem from toi to voi khoang cach step
v = to - from; L = norm(v);
if L <= step, y = to; else, y = from + v * (step / L); end
end