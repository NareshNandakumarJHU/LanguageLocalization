function beforekmeans = simplifyKmeansTumor(rs,coordinates)

t = size(rs,4);
norm = normalizeRs(rs);
addtumor = addTumorToTimeSeries(norm,coordinates);
beforekmeans = reshape(addtumor,[],t);
end
