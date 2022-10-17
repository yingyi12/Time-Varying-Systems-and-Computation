%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [A_h, b_h] = ql_householder(A, b)

[m,n]=size(A);
for j=n:-1:1 
    
        
    
    
  
    v= householder_v(A(1:m,j),m);
    
    
   
    A(1:m,1:j) = apply_householder_matrix(v,A(1:m,1:j));
     
    b(1:m) = apply_householder(v,b(1:m));
    m=m-1
   
    

    




end

A_h=A;
b_h=b;

end
