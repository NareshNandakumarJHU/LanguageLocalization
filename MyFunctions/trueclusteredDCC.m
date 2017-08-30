function KDCC = trueclusteredDCC(discreteclusteredmatrix,centroidmatrix,comparisonseed)

%comparisonSeed comes in a column vector of zero mean 1 standard

clusternumber = size(centroidmatrix,1);
time = size(centroidmatrix,2);
KDCC = zeros(91,109,91,time);
centroidmatrixWithoutTumor = centroidmatrix;

for a = 1:clusternumber
    for b = 1:time
        if centroidmatrix(a,b) == 1000
            centroidmatrixWithoutTumor(a,b) = 0;
        end
    end
end

for a = 1:clusternumber
    rowvector = centroidmatrixWithoutTumor(a,:);
    columnvector = transpose(rowvector);
    ZscoreColumnvector = zscore(columnvector);
    count = 0;
    for b = 1:time
        if ZscoreColumnvector(time) ~= 0
            count = count+1;
        end
    end
    if count ~= 0
        [Ct,~] = runDCCtwovector(comparisonseed,ZscoreColumnvector);
        Ctsimple = getCorrelationFromTwoVectorDCC(Ct);
    end
    for i = 1:91
        for j = 1:109
            for k = 1:91
                if discreteclusteredmatrix(i,j,k) == a
                    KDCC(i,j,k,:) = Ctsimple(1,:);
                end
            end
        end
    end
end
end

    
    
    
    
    

        