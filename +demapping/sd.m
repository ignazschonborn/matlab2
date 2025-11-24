function [seq_out] = sd(seq_in,X,label,N0)
%SD Summary of this function goes here
%   Detailed explanation goes here
%seq_in=

seq_out = zeros(1,length(seq_in)*size(label,2));
nb=size(label, 2)

l=length(seq_in);

for i = 1:l
    p=zeros(1,length(X));
    for j = 1:length(X)
        d=abs(seq_in(i)-X(j))^2;
        p=exp(-d/N0);
    end
    p=p/sum(p)
    for j = 1:nb
        z=find(label(:,j)==0)
        o=find(label(:,j)==1)
        p0=sum(p(z))
        p1=sum(p(o))
        epsilon = 10^-9;
        seq_out(1,(i-1)*nb+j)= log((p1+epsilon)/(p0+epsilon));
    end
end

end

