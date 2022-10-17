%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function H = extract_hankel(T)



[m,n] = size(T);

for i = 1:1:n-1
        H{i} = T(i+1:end,1:i);
        H{i}=flip(H{i},2);
end



end


