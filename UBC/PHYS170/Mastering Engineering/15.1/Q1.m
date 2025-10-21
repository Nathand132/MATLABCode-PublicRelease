clear all
close all

m=1.8; %mass in megagrams (Mg)


%% Backend

impulse=9*0.5*30*1000;

mkg=m*1000;

disp(sprintf('vmax = %.1fm/s',impulse/mkg))

