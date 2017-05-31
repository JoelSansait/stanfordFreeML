x_data = load('ex2x.dat');
y_data = load('ex2y.dat');
alpha = 0.07;

figure % open a new figure window
plot(x_data, y_data, 'o');
ylabel('Height in meters')
xlabel('Age in years')

m = length(x_data); % store the number of training examples
x = [ones(m, 1), x_data]; % Add a column of ones to x, but why?
%We add the ones because the first term in a hypoth is
% a constant, i.e. 1 + theta1x1 + theta2x2...

y = y_data;
