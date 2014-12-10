function [ output_args ] = ICV_getDecimal( lbcodes)
[x, endIndex] = size(lbcodes);
powerIndex = 0;
decimal = 0;
for i=endIndex:-1:1 
    lbCodeBinary = lbcodes(i);
    decimal = decimal + (lbCodeBinary*(2^(powerIndex)));
    powerIndex = powerIndex + 1;
end 
output_args = decimal;
end

