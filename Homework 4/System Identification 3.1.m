%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function D = compute_D_from_T(T)
    D = {};
    % Your code here:
    m=diag(T);
    k=length(m);
for i=1:1:k
   D{i}=m(i);
end
end