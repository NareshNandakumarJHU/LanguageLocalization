function ones = normalizeGray(matrix)

a = size(matrix,1);
b = size(matrix,2);
c = size(matrix,3);
ones = zeros(a,b,c);

for x = 1:a
    for y = 1:b
        for z = 1:c
            if matrix(x,y,z) ~= 0
                ones(x,y,z) = 1;
            end
        end
    end
end
end
