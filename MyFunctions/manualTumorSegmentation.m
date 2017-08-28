function [tumor, coordinates] = manualTumorSegmentation(wssfile,grayfile,lowthreshold,highthreshold,xstart,xstop,ystart,ystop,zstart,zstop)

%Written on 8/23/17 Intended for manual tumor segmentation
%with thresholding. Will work best if only using gray matter regions
%for analysis

wss = spm_vol(wssfile);
wss = spm_read_vols(wss);

gray = spm_vol(grayfile);
gray = spm_read_vols(gray);

a = size(wss,1);
b = size(wss,2);
c = size(wss,3);

tumor = zeros(a,b,c);
count = 1;
for x = xstart:xstop
    for y = ystart:ystop
        for z = zstart:zstop
            if wss(x,y,z)>lowthreshold && wss(x,y,z)<highthreshold
                tumor(x,y,z) = 1;
                count = count+1;
            end
        end
    end
end

grayMask = normalizeGray(gray);
tumor = tumor.*grayMask;

COUNT = 1;

for x = xstart:xstop
    for y = ystart:ystop
        for z = zstart:zstop
            if tumor(x,y,z) == 1
                coordinates(COUNT,:) = [x y z];
                COUNT = COUNT+1;
                
                %why are there rows of 0's in bottom of coordinates
                %matrices?
                
            end
        end
    end
end

end




