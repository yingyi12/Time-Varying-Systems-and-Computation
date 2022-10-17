function [r] = apply_householder(v, u)
 
  w = v/ norm(v,2);
  
  r = u- 2*w*(w'*u);
end