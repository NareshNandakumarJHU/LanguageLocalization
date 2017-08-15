function wholebrain = makeBrainCorrelationMatrix(X,Y,Z,img,comparisonseed,CorrelationMatrix)

%wholebrain will be a 4-D matrix of the correlations betweeen the
%comparisonseed and the rest of the voxels from Xstart to Xstop. The rest
%of the values will be zero. This code was written to break up the amount
%of times that the code to make the whole brain correlation would have to
%run by the x variable. 

wholebrain = CorrelationMatrix;
for x = 1:X
    for y = 1:Y
        for z = 1:Z
           
            comparisonVector = findtimeseries(img,x,y,z);
            if sum(sum(comparisonVector ~=0)) %error in DCC if one of the two inputs is a zero vector
                Ct = runDCCtwovector(comparisonseed,comparisonVector);
                Ctsimple = getCorrelationFromTwoVectorDCC(Ct);
                wholebrain(x,y,z,:) = Ctsimple(1,:);
                
            end
        end
    end
end