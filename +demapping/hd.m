function [seq_out] = hd(seq_in,X,label)
%HD Summary of this function goes here
%   Detailed explanation goes here

%seq_in = [ 1.3, -1.4j, -3.3, 2.1j, 3.5 ];
%X = [ -3 , -1, 1 , 3 ];
%label= [ 0 , 0 ; 0 , 1 ; 1 , 1 ; 1 , 0 ];
%seq_in = [-1+ j, 1+j, -j, 1-j];
%X = [-1, 1];
%label = [0; 1]

seq_out = zeros(1,length(seq_in)*size(label,2));


n = length(seq_in);
[M, m] = size(label);


for i=0:n-1
    d = abs(X-seq_in(i+1))
    [~,idx] = min(d)
    seq_out(i*m+1:(i*m + m)) = label(idx,:);
    
    
seq_out=uint8(seq_out);

end
