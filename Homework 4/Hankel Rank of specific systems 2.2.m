%**************** Team declaration ****************%
%* Teamwork: [y/n] y

%**************************************************%

function r_i = Tinv_rank(T_band)
T_band=inv(T_band);

[m,n] = size(T_band);

for i = 1:1:n-1
        H{i} = T_band(i+1:end,1:i);
        H{i}=flip(H{i},2);
        r_i(i)=rank(H{i});
end
        r_i=r_i';

    






end