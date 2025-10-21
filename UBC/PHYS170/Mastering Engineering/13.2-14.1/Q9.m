clear all
close all

w=50; %weight of collar in lb

uns=2; %unstreched lenght in ft

k=50; %spring constant in lb/ft

zstart=6; %z starting position in ft

xstart=3; %x starting position

ystart=2; %y starting position

xend=4; %x ending position

yend=3; %y ending position (sign doesn't matter)

%% BACKEND

SLstart=sqrt(zstart^2+ystart^2+xstart^2);

SEstart=(1/2)*k*(SLstart-uns)^2;

SLend=sqrt(xend^2+yend^2);

SEend=(1/2)*k*(SLend-uns)^2;

syms v

eq1=SEstart+(w*zstart)==SEend+((1/2)*(w/32.17)*(v)^2);

final=solve(eq1);

disp(sprintf('vb = %.1fft/s',vpa(final(2,1))))

