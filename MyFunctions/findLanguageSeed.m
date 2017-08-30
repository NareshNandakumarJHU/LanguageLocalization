function [languageSeed, seedmatrix] = findLanguageSeed(GLMfile,rs,percentile)


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

%seedmatrix is just 1's and 0's used for visualization purposes. Then find
%the seed time course to correlate with each region

seedmatrix = makeSeedImage(GLM,vectorvalues, percentile);
threshNumber = prctile(vectorvalues, percentile);
[thresh,numberOfNonZeros] = matrixThreshold(GLM,threshNumber);
newmatrix = elementwise4D(rs,thresh);
languageSeed = avgTimeCourse(newmatrix,numberOfNonZeros);
end