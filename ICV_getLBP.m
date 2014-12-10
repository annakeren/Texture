function output_args = ICV_getLBP(window)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[br, bc] = size(window);
lbp = zeros(1, (br - 2)*(bc - 2));
lbpIndex = 1;
%this implementation ignores edges of each window
%it calculates LBP for inner pixels in each window
for i = 1:(br - 2) 
    for j = 1:(bc - 2)
        
        cIndexI = i + 1;
        cIndexJ = j + 1;
        indexNeighbourMaxI = i + 2;
        indexNeighbourMaxJ = j + 2;
            c = window(cIndexI, cIndexJ);
            neighbour1 = window(cIndexI, j);
            neighbour2 = window(indexNeighbourMaxI, j);
            neighbour3 = window(indexNeighbourMaxI, cIndexJ);
            neighbour4 = window(indexNeighbourMaxI, indexNeighbourMaxJ);
            neighbour5 = window(cIndexI, indexNeighbourMaxJ);
            neighbour6 = window(i, indexNeighbourMaxJ);
            neighbour7 = window(i, cIndexJ);
            neighbour8 = window(i, j);
            
            lbcodes = zeros(1, 4);
            lbcodes(1) = ICV_returnBinary(c, neighbour1);
            lbcodes(2) = ICV_returnBinary(c, neighbour2);
            lbcodes(3) = ICV_returnBinary(c, neighbour3);
            lbcodes(4) = ICV_returnBinary(c, neighbour4);
            lbcodes(5) = ICV_returnBinary(c, neighbour5);
            lbcodes(6) = ICV_returnBinary(c, neighbour6);
            lbcodes(7) = ICV_returnBinary(c, neighbour7);
            lbcodes(8) = ICV_returnBinary(c, neighbour8);
            
            decimal = ICV_getDecimal(lbcodes);
            lbp(lbpIndex) = decimal;
            lbpIndex = lbpIndex + 1;
    end
end

output_args = lbp;
end

