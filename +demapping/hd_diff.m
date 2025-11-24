function [seq_out] = hd_diff(seq_in,X,label)
%HD_DIFF Summary of this function goes here
%   Detailed explanation goes here

%seq_in = [ 1, -1 , 1, -1 ];
%[X,label] = modulation.get_psk(4);

disp('hd_diff')

seq_out = zeros(1,length(seq_in)*size(label,2));

n = length(seq_in);
[M, m] = size(label);
d=abs(X-seq_in(1))
[~,idx] = min(d)
seq_out(1:m) = label(idx,:);

for i=1:n-1
    d = abs(X-exp(j*(angle(seq_in(i+1))-angle(seq_in(i)))))
    [~,idx] = min(d)
    seq_out(i*m+1:(i*m + m)) = label(idx,:);
    
    
seq_out=uint8(seq_out);
seq_out

end


