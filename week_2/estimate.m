% in order to estimate for the given value we need to normalize them too
% in case with this exercise we are trying to predict the cost of house
% that is 1650ft has and has 3 br. Hence input = [1 1650 3]

input_norm = [1 1650 3];
input_norm(1, 2) = input_norm(1, 2) - (mu(1, 1) / sigma(1, 1);
input_norm(1, 3) = input_norm(1, 3) - (mu(1, 2) / sigma(1, 2);

% with normalized input values we can predict the price
price = input_norm * theta;
