%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function [L, Q] = lq_givens(A)
    Q = { eye(size(A,2)) }; % Initial value for Q factor
    L = { A };              % Initial value for L factor
    % Your code here:
   
p = 2;
[m,n] = size(A);
L{1} = A;
Q{1} = eye(n)';
L1 = A';
Q1 = eye(n);
a = 1;
while a<= m
  b=n;
   while b > a
      T = eye(size(L1,1));
      T([b-1,b],[b-1,b]) = [cos(-atan(L1(b,a)/L1(b-1,a))),-sin(-atan(L1(b,a)/L1(b-1,a)));sin(-atan(L1(b,a)/L1(b-1,a))),cos(-atan(L1(b,a)/L1(b-1,a)))];
      L1 = T*L1;
      Q1 = Q1*T';
      L{p} = L1';
      Q{p} = Q1';
      p = p+1;
      b =b-1;
    end
  a = a+1;
end
end

