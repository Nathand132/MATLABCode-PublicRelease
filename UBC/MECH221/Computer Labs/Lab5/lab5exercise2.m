clear all
close all
clc

Rvalues=[1, 2, 4, 6, 8, 10, 12, 14, 16];
L=1;
C=1;

for i=1:length(Rvalues)
    R=Rvalues(i);
    amp= @(w) abs((R*L*C*(1i*w)^2)./(2*R*L*C*(1i*w)^2+L*(1i*w)+2*R))-1;
    A=fzero(amp,0.75);
    B=fzero(amp,1.25);
    sprintf('For R=%.0f, the interval of w where |H(jw)|=1 is:[%.3f %.3f]',R,A,B)
end

%{
As the R value increases, the range between w0 and w1 increases, meaning
w0 decreases while w1 increases, so the gap is getting larger. However, by
R=8 the change is very small.
%}