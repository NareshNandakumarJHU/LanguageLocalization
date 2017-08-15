rs = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_01/rs/scrubbeds6fnfwvrars_fMRI.nii');
[rs, XYZ] = spm_read_vols(rs); %img is a 4D volume matrix

X = size(rs,1);
Y = size(rs,2);
Z = size(rs,3);
T = size(rs,4);

[A] = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_01/GLM/s6wraSC_1/spmT_0001.nii');
[A] = spm_read_vols(A);

a = size(A,1);
b = size(A,2);
c = size(A,3);
count = 1;

for x = 1:a
    for y = 1:b
        for z = 1:c
            if A(x,y,z) ~= 0
                vectorvalues(count) = A(x,y,z);
                count = count+1;
            end
        end
    end
end

threshNumber = prctile(vectorvalues, 95);

[gray] = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_01/wc1T1.nii');
[gray] = spm_read_vols(gray);


newrs = elementwise4D(rs,gray);

[thresh,numberOfNonZeros] = matrixThreshold(A,threshNumber);


newmatrix = elementwise4D(rs,thresh); %intensity values of seed in resting state, all else 0
SeedTimeCourse = avgTimeCourse(newmatrix,numberOfNonZeros);%gives back normalized data