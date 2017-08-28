[tumorsubj1, coordinatestumorsubj1] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_01/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_01/wc1T1mni.nii',55,150,43,65,22,52,22,56);
[tumorsubj2, coordinatestumorsubj2] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_02/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_02/wc1T1.nii',40,100,30,44,52,72,51,74);
[tumorsubj4, coordinatestumorsubj4] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_04/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_04/wc1T1.nii',40,140,46,67,47,68,39,70);
[tumorsubj6, coordinatestumorsubj6] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_06/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_06/wc1T1.nii',50,140,59,70,58,70,45,57);
[tumorsubj7, coordinatestumorsubj7] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_07/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_07/wc1T1.nii',60,162,18,30,17,32,39,53);
[tumorsubj8, coordinatestumorsubj8] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_08/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_08/wc1T1.nii',60,155,60,75,68,85,30,45);
[tumorsubj9, coordinatestumorsubj9] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_09/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_09/wc1T1.nii',60,220,54,71,48,78,20,47);
[tumorsubj10, coordinatestumorsubj10] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_10/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_10/wc1T1.nii',90,200,55,73,62,83,48,68);
[tumorsubj11, coordinatestumorsubj11] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_11/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_11/wc1T1.nii',140,230,55,75,28,56,18,38);
[tumorsubj12, coordinatestumorsubj12] = manualTumorSegmentation('/home/naresh/myshare/Sair_rsfMRI/Subj_12/wss_T1.nii','/home/naresh/myshare/Sair_rsfMRI/Subj_12/wc1T1.nii',50,150,42,59,36,62,53,80);

rssubj1 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_01/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj1 = spm_read_vols(rssubj1);
rssubj2 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_02/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj2 = spm_read_vols(rssubj2);
rssubj4 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_04/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj4 = spm_read_vols(rssubj4);
rssubj6 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_06/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj6 = spm_read_vols(rssubj6);
rssubj7 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_07/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj7 = spm_read_vols(rssubj7);
rssubj8 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_08/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj8 = spm_read_vols(rssubj8);
rssubj9 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_09/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj9 = spm_read_vols(rssubj9);
rssubj10 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_10/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj10 = spm_read_vols(rssubj10);
rssubj11 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_11/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj11 = spm_read_vols(rssubj11);
rssubj12 = spm_vol('/home/naresh/myshare/Sair_rsfMRI/Subj_12/rs/scrubbeds6fnfwvrars_fMRI.nii');
rssubj12 = spm_read_vols(rssubj12);

t1 = size(rssubj1,4);
t2 = size(rssubj2,4);
t4 = size(rssubj4,4);
t6 = size(rssubj6,4);
t7 = size(rssubj7,4);
t8 = size(rssubj8,4);
t9 = size(rssubj9,4);
t10 = size(rssubj10,4);
t11 = size(rssubj11,4);
t12 = size(rssubj12,4);
% 
% norm1 = normalizeRs(rssubj1);
% norm2 = normalizeRs(rssubj2);
% norm4 = normalizeRs(rssubj4);
% norm6 = normalizeRs(rssubj6);
% norm7 = normalizeRs(rssubj7);
% norm8 = normalizeRs(rssubj8);
% norm9 = normalizeRs(rssubj9);
% norm10 = normalizeRs(rssubj10);
% norm11 = normalizeRs(rssubj11);
% norm12 = normalizeRs(rssubj12);
% 
% normalizedsubj1WithTumor = addTumorToTimeSeries(norm1,coordinatestumorsubj1);
% normalizedsubj2WithTumor = addTumorToTimeSeries(norm2,coordinatestumorsubj2);
% normalizedsubj4WithTumor = addTumorToTimeSeries(norm4,coordinatestumorsubj4);
% normalizedsubj6WithTumor = addTumorToTimeSeries(norm6,coordinatestumorsubj6);
% normalizedsubj7WithTumor = addTumorToTimeSeries(norm7,coordinatestumorsubj7);
% normalizedsubj8WithTumor = addTumorToTimeSeries(norm8,coordinatestumorsubj8);
% normalizedsubj9WithTumor = addTumorToTimeSeries(norm9,coordinatestumorsubj9);
% normalizedsubj10WithTumor = addTumorToTimeSeries(norm10,coordinatestumorsubj10);
% normalizedsubj11WithTumor = addTumorToTimeSeries(norm11,coordinatestumorsubj11);
% normalizedsubj12WithTumor = addTumorToTimeSeries(norm12,coordinatestumorsubj12);

beforeKmeans1 = simplifyKmeansTumor(rssubj1,coordinatestumorsubj1);
beforeKmeans2 = simplifyKmeansTumor(rssubj2,coordinatestumorsubj2);
beforeKmeans4 = simplifyKmeansTumor(rssubj4,coordinatestumorsubj4);
beforeKmeans6 = simplifyKmeansTumor(rssubj6,coordinatestumorsubj6);
beforeKmeans7 = simplifyKmeansTumor(rssubj7,coordinatestumorsubj7);
beforeKmeans8 = simplifyKmeansTumor(rssubj8,coordinatestumorsubj8);
beforeKmeans9 = simplifyKmeansTumor(rssubj9,coordinatestumorsubj9);
beforeKmeans10 = simplifyKmeansTumor(rssubj10,coordinatestumorsubj10);
beforeKmeans11 = simplifyKmeansTumor(rssubj11,coordinatestumorsubj11);
beforeKmeans12 = simplifyKmeansTumor(rssubj12,coordinatestumorsubj12);


concatenatedVector = [beforeKmeans1 beforeKmeans2 beforeKmeans4 beforeKmeans6 beforeKmeans7 beforeKmeans8 beforeKmeans9 beforeKmeans10 beforeKmeans11 beforeKmeans12];
[idx, C] = kmeans(concatenatedVector, 100);


centroid1 = C(:,1:t1);
centroid2 = C(:,t1+1:(t1+t2));
centroid4 = C(:,(t1+t2+1):(t1+t2+t4));
centroid6 = C(:,(t1+t2+t4+1):(t1+t2+t4+t6));
centroid7 = C(:,(t1+t2+t4+t6+1):(t1+t2+t4+t6+t7));
centroid8 = C(:,(t1+t2+t4+t6+t7+1):(t1+t2+t4+t6+t7+t8));
centroid9 = C(:,(t1+t2+t4+t6+t7+t8+1):(t1+t2+t4+t6+t7+t8+t9)); 
centroid10 = C(:,(t1+t2+t4+t6+t7+t8+t9+1):(t1+t2+t4+t6+t7+t8+t9+t10));
centroid11 = C(:,(t1+t2+t4+t6+t7+t8+t9+t10+1):(t1+t2+t4+t6+t7+t8+t9+t10+t11));
centroid12 = C(:,(t1+t2+t4+t6+t7+t8+t9+t10+t11+1):(t1+t2+t4+t6+t7+t8+t9+t10+t11+t12));

















