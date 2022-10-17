H = {[0.8; 0.2; 0.05; 0.013; 0.003],
    [0.6000    0.2000; 0.2400    0.0500; 0.0960    0.0130; 0.0380    0.0030],
    [0.5000    0.2400    0.0500; 0.2500    0.0960    0.0130; 0.1250    0.0380    0.0030],
    [0.4000    0.2500    0.0960    0.0130; 0.2400    0.1250    0.0380    0.0030],
    [0.3000    0.2400    0.1250    0.0380    0.0030]
   };
H = H';

%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%


  [U,S,V]=svd(H{3});
%balanced realization

O_balanced  = U*sqrt(S);
C_balanced =  sqrt(S)*V';


%input normal realization

O_input = U*S;
C_input = V';


%output normal realization

O_output = U
C_output = S*V';

