function normalizedtimeserieswithtumor = addTumorToTimeSeries(normalizedtimeseries,coordinates)

%return a matrix  

a = size(coordinates,1);

x = size(normalizedtimeseries,1);
y = size(normalizedtimeseries,2);
z = size(normalizedtimeseries,3);
t = size(normalizedtimeseries,4);

count = 1;



normalizedtimeserieswithtumor = normalizedtimeseries;

for index = 1:a
    xc = coordinates(index,1);
    yc = coordinates(index,2);
    zc = coordinates(index,3);
    for X = 1:x
        for Y = 1:y
            for Z = 1:z
                if xc == X && yc == Y && zc == Z
                    normalizedtimeserieswithtumor(X,Y,Z,:) = 1000;
                end
            end
        end
    end
end

% normalizedtimeserieswithtumor(isnan(normalizedtimeserieswithtumor)) = [];
% voxelsToAdd = (x*y*z) -size(normalizedtimeserieswithtumor,2);
% zerovector = zeros(1,voxelsToAdd);
% normalizedtimeserieswithtumorWithZeros = [normalizedtimeserieswithtumor zerovector];
% normalizedtimeserieswithtumorWithZeros = reshape(normalizedtimeserieswithtumorWithZeros,x,y,z);

% normalizedtimeserieswithtumor = reshape(normalizedtimeserieswithtumor,x,y,z);


end