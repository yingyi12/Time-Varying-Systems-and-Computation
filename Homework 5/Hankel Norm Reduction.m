%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function [Obs, Con] = factorizeHankel(H, epsilon)
     singular_values_red = [];
     K = size(H,2);
   
     [U,S,V] = svd(H);
     r = min(size(S));
     singular_values(1:r) = diag(S(1:r,1:r));
     Obs = U * sqrt(S);
     Con = sqrt(S) * V';
     r = sum(singular_values(:) > 0);
     r_red = sum(singular_values(:) > epsilon);
     Obs_red = Obs(:,1:r_red);
     Con_red = Con(1:r_red,:);
     singular_values_red(1:r_red) = singular_values(1:r_red);
     
     Obs = Obs_red;
     Con   = Con_red;
end
