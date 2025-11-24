function [X,label] = get_ook()
%GET_OOK Initialization of On-Off-Keying (OOK) constellation. Outputs the
%points and labels of an OOK constellation with unit average power.
%
% Outputs:
%   X:      Vector of dimension 1xM containing the M symbols of the OOK
%           constellation
%   label:  Matrix of size Mxm containing the binary labels of the OOK
%           symbols where m=log2(M)

X = zeros(1,2);
label = zeros(2,1);

X = [0,1]; %unscaled constellationd and label vectors
label = [0; 1];
ap = sum(X.^2); %average power
sf = sqrt(1/ap); %scaling factor
X = X*sf;
end

