function [ delta ] = ex2gdupdate( inputx,outputy,alpha,n )

% 'inputx' is mx2 vector of inputs, first column is ones
% 'theta' is vectors of coeffs, with each column holding identical
%   values
% 'outputy' is vector of output
% 'n' is the number of iterations

% Takeaway lessons
%   j refers to features
%   if you have two features (x1,x2), then you have thetas (vector const)
%   x1 and x2 are vectors themselves!
%   the "i" refers to individual elements in the vectors

%   ***

[i , j] = size(inputx);
theta = zeros(i,j);
h = zeros(i,1);

for q=1:n
    for r=1:j
        h(r) = sum(theta(r,:).*inputx(r,:));
    end
    
    delta = (alpha/i) .* sum(h-outputy).*inputx';
    
    % this is better, but i need to figure out how to output as 2 vectors
end

