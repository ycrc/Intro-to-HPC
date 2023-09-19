%---------Run this code in a MATLAB application on Open OnDemand---------%
% Draw a sphere with radius 10 centering at (1,-1,2)

[X,Y,Z] = sphere;
r = 10;
surf(10*X+1, 10*Y-1, 10*Z+2)
axis equal
