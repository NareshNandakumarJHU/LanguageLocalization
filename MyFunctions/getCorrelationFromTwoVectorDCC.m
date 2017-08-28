function correlationOnly = getCorrelationFromTwoVectorDCC(Ct)

%output is a 1xT vector of correlations

a = size(Ct,3);

correlationOnly = zeros(1,a);
for x = 1:a
    correlationOnly(1,x) = Ct(1,2,x);
end
