subj4rs = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_04/rs/scrubbeds6fnfwvrars_fMRI.nii');
fourdmatrix = spm_read_vols(subj4rs);

x = size(fourdmatrix,1);
y = size(fourdmatrix,2);
z = size(fourdmatrix,3);
d = size(fourdmatrix,4);


fMRI = reshape(fourdmatrix, [], d);

%to decompose into a x*y*z X d matrix for kmeans, use above command
%this stacks row by row, so fMRI(1,:) = (x,y,z) = (1,1,1), fMRI(2,;) =
%(x,y,z) = (2,1,1) ... fMRI(x,:) = (x,y,z) = (x,1,1), fMRI(x+1,:) = (x,y,z)
% = (1,2,1) etc.

final = reshape(fMRI, x, y, z, d);

%use above command to get original fmri data back.