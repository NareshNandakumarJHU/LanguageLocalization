function threeDsnapshot = fourDto3DaverageTimeCourse(matrix)

a = size(matrix,1);
b = size(matrix,2);
c = size(matrix,3);
d = size(matrix,4);



threeDsnapshot = zeros(a,b,c);
for x = 1:a
    for y = 1:b
        for z = 1:c
            timeseries = findtruetimeseries(matrix,x,y,z);
            threeDsnapshot(x,y,z) = mean(timeseries);
        end
    end
end
end


