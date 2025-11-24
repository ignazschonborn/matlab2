function seq_out = repetition(seq_in, n, k)
%REPETITION Summary of this function goes here
%   Detailed explanation goes here
seq_in = [1, 2]
n = 6
k=2

seq_out = uint8(zeros(1, n));

seq_out=seq_in
for i= 0:k-1
    seq_out(i*n/k+1:(i+1)*n/k)=seq_in(i+1);

end

