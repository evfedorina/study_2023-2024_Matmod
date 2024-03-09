model lab5
parameter Integer x0 = 9;
parameter Integer y0 = 14;
parameter Real a = 0.15;
parameter Real b = 0.044;
parameter Real c = 0.35;
parameter Real d = 0.032;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = -c*x + d*x*y;
der(y) = a*y - b*x*y;
end lab5;
