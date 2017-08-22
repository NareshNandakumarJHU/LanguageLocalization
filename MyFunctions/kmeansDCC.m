function [kmeansbraincorrelation, seedmatrix] = kmeansDCC(rsfile,GLMfile,percentile,clusternumber

%define rs and GLM matrices
%and corresponding sizes
rs = spm_vol(rsfile);
rs = spm_read_vols(rs);

x = size(rs,1);
y = size(rs,2);
z = size(rs,3);
d = size(rs,4);

GLM = spm_vol(GLMfile); 
[GLM] = spm_read_vols(GLM);
a = size(GLM,1);
b = size(GLM,2);
c = size(GLM,3);
count = 1;

%seed the GLM matrix for langauge areas
%threshold using prctile

for X = 1:a
    for Y = 1:b
        for Z = 1:c
            if GLM(X,Y,Z) ~= 0
                vectorvalues(count) = GLM(X,Y,Z);
                count = count+1;
            end
        end
    end
end

%seedmatrix is just 1's and 0's used for visualization purposes

seedmatrix = makeSeedImage(GLM,vectorvalues, percentile);
threshNumber = prctile(vectorvalues, percentile);
[thresh,numberOfNonZeros] = matrixThreshold(GLM,threshNumber);
newmatrix = elementwise4D(rs,thresh);
SeedTimeCourse = avgTimeCourse(newmatrix,numberOfNonZeros);

fMRI = reshape(rs, [], d);
[idx, centroid] = kmeans(fMRI,clusternumber);
discreteClusteredMatrix = reshape(idx,x,y,z);

[segmented, discreteClusteredMatrix] = segmentedByClusters(discreteClusteredMatrix,centroid);

correlationMatrix = zeros(x,y,z,d);





