function [dW_cells, db_cells] = backwardPass(x, dC, a_cells, z_cells, W_cells, f_cells)
 
for i = length(W_cells):-1:1   
    if i == length(W_cells)
        [f_cells{i},df_cells{i}] = linearActivation(z_cells{i},1);
        s_cells{i}= dC * df_cells{i};
    else
        [f_cells{i},df_cells{i}] = sigmoidActivation(z_cells{i});
        s_cells{i} = (s_cells{i+1}*W_cells{i+1}) * df_cells{i};
    end    
end

for i = 1:length(W_cells)  
    db_cells{i} = s_cells{i};
    if i == 1
        dW_cells{i} = x * s_cells{i};
    else
        dW_cells{i} = a_cells{i-1} * s_cells{i};
    end    
end
