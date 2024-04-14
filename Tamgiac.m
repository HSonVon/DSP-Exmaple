function [w] = Tamgiac(N)  
n = 0:(N-1) ;
w = zeros(1,length(n)) ;
    for i = 1:round((length(n)/2))
        w(i) = 2*n(i)/(N-1) ;
    end
    for i =round((length(n)/2+1)) : length(n)
        w(i) = 2 - 2*n(i)/(N-1) ;
    end

end