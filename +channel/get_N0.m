function [N0] = get_N0(snr_type, snr_dB, M, X, coderate)

%snr_type='esn0'
%snr_dB= 10
%M=4
%X=[1, 1i, -1, -1i];
%coderate=0.75

N0 = 0;

snr = 10^(snr_dB / 10);
es = mean(abs(X).^2)
eb = es/log2(M)


if(strcmp(snr_type, 'ebn0'))
    N0 = eb / (coderate * snr);
else if(strcmp(snr_type, 'esn0'))
        N0 = es / snr;
else if(strcmp(snr_type, 'snr'))
        N0 = 1 / snr;
else
    display('Invalid SNR type.\n');
end
end
end


