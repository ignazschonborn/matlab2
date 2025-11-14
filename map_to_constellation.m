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
seq_out = zeros(1,length(seq_in)/size(label,2));


n = length(seq_in)
[M, m] = size(label)
for i:n
    for j:M
        if(seq_in[n, n+1, n+2] == label[j])
            seq_out[i] = label[j]

    



end

