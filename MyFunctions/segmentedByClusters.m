function [segmented, test] = segmentedByClusters(final, centroidmatrix)

clusters = size(centroidmatrix, 1);
time = size(centroidmatrix,2);

segmented = zeros(91,109,91,time);
test = zeros(91,109,91,time);
%final will be a 91x109x91 matrix having values ranging
%from 1: clusters. Centroidmatrix is a clustersXTime matrix
%of the different centroid of that cluster as time goes on

for T = 1:time
    for clusterIndex = 1:clusters
        for a = 1:91
            for b = 1:109
                for c = 1:91
                    if final(a,b,c) == clusterIndex
                        test(a,b,c,T) = clusterIndex;
                        segmented(a,b,c,T) = centroidmatrix(clusterIndex,T);
                    end
                end
            end
        end
    end
end
end




