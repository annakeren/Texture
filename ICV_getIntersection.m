function output_args = ICV_getIntersection( imageMatrixReference, imageMatrixK)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[rR, cR] = size(imageMatrixReference);

[rK, cK] = size(imageMatrixK);

differenceMatrix = zeros(rR, cR);
if (rR == rK && cR == cK)
    for i=1:rR
        for j=1:cR
           
           value1 = imageMatrixReference(i, j);
           value2 = imageMatrixK(i, j);
           if value1 < value2
               differenceMatrix(i, j) = value1;
           else
               differenceMatrix(i, j) = value2;
           end
        end
    end
else
   error ('frame are of different dimensions, cannot perform frame differencing.'); 
end
differenceMatrixUint = im2uint8(differenceMatrix);

sumDiff = ICV_sumDifference(differenceMatrixUint);
output_args = sumDiff/255;

