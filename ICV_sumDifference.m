function sum = ICV_sumDifference(diff)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[r, c] = size(diff);
sum  = 0;
for i=1:r
    for j=1:c
       value =  diff(i, j);
       sum = sum + value;
    end
end

end

