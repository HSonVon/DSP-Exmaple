function [w] = Blackman(N)
w = zeros(1,N);
n = 0:(N-1) ;
 for i = 1:length(n)
     w(i) = 0.42 - 0.5*cos(2*pi*n(i)/(N-1)) + 0.08*cos(4*i*n(i)/(N-1)) ;
 end
end