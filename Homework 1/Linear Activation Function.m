%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function [out, dout] = linearActivation(in, a)
% Write MATLAB code below that computes the linear activation function.
% The input variable 'a' determines the  slope of the function.

out = a*in;
dout(1,[1:length(in)]) =out/in;

dout = diag(dout);

end