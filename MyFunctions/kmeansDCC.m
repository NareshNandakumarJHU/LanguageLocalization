function [kmeansbraincorrelation, seedmatrix] = kmeansDCC(rsfile,GLMfile,percentile,clusternumber)

%define rs and GLM matrices
%and corresponding sizes

tic

rs = spm_vol(rsfile);
rs = spm_read_vols(rs);

x = size(rs,1);
y = size(rs,2);
z = size(rs,3);
d = size(rs,4);

[SeedTimeCourse, seedmatrix] = findLanguageSeed(GLMfile,rs,percentile);

%Here is where Kmeans and clustering comes in. Find clusters and centroids
%for each one, then create the (x,y,z) discreteClusteredMatrix of index
%numbers

fMRI = reshape(rs, [], d);
[idx, centroid] = kmeans(fMRI,clusternumber);
discreteClusteredMatrix = reshape(idx,x,y,z);

%Segmented and discreteClusteredMatrix are both (x,y,z,t) matrices.
%Segmented has the centroid value which varies with time,
%discreteClusteredMatrix just has cluster numbers and doesnt vary with
%time.

[segmented, discreteClusteredMatrixWithTime] = segmentedByClusters(discreteClusteredMatrix,centroid);
correlationMatrix = zeros(x,y,z,d); %initialize final matrix

%clusteredDCC takes the above inputs and runs DCC

kmeansbraincorrelation = clusteredDCC(discreteClusteredMatrixWithTime,segmented,x,y,z,d,clusternumber,SeedTimeCourse,correlationMatrix);

toc
end






