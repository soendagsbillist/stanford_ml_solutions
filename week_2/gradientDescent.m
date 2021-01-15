% multivariate gradient descent that uses vector multiplication
% for better scalability and perfomance. 
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_inters)

m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  predictions = X * theta; % m*1 vector
  error = predictions - y; % Ibid.
  % transpose X to get the values for all features at once and by multiplication we get the free sum()
  % neatly packaged in a vector size(theta, 1)*1
  delta = (1/m) * (X' * error); 
  theta = theta - alpha * delta;

  J_history(iter) = computeCost(X, y, theta);

end
