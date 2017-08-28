function withoutTumor = excludeTumor(graymatrix,coordinates)

%return a matrix  

a = size(coordinates,1);

x = size(graymatrix,1);
y = size(graymatrix,2);
z = size(graymatrix,3);


count = 1;

for X = 1:x
    for Y = 1:y
        for Z = 1:z
            if graymatrix(X,Y,Z) ~= 0
                vectorvalues(count) = graymatrix(X,Y,Z);
                count = count+1;
            end
        end
    end
end
avg = mean(vectorvalues);

withoutTumor = graymatrix;

for index = 1:a
    xc = coordinates(index,1);
    yc = coordinates(index,2);
    zc = coordinates(index,3);
    for X = 1:x
        for Y = 1:y
            for Z = 1:z
                if xc == X && yc == Y && zc == Z
                    withoutTumor(X,Y,Z) = avg;
                end
            end
        end
    end
end

% withoutTumor(isnan(withoutTumor)) = [];
% voxelsToAdd = (x*y*z) -size(withoutTumor,2);
% zerovector = zeros(1,voxelsToAdd);
% withoutTumorWithZeros = [withoutTumor zerovector];
% withoutTumorWithZeros = reshape(withoutTumorWithZeros,x,y,z);

withoutTumor = reshape(withoutTumor,x,y,z);


end

