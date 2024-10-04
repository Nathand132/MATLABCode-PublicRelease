v = [2;4];

v = v./(norm(v))

% 60 degree rotation
Rotation1 = [cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)];

Allvectors = [v];
Newtempvector = v;

for i=1:5
    Newtempvector = Rotation1*Newtempvector;
    Allvectors = [Allvectors, Newtempvector];

end

figure;

for i=1:6;
    xaxis = [0,Allvectors(1,i)];
    yaxis = [0,Allvectors(2,i)];
    plot(xaxis,yaxis);
    hold on
end

Reflectalongx = [1,0;0,-1];
Reflectalongy = [-1,0;0,1];

Allvectors2 = Reflectalongx*Allvectors;

figure;

for i=1:6;
    xaxis = [0,Allvectors2(1,i)];
    yaxis = [0,Allvectors2(2,i)];
    plot(xaxis,yaxis);
    hold on
end

Allvectors3 = Reflectalongy*Allvectors;

figure;

for i=1:6;
    xaxis = [0,Allvectors3(1,i)];
    yaxis = [0,Allvectors3(2,i)];
    plot(xaxis,yaxis);
    hold on
end

% Part 3a
T1 = [cos(pi/6),-sin(pi/6);sin(pi/6),cos(pi/6)];
T2 = [cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)];

T1*T2
T2*T1
disp('Part 3a, Rotation, Rotation')
version1 = (T1*T2)*v
version2 = (T2*T1)*v

figure;
    xaxis1 = [0,version1(1)];
    yaxis1 = [0, version1(2)];
    xaxis2 = [0,version2(1)];
    yaxis2 = [0, version2(2)];
    t=tiledlayout('flow');
    title(t, '3a - Where (T1*T2)*v = (T2*T1)*v');
    nexttile;
    plot(xaxis1,yaxis1);
    title('T1*T2')
    xlim([-2 2])
    ylim([-2 2])
    nexttile;
    plot(xaxis2,yaxis2);
    title('T2*T1')
    xlim([-2 2])
    ylim([-2 2])
    hold on


% Part 3b
T1 = [cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)];
T2 = [1,0;0,-1];

T1*T2
T2*T1

disp('Part 3b, rotate, reflect x')
version1 = (T1*T2)*v
version2 = (T2*T1)*v

figure;
    xaxis1 = [0,version1(1)];
    yaxis1 = [0, version1(2)];
    xaxis2 = [0,version2(1)];
    yaxis2 = [0, version2(2)];
    t=tiledlayout('flow');
    title(t, '3b - Where (T1*T2)*v =/= (T2*T1)*v');
    nexttile;
    plot(xaxis1,yaxis1);
    title('T1*T2')
    xlim([-2 2])
    ylim([-2 2])
    nexttile;
    plot(xaxis2,yaxis2);
    title('T2*T1')
    xlim([-2 2])
    ylim([-2 2])
    hold on


T1 = [cos(pi),-sin(pi);sin(pi),cos(pi)];
T2 = [1,0;0,-1];

T1*T2
T2*T1

disp('Part 3b, rotate, reflect x')
version1 = (T1*T2)*v
version2 = (T2*T1)*v

figure;
    xaxis1 = [0,version1(1)];
    yaxis1 = [0, version1(2)];
    xaxis2 = [0,version2(1)];
    yaxis2 = [0, version2(2)];
    t=tiledlayout('flow');
    title(t, '3b - Where (T1*T2)*v = (T2*T1)*v');
    nexttile;
    plot(xaxis1,yaxis1);
    title('T1*T2')
    xlim([-2 2])
    ylim([-2 2])
    nexttile;
    plot(xaxis2,yaxis2);
    title('T2*T1')
    xlim([-2 2])
    ylim([-2 2])
    hold on

% Part 3c

A = [1;0];
B = [0;1];

C = A-((2.*((sum(A.*[-1;1]))./2)).*[-1;1]);
D = B-((2.*((sum(B.*[-1;1]))./2)).*[-1;1]);

T1 = [C,D];
T2 = [1,0;0,-1];

disp('Part 3c, reflect y=x, reflect x')
version1 = (T1*T2)*v
version2 = (T2*T1)*v

figure;
    xaxis1 = [0,version1(1)];
    yaxis1 = [0, version1(2)];
    xaxis2 = [0,version2(1)];
    yaxis2 = [0, version2(2)];
    t=tiledlayout('flow');
    title(t, '3c - Where (T1*T2)*v =/= (T2*T1)*v');
    nexttile;
    plot(xaxis1,yaxis1);
    title('T1*T2')
    xlim([-2 2])
    ylim([-2 2])
    nexttile;
    plot(xaxis2,yaxis2);
    title('T2*T1')
    xlim([-2 2])
    ylim([-2 2])
    hold on

% Part 3d
T1=[1,-2;0,1];
T2=[1,0;2,1];

disp('Part 3d, H-Sheer, V-Sheer')
version1 = (T1*T2)*v
version2 = (T2*T1)*v

figure;
    xaxis1 = [0,version1(1)];
    yaxis1 = [0, version1(2)];
    xaxis2 = [0,version2(1)];
    yaxis2 = [0, version2(2)];
    t=tiledlayout('flow');
    title(t, '3d - Where (T1*T2)*v = (T2*T1)*v');
    nexttile;
    plot(xaxis1,yaxis1);
    title('T1*T2')
    xlim([-2 2])
    ylim([-2 2])
    nexttile;
    plot(xaxis2,yaxis2);
    title('T2*T1')
    xlim([-2 2])
    ylim([-2 2])
    hold on