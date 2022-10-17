function [out, dout] = sigmoidActivation(in)
% Write MATLAB code below that computes the sigmoid activation function.

out = 1 ./ (1 + exp(-in));
dout = diag(out.*(1-out))

end