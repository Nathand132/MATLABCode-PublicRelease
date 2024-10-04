%% Part 1, computing steady state

disp('A16 Steady State Vector Calculated With P^k')

initialdistro=[0.3;0.5;0.2];

initialdistro=initialdistro./norm(initialdistro,1);

% Probabilities of each of the cases. Row 1 is probability that a car goes
% to airport; Row 2 is probability that a car goes to train; Row 3 is
% probability that a car goes to city centre

P=[0.8 0.3 0.3;
   0.1 0.6 0.1;
   0.1 0.1 0.6];

Airport=[];
Train=[];
City=[];

Airport=[Airport initialdistro(1)];
Train=[Train initialdistro(2)];
City=[City initialdistro(3)];
for i=1:500
    finaldistro=(P^i)*initialdistro; % Finding the i-th state vector is computed 
    if (finaldistro-P*finaldistro)<1e-15
        break;
    end
Airport=[Airport finaldistro(1)];
Train=[Train finaldistro(2)];
City=[City finaldistro(3)];
end

i
steady_state_vector_probability = finaldistro

disp('Diagonalization of A16')

[V D] = eig(P) % Finding E-values and E-vectors to show that algebraic = geometric multiplicity

Eigenvectors1 = P-eye(3);
Eigenvectors2 = P-(1/2).*eye(3);
rref(Eigenvectors1); % To find E-Vectors (in a form that isn't disgusting decimals like matlab likes to give)
rref(Eigenvectors2);

diagcheck = V*D*inv(V) % Confirm that T = VDV^-1


%% Part 2, where we recalculate the steady state with VDV^-1

disp('A16 Steady State Vector Calculated With Diagonalization')

Residence=[];
Library=[];
Athletic=[];

Residence=[Residence initialdistro(1)];
Library=[Library initialdistro(2)];
Athletic=[Athletic initialdistro(3)];
for i=1:500
    finaldistro=(V*(D^i)*inv(V))*initialdistro; % Finding the i-th state vector is computed 
    if (finaldistro-P*finaldistro)<1e-15
        break;
    end
Residence=[Residence finaldistro(1)];
Library=[Library finaldistro(2)];
Athletic=[Athletic finaldistro(3)];
end

i
steady_state_vector_probability = finaldistro


%% Part 3 when there is a new question (B15)

disp('B15 Steady State Vector Calculated With P^k')

% Random vector denoting distribution of cars at each location
initialdistro=[200;200;200];

initialdistro=initialdistro./norm(initialdistro,1);

% Probabilities of each of the cases. Row 1 is probability that a bike goes
% to residence; Row 2 is probability that a bike goes to library; Row 3 is
% probability that a bike goes to athletic centre

P=[0.8 0.2 0.3;
   0.1 0.7 0.2;
   0.1 0.1 0.5];

Residence=[];
Library=[];
Athletic=[];

Residence=[Residence initialdistro(1)];
Library=[Library initialdistro(2)];
Athletic=[Athletic initialdistro(3)];
for i=1:500
    finaldistro=(P^i)*initialdistro; % Finding the i-th state vector is computed 
    if (finaldistro-P*finaldistro)<1e-15
        break;
    end
Residence=[Residence finaldistro(1)];
Library=[Library finaldistro(2)];
Athletic=[Athletic finaldistro(3)];
end

steady_state_vector_probability = finaldistro

disp('Diagonalization of B15')

[V D] = eig(P)

Eigenvectors1 = P-eye(3);
Eigenvectors2 = P-(0.6).*eye(3);
Eigenvectors3 = P-(0.4).*eye(3);
rref(Eigenvectors1); % To find E-vectors manually
rref(Eigenvectors2);
rref(Eigenvectors3);

diagcheck = V*D*inv(V)


%% Part 3, but redoing the calculations with diaganalization

disp('B15 Steady State Vector Calculated With Diagonalization')

Residence=[];
Library=[];
Athletic=[];

Residence=[Residence initialdistro(1)];
Library=[Library initialdistro(2)];
Athletic=[Athletic initialdistro(3)];
for i=1:500
    finaldistro=(V*(D^i)*inv(V))*initialdistro; % Finding the i-th state vector is computed 
    if (finaldistro-P*finaldistro)<1e-15
        break;
    end
Residence=[Residence finaldistro(1)];
Library=[Library finaldistro(2)];
Athletic=[Athletic finaldistro(3)];
end

steady_state_vector_probability = finaldistro

hold on 
plot(Residence,'g+-')
plot(Library,'ro--')
plot(Athletic,'b*')
legend('Residence','Library','Athletic center')
