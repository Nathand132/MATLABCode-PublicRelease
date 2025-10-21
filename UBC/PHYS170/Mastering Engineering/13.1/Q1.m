close all
clear all

v0=7.5; %initial velocity of block

us=0.2; %coefficient friction

%Note that mass of block is not needed

final=v0/(9.8*us);

sprintf('%.2f seconds', final)
