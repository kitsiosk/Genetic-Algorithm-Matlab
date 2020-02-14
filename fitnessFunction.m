function f=fitnessFunction(x,V)
c=[59.85 ;43.05 ;53.55 ;26.25 ;44.1 ;64.05 ;36.75 ;35.7 ;13.65 ;21 ;54.6 ;63 ;33.6 ;54.6 ;46.2 ;31.5];
% Equality restrictions array. All of its elements has to be zero
g = zeros(9, 1);

g(1) = x(1) + x(2) + x(3) - V;
g(2)= x(1) - x(6) - x(7);
g(3) = x(2) - x(4)- x(13);
g(4) = x(3) + x(4) - x(5) - x(12);
g(5) = x(11) + x(12) + x(13) - x(14);
g(6) = x(7) - x(8) - x(9);
g(7) = x(5) + x(6) + x(8) - x(10) - x(11) - x(16);
g(8) = x(9) + x(10) - x(15);
g(9) = x(14) + x(15) + x(16) - V;

f=0;
for i=1:16
    f = f + x(i)/(1-(x(i)/c(i)));
end

% Set a penalty each time one of the equality restrictions is different
% than zero

for i=1:9
    f = f + abs(g(i))*10000;
end

end
