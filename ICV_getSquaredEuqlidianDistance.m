function distance = ICV_getSquaredEuqlidianDistance(imageMatrixReference, imageMatrixK)

[rR, cR] = size(imageMatrixReference);

[rK, cK] = size(imageMatrixK);
distance = 0;
if (rR == rK && cR == cK)
    for i=1:rR
        for j=1:cR
           
           value1 = imageMatrixReference(i, j);
           value2 = imageMatrixK(i, j);
           square = (value1 - value2)*(value1 - value2);
           distance = distance + square;
        end
    end
else
   error ('frame are of different dimensions, cannot perform frame differencing.'); 
end

end

