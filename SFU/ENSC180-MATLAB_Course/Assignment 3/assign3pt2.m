
%{
t1= (10+20+t2+t3)/4
t2= (20+40+t4+t1)/4
t3= (30+10+t1+t4)/4
t4= (40+30+t2+t3)/4

martix = 

(1/4) [-4 1 1 0 | -30
       1 -4 0 1 | -60
       1 0 -4 1 | -40
       0 1 1 -4 | -70]

%}

temp_coefficient = [-4, 1, 1, 0;
    1, -4, 0, 1;
    1, 0, -4, 1;
    0, 1, 1, -4];

bound_temp_vector = [-30;-60;-40;-70];


temps_inverse = inv(temp_coefficient)*bound_temp_vector



temps_leftdiv = temp_coefficient\bound_temp_vector


A = (1/4).*[-4 1 1 0 -30;
       1 -4 0 1 -60;
       1 0 -4 1 -40;
       0 1 1 -4 -70]; % rref of the coefficient matrix to verify if the solution using the other two methods are correct

rref(A)
