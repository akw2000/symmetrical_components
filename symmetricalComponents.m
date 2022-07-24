% symmetrical or phase components polar
[x,y] = pol2cart(deg2rad(-30),4);
a = x + i*y;
[x,y] = pol2cart(deg2rad(-120),4);
b = x + i*y;
[x,y] = pol2cart(deg2rad(60),3);
c = x + i*y;
ph=[a;b;c;];

[x,y] = pol2cart(deg2rad(120),1);
ap= x + i*y;
[x,y] = pol2cart(deg2rad(-120),1);
ap2= x + i*y;
l=[1,1,1;1,ap2,ap;1,ap,ap2;];

out = inv(l)*ph;
out = l*ph;

% complex ====================================
a = x + i*y;
b = x + i*y;
c = x + i*y;
ph=[a;b;c;];
