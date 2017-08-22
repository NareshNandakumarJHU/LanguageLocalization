function [Ht, Ct] = runDCCtwovector(vec1,vec2)

dat = horzcat(vec1,vec2);

%If using DCC_X, CORRELATION MATRIX IS SECOND OUTPUT!
[Ht,Ct] = DCC_X(dat,0,1);
% [Ct,Ht] = DCCsimple(dat);

end
