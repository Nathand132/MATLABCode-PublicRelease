mA=3; %mass of ball A

vA1=9;  %initial velocity of ball A

mB=2.5; %mass of ball B

vB1=4;  %initial velocity of ball B

e=0.8;  %resitution value

%% Backend

% assume all velocities relative to ball B

vA1r=vA1+vB1;

vB1r=0;

vA2r=((mA-e*mB)/(mA+mB))*vA1r;

vB2r=((mA+e*mA)/(mA+mB))*vA1r;

vA2=vA2r-vB1;

vB2=vB2r-vB1;

disp(sprintf('Part 1: va2 = %.2fm/s; Part 2: vb2 = %.2fm/s', vA2, vB2))