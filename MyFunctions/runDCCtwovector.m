function [Ct, Ht] = runDCCtwovector(vec1,vec2)

dat = horzcat(vec1,vec2);
[Ct,Ht] = DCC_X(dat,0,1);
% [Ct,Ht] = DCCsimple(dat);
end
