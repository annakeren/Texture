function output_args = ICV_devideIntoWindows(frame, block)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[blockHeight, blockWidth] = size(block);
imageMatrixGrey = rgb2gray(frame);
imageMatrix  = im2double (imageMatrixGrey);
% imshow(imageMatrix)
[r, c] = size (imageMatrix);

allPixels = r*c;
 
    BlockSize=blockHeight*blockWidth;
    numberOfBlocks=allPixels/BlockSize;
    frameDevidedIntoBlocks=zeros(blockHeight,blockHeight,round (numberOfBlocks)); 
    blockIndex=1;
    for i=1:blockHeight:r
        for j=1:blockHeight:c
            if((i+blockHeight-1) < round (numberOfBlocks) && (i+blockHeight-1) < r && (j+blockHeight-1) < c)
                frameDevidedIntoBlocks(:,:,blockIndex)=imageMatrix(i:i+blockHeight-1,j:j+blockHeight-1); 
                blockIndex=blockIndex+1;
            end
        end
    end
% output_args = im2uint8(frameDevidedIntoBlocks);
output_args = frameDevidedIntoBlocks;
end

