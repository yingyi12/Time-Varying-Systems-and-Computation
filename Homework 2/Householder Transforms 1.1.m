function [v] = householder_v(a,i)
if nargin==1
    i=1;
end
n = length(a);
m = zeros(n,1);
m(i) = 1;

if a(1)>=0
    S=1;
else
    S=-1;
end

    
 v = a + S*norm(a,2).*m;
end

