function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    temp0 = 0;
    temp1 = 0;
    delta = zeros(2,1);
    for i = 1:m
        hypothesis = (theta.')*(X(i,:).');
        feature_1 = X(i,1);
        feature_2 = X(i,2);
        temp0 = temp0 +((hypothesis - y(i,:))*feature_1);
        temp1 = temp1 + ((hypothesis - y(i,:))*feature_2 );
    end
    delta(1) = (1./m)*temp0;
    delta(2) = (1./m)*temp1;
    delta = delta*alpha;
    theta = theta - delta;
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

    

end
