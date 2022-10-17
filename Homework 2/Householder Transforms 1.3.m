function [R] = apply_householder_matrix(v, U)

[~,n] = size(U);
for k=1:n
    temp_U=U(:,k);
    U_k = apply_householder(v, temp_U)
    R(:,k)=U_k;




end