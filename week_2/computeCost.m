% compute cost function for checking how well our gradient descent performs
function J = computeCost(X, y, theta)

m = length(y);
J = 0;
predictions = X * theta;
error = predictions - y; 

% don't need to use sum(), because matrix multiplication already can do this for us
% (error' * error) operation neatly cancels out extra dimensions in order to get desirable scalar
J = 1 / (2 * m) * (error' * error);

end
