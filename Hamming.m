function [w] = Hamming(N)
w = zeros(1,N);
n = 0:(N-1) ;
 for i = 1:length(n)
     w(i) = 0.54 - 0.46*cos(2*pi*n(i)/(N-1)) ;
 end
end