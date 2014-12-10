function output_args = ICV_applyThreshold( difference, threshold)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[r, c] = size(difference);
maxValue = 0;
minValue = 0;
for i = 1:r
    for j = 1:c
        value = difference(i, j);
        if value > maxValue
            maxValue = value;
        end
        if value < minValue
            minValue = value;
        end
    end
end

% threshold = (minValue + maxValue)/2;
% threshold = 6;
backGround = zeros(r, c);
for i = 1:r
    for j = 1:c
        value = difference(i, j);
        if value > threshold
            backGround (i, j) = 1;
        end
    end
end
output_args = backGround;
end

