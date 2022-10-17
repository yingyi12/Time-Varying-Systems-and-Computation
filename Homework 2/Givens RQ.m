%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function [R, Q] = rq_givens(A)
    Q = { eye(size(A,2)) }; % Initial value for Q factor
    R = { A };              % Initial value for R factor
    % Your code here:


    [m,n] = size(A);
     
     A = flipdim(flipdim(A',1),2);
     Q1 = eye(n);
     R1 = A;
     
     R{1} = flipdim(flipdim(R1',1),2);
     Q{1} = flipdim(flipdim(Q1',1),2);
     q = 2
     
     i=1
while i<=m
      j=n
       while j>i
    
        t = -atan(R1(j,i)/R1(j-1,i));
        [k,~]=size(R1);
        K = eye(k);
        K([j-1,j],[j-1,j]) = [cos(t), -sin(t); sin(t), cos(t)];
        
        R1 = K*R1;
        Q1 = Q1*K';
        
        R{q} = flipdim(flipdim(R1',1),2);
        Q{q} = flipdim(flipdim(Q1',1),2);
        q = q+1;
        j=j-1;
        
      
       end
     i=i+1;
end

end
