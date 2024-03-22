model lab7
parameter Real N = 650; 
parameter Real n0 = 7; 

Real nt(start=n0);

equation

der(nt) = (0.77*time + 0.5*cos(time)*nt)*(N - nt);

end lab7;
