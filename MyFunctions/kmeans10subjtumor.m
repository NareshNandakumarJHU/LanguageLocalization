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

discreteClusteredMatrix = reshape(idx,91,109,91);

[segmented1, discreteClusteredMatrixWithTime1] = segmentedByClusters(discreteClusteredMatrix,centroid1);
[segmented2, discreteClusteredMatrixWithTime2] = segmentedByClusters(discreteClusteredMatrix,centroid2);
[segmented4, discreteClusteredMatrixWithTime4] = segmentedByClusters(discreteClusteredMatrix,centroid4);
[segmented6, discreteClusteredMatrixWithTime6] = segmentedByClusters(discreteClusteredMatrix,centroid6);
[segmented7, discreteClusteredMatrixWithTime7] = segmentedByClusters(discreteClusteredMatrix,centroid7);
[segmented8, discreteClusteredMatrixWithTime8] = segmentedByClusters(discreteClusteredMatrix,centroid8);
[segmented9, discreteClusteredMatrixWithTime9] = segmentedByClusters(discreteClusteredMatrix,centroid9);
[segmented10, discreteClusteredMatrixWithTime10] = segmentedByClusters(discreteClusteredMatrix,centroid10);
[segmented11, discreteClusteredMatrixWithTime11] = segmentedByClusters(discreteClusteredMatrix,centroid11);
[segmented12, discreteClusteredMatrixWithTime12] = segmentedByClusters(discreteClusteredMatrix,centroid12);

%all above segmented have very large tumor values (1000) 
%that drown out the other values.


[languageseed1, seedmatrix1] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_01/GLM/s6wraSC_1/spmT_0001.nii',rssubj1,99.5);
[languageseed2, seedmatrix2] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_02/GLM/s6wraSC_Arabic/spmT_0001.nii',rssubj2,99.5);
[languageseed4, seedmatrix4] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_04/GLM/s6wraSC/spmT_0001.nii',rssubj4,99.5);
[languageseed6, seedmatrix6] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_06/GLM/s6wraSC/spmT_0001.nii',rssubj6,99.5);
[languageseed7, seedmatrix7] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_07/GLM/s6wraSC/spmT_0001.nii',rssubj7,99.5);
[languageseed8, seedmatrix8] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_08/GLM/s6wraSC/spmT_0001.nii',rssubj8,99.5);
[languageseed9, seedmatrix9] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_09/GLM/s6wraSC/spmT_0001.nii',rssubj9,99.5);
[languageseed10, seedmatrix10] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_10/GLM/s6wraSC/spmT_0001.nii',rssubj10,99.5);
[languageseed11, seedmatrix11] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_11/GLM/s6wraSC/spmT_0001.nii',rssubj11,99.5);
[languageseed12, seedmatrix12] = findLanguageSeed('/home/naresh/myshare/Sair_rsfMRI/Subj_12/GLM/s6wraSC/spmT_0001.nii',rssubj12,99.5);




KDCC1 = trueclusteredDCC(discreteClusteredMatrix,centroid1,languageseed1);
KDCC2 = trueclusteredDCC(discreteClusteredMatrix,centroid2,languageseed2);
KDCC4 = trueclusteredDCC(discreteClusteredMatrix,centroid4,languageseed4);
KDCC6 = trueclusteredDCC(discreteClusteredMatrix,centroid6,languageseed6);
KDCC7 = trueclusteredDCC(discreteClusteredMatrix,centroid7,languageseed7);
KDCC8 = trueclusteredDCC(discreteClusteredMatrix,centroid8,languageseed8);
KDCC9 = trueclusteredDCC(discreteClusteredMatrix,centroid9,languageseed9);
KDCC10 = trueclusteredDCC(discreteClusteredMatrix,centroid10,languageseed10);
KDCC11 = trueclusteredDCC(discreteClusteredMatrix,centroid11,languageseed11);
KDCC12 = trueclusteredDCC(discreteClusteredMatrix,centroid12,languageseed12);



%KDCC images look good so far, the background seems to be getting a
%correlation as well.










