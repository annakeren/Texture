function [imageLBP] = ICV_getDescriptors(frameDevidedIntoWindows, showA, showB)
%Gives global descriptor which is obtained by simple concatenation of local
%LBPs
[r,c,d] = size (frameDevidedIntoWindows);
imageLBP = zeros(1, 0);
for l=1:d
    
    windowDouble = frameDevidedIntoWindows(:,:,l);
    window = im2uint8(windowDouble);   
    
    lbp = ICV_getLBP(window);
    imageLBP = horzcat(imageLBP, lbp);
    
    [histogram, normalizedHistogram] = ICV_getHistogram(lbp);
    %6 a
    if showA == 1 && (l == 5 || l == 50 || l == 150)
        imshow(window);
        lbp;
        set(gca,'XAxisLocation','top');
        bar(normalizedHistogram)
    end
   
end

%6 b
if showB==1
    histGlobal = ICV_getHistogram(imageLBP);
    bar(histGlobal)
end

end

