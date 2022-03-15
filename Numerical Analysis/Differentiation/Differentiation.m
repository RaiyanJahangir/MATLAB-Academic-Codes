x = [1 2 3 4 5];
y = [2 5 9 12 20];

xx = 4;

h = x(2) - x(1);
p = (xx - x(1)) / h;
len = length(x);

idx = find(x == xx);

temp_y = y(idx:len)
delta_y = zeros(1, len - idx)

for i = 1 : len - idx
    delta_y(i) = diff(temp_y, i);
end

disp(delta_y);

syms pp;
prod = 1;
s1 = 0;
s2 = 0;

for i = 1 : len - idx
    prod = prod * (pp - (i-1));
    d1_prod = diff(prod);
    d2_prod = diff(d1_prod);
    
    co_eff_1 = (delta_y(i) * d1_prod) / factorial(i) ; 
    co_eff_2 = (delta_y(i) * d2_prod) / factorial(i);
    
    term_1 = vpa(subs(co_eff_1, pp, p), 4);
    term_2 = vpa(subs(co_eff_2, pp, p), 4);
    
    s1 = s1 + term_1;
    s2 = s2 + term_2;
    
end

first_der = s1 / h;
second_der = s2 / (h * h);

disp(first_der);
disp(second_der);




