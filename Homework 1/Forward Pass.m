function [a_cells, z_cells] = forwardPass(x, W_cells, b_cells, f_cells)

for i = 1:length(W_cells)
  z_cells{i} = W_cells{i}*x + b_cells{i};
  a_cells{i} = f_cells{i}(z_cells{i});
  x = a_cells{i};
end



end