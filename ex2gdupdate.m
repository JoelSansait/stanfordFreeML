function [ u ] = ex2gdupdate( inputx,outputy,alpha,n )
% This version is written for octave
% When testing in cli the answer MUST be 'result'

  [i , j] = size(inputx);
  u = zeros(1,j); % column vector 

  for q=1:n
  errSum = (inputx*u' - outputy).*inputx; 
  u = u - (alpha/i*sum(errSum,1));
  end
  
  


        
        
        
        
        
        
        



