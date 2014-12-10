function [histogram, normalizedHistogram] = ICV_getHistogram( descriptors)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[u, v] = size(descriptors);

minValue = 0;
maxValue = 0;
sum = 0;
for i = 1:v
    value = descriptors(i);
    if value < minValue
        minValue = value;
    end
    
    if value > maxValue
        maxValue = value;
    end
    sum = sum + value;
end
sum = im2double(sum);
histogram = zeros(u, maxValue + 1);
for i = 1:v
    value = descriptors(i);
    if value == 0
        continue;
    end
    bin = histogram(value);
    histogram(value) = bin + 1;
end

% for i= 1:v
%     histValue = histogram(i);
%     newHistValue = histValue/sum;
%     normalizedHistogram (i) = newHistValue;
% end
normalizedHistogram = (histogram-min(histogram(:))) ./ (max(histogram(:)-min(histogram(:))));
min(normalizedHistogram(:));
max(normalizedHistogram(:));

end

