function [seq_out] = hard_repetition(seq_in,n,k)
%HARD_REPETITION Summary of this function goes here
%   Detailed explanation goes here
%seq_in=[1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,4]
%k=5
%n=4
seq_out = uint8(zeros(1,k));

for i = 0:k-1
    seq_out(i+1) = mode(seq_in(n*i+1:n*(i+1)))

end

