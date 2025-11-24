function [seq_out] = awgn(seq_in, N0)

%seq_in = [ 1.3, -1.4j, -3.3, 2.1j, 3.5 ];
%N0 = 2

seq_out = zeros(size(seq_in));
if(seq_in == real(seq_in))
    seq_out = randn(size(seq_in))* sqrt(N0/2)
else
    seq_out = randn(size(seq_in))* sqrt(N0/2)*(1+j)
end



end
