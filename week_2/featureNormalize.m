% take the X features and scale them using mean normalization method
function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X; % m*n matrix of X values for the given features
mu = zeros(1, size(X, 2)); % 1*n matrix of mean values for each feature
sigma = zeros(1, size(X, 2)); % 1*n matrix of standard deviation values for each feature

mu = mean(X);
sigma = std(X);
X_norm = (X - mu) ./ sigma;

end
