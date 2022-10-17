%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%
function A = compute_A_from_Obs(Obs_k, Obs_kPlus1)
  M=inv(Obs_kPlus1'*Obs_kPlus1)*Obs_kPlus1';
  N =Obs_k(2:end,:);
  A= M*N;
    
end