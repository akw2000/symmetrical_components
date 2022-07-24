% symmetrical or phase components polar
[x,y] = pol2cart(deg2rad(-30),4);
a = x + i*y;
[x,y] = pol2cart(deg2rad(-120),4);
b = x + i*y;
[x,y] = pol2cart(deg2rad(60),3);
c = x + i*y;
ph=[a;b;c;];
% lambda matrix
[x,y] = pol2cart(deg2rad(120),1);
ap= x + i*y;
[x,y] = pol2cart(deg2rad(-120),1);
ap2= x + i*y;
l=[1,1,1;1,ap2,ap;1,ap,ap2;];
%to find symmetrical components if phase components given
out = inv(l)*ph;
%to find phase components if symmetrical components given
out = l*ph;
