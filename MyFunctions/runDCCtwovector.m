function [Ct, Ht] = runDCCtwovector(vec1,vec2)

dat = horzcat(vec1,vec2);
[Ct,Ht] = DCCsimple(dat);
end
