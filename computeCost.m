function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
temp = 0;
for i = 1:m
    x_i = X(i,:).';
    theta_transpose = theta.';
    hypothesis_func = theta_transpose * x_i;
    y_target_val = y(i, :);
    temp = temp + (hypothesis_func - y_target_val).^2;
J = (1./(2*m))*temp;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
