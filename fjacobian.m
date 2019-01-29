function dfdx = fjacobian(f, x0, dx)
% Function to Calculate Numerical Jacobian Using First-Order Finite
% Difference Approximation 

%   Uses finite differences to compute partial derivative of function f
%   evaluated at vector x0. Optional argument dx specifies finite difference
%   step. Note that argument f should typically be entered as a
%   function handle, e.g. @f.

if nargin < 3 || isempty(dx)
    dx = 1e-6;
end

f0 = f(x0); % evaluate function handle at x0 
df = nan(length(f0), length(x0)); % initialize row vector for gradient 
for i = 1:length(x0)
    xperturbed = x0;
    xperturbed(i) = xperturbed(i) + dx;
    df(:,i) = f(xperturbed) - f0;
end
dfdx = df / dx;

end 