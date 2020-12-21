%Personal practice
data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);

%Check the size of X and y and their dimension
size(X)
size(y)

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];

% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

%%My code below
Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta

%Set the hypothesis fuction (Logistic)
h = sigmoid(X*theta);

%Set the cost function
J = (sum(-y'*log(h) - (1-y)*log(1-h)))*1/m ;
grad = (sum((h-y)*X'))*1/m

%=========================================================
end

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);





