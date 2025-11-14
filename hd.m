function [seq_out] = hd(seq_in,X,label)
%HD Summary of this function goes here
%   Detailed explanation goes here

seq_out = zeros(1,length(seq_in)*size(label,2));

n = length(seq_in)
[M, m] = size(label)

A = abs(seq_in - X')
d = min(matriz, [], 2)
for i:n
    for j:M
        if X[i] = d[j] 
            seq_out(n*m:n*m + m - 1) = label(j)
        

end

arg min
x∈X |y − x|.