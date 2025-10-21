
syms w

f=@(t,u) [u(2); cos(w*t)-0.2*u(2)]

new1 = subs(f,w,0.5)