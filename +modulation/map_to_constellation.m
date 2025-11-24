function [seq_out] = map_to_constellation(seq_in,X,label)
%MAP_TO_CONSTELLATION This function maps a binary input sequence to a
%sequence of symbols from a given constellation using a specified label.
%
% Inputs: 
%   seq_in: binary input sequence of length n given as a 1xn vector of type
%           uint8.
%   X:      vector of size 1xM containing the M-symbols of the given
%           constellation.
%   label:  matrix of size Mxm containing the binary labels of the M
%           symbols. Note that the input length n is always defined as a
%           multiple of m
%
% Outputs:
%   seq_out: vector of size 1x(n/m) containing the output sequence

%X = [ -3 , -1, 1 , 3 ];
%label= [ 0 , 0 ; 0 , 1 ; 1 , 1 ; 1 , 0 ];
%seq_in = uint8( [ 1 , 1 , 0 , 1 , 0 , 0 , 1 , 1 , 1 , 0 ] ) ;


seq_out = zeros(1,length(seq_in)/size(label,2));


 n = length(seq_in)
[M, m] = size(label)
for i=0:(n/m)-1
    for j=1:M
        if(seq_in(i*m+1:((i*m)+m)) == label(j,:))
            seq_out(i+1) = X(j);
        end
    end


end

