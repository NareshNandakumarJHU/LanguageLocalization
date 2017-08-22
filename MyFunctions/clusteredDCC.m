function KDCC = clusteredDCC(discreteClusteredMatrix,img,x,y,z,d,clusternumber,comparisonseed,CorrelationMatrix)

%img is segmented by the cluster number given
%as the first dimension of centroid matrix from main 
%script. discreteClusteredMatrix is a (x,y,z,T) matrix of
%integers from 1 to clusters (in first case, 17) showing which
%position gets what value. steps

%1. Use discrete clustered in correspondance with img to find
%the 17 clusters. 
%2. Find an average time course for each of 17 clusters
%3. run DCC with those time courses and the comparison seed
%4. fill in correlation matrix with corresponding coordinates taken
%from discrete clustered matrix

values = zeros(clusternumber,d);

for a = 1:clusternumber
    for T = 1:d
        for X = 1:x
            for Y = 1:y
                for Z = 1:z
                    if discreteClusteredMatrix(X,Y,Z,T) == a
                        values(a,T) = img(X,Y,Z,T);
                    end
                end
            end
        end
    end
end

for index = 1:clusternumber
    comparisonvector = values(index,:);
    zscoredComparisonVector = zscore(comparisonvector);
    transposedComparisonVector = transpose(zscoredComparisonVector);
    if sum(sum(transposedComparisionVector ~=0)) %error in DCC if one of the two inputs is a zero vector
                Ct = runDCCtwovector(comparisonseed,comparisonVector);
                Ctsimple = getCorrelationFromTwoVectorDCC(Ct);
                
    



