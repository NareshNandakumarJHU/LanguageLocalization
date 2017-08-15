function fullbraincorrelation = voxel_voxelDCC(rsfile,grayfile,GLMfile)

rs = spm_vol(rsfile);
[rs, XYZ] = spm_read_vols(rs); %img is a 4D volume matrix

X = size(rs,1);
Y = size(rs,2);
Z = size(rs,3);
T = size(rs,4);

GLM = spm_vol(GLMfile); %Using task based to define Broca's (high intensity)
[GLM] = spm_read_vols(GLM);

a = size(GLM,1);
b = size(GLM,2);
c = size(GLM,3);
count = 1;

for x = 1:a
    for y = 1:b
        for z = 1:c
            if GLM(x,y,z) ~= 0
                vectorvalues(count) = GLM(x,y,z);
                count = count+1;
            end
        end
    end
end

threshNumber = prctile(vectorvalues, 95);

%do gray mask here
[gray] = spm_vol(grayfile);
[gray] = spm_read_vols(gray);

gray = normalizeGray(gray);
newrs = elementwise4D(rs,gray);%problem here, numbers in newrs are too big

[thresh,numberOfNonZeros] = matrixThreshold(GLM,threshNumber);


newmatrix = elementwise4D(rs,thresh); %intensity values of seed in resting state, all else 0
SeedTimeCourse = avgTimeCourse(newmatrix,numberOfNonZeros);%gives back normalized data
CorrelationMatrix = zeros(X,Y,Z,T);

tic
CorrelationMatrix = makeBrainCorrelationMatrix(X,Y,Z,newrs,SeedTimeCourse,CorrelationMatrix);
toc


fullbraincorrelation = make_nii(CorrelationMatrix);
end