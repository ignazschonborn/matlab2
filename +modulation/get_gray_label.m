function [label] = get_gray_label(m)
%GET_GRAY_LABEL This function generates a binary Gray code of length m.
%
% Input:
%   m: length of the binary codeword
%
% Output
%   label: a matrix of size Mxm containing all M codewords of a binary Gray
%   code such that two consecutive rows differ in exactly one position
%m=4

M=2^m
label = zeros(M,m);

for i = 1:m
    for j = 1:M/(2^(i+1))
        for k = 1:2^i
            label(2^(i-1)+k+(j-1)*(2^(i+1)), m-i+1 ) = 1;
        end
    end
end
label(((M/2)+1):M,1)=1

end

