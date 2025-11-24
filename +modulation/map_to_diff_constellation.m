function [seq_out] = map_to_diff_constellation(seq_in,X,label)
%MAP_TO_DIFF_CONSTELLATION This function maps a binary input sequence to a
%sequence of symbols from a given constellation using a specified label in
%a differential manner.
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
%[X,label] = modulation.get_psk(4);
%seq_in = [0, 1, 0, 0, 1, 1, 1, 0];

disp('map_to_diff_constellation')

n = length(seq_in);
m = size(label,2);

seq_out = zeros(1,n/m);

[M, m] = size(label);

for i=0:(n/m)-1
    for k=1:M
        if(seq_in(i*m+1:((i*m)+m)) == label(k,:))
            if(i>0)
                seq_out(i+1) = exp(j*(angle(seq_out(i))+angle(X(k))));
            else 
                seq_out(i+1) = X(k);
            end
            end
        end
    end

fprintf('%d\n', seq_out);

end

