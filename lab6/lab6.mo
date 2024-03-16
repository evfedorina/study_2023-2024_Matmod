model lab6
constant Real alpha = 0.07;
constant Real beta = 0.1;
constant Real N = 9000;

Real R;
Real I;
Real S;

initial equation
R = 10;
I = 70;
S = N - I - R;

equation

der(S) = -alpha*S;
der(I) = alpha*S-beta*I;
der(R) = beta*I;

end lab6;
