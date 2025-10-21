wa=100; %weight of block B in POUNDS

wb=50; %weight of block B in POUNDS

uk=0.4; %coefficient of static friction

vi=8; %initial velcoity of block in ft/s

a=-1*((wa*0.6)-(wa*0.8*uk)-wb)/((wa+wb)/32.17)

sprintf('Part 1: a=%.2f ft/s^2', a)

syms d;

eq1 = 0==vi^2+2*-a*d;

final2=solve(eq1, d);

vpa(final2);

sprintf('Part 2: a=%.2f ft', final2)