window = zeros(8, 8);
pathcar1 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\car-1.jpg';
pathcar2 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\car-2.jpg';
pathcar3 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\car-3.jpg';
pathface1 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\face-1.jpg';
pathface3 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\face-3.jpg';
pathface2 = 'C:\Users\Anna\Documents\GitHub\Texture\DatasetA\face-2.jpg';

frame11 = imread(pathcar1);
frame12 = imread(pathcar2);
frame13 = imread(pathcar3);
frame1 = imread(pathface1);
frame3 = imread(pathface3);
frame2 = imread(pathface2);

frameDevidedIntoWindows11 = ICV_devideIntoWindows(frame11, window);
frameDevidedIntoWindowscar2 = ICV_devideIntoWindows(frame12, window);
frameDevidedIntoWindowscar3 = ICV_devideIntoWindows(frame13, window);
frameDevidedIntoWindowsface1 = ICV_devideIntoWindows(frame1, window);
frameDevidedIntoWindowsface3 = ICV_devideIntoWindows(frame3, window);
frameDevidedIntoWindowsface2 = ICV_devideIntoWindows(frame2, window);

%data set A, 6 a
showA = 1;%change to 1 in order to see a results
% 6 b
showB = 0;%change to 1 in order to see b results

[imageLBPCar1] = ICV_getDescriptors(frameDevidedIntoWindows11, showA, showB);
% [imageLBPCar2] = ICV_getDescriptors(frameDevidedIntoWindowscar2, showA, showB);
% [imageLBPCar3] = ICV_getDescriptors(frameDevidedIntoWindowscar3, showA, showB);
% [imageLBPFace1] = ICV_getDescriptors(frameDevidedIntoWindowsface1, showA, showB);
% [imageLBPFace3] = ICV_getDescriptors(frameDevidedIntoWindowsface3, showA, showB);
% [imageLBPFace2] = ICV_getDescriptors(frameDevidedIntoWindowsface2, showA, showB);
% 
% % 6 c
% % learn: car 1 is car class
% [histogramCar1, normalizedHistogramCar1] = ICV_getHistogram(imageLBPCar1);
% [histogramCar2, normalizedHistogramCar2] = ICV_getHistogram(imageLBPCar2);
% [histogramCar3, normalizedHistogramCar3] = ICV_getHistogram(imageLBPCar3);
% distance = ICV_getSquaredEuqlidianDistance(normalizedHistogramCar1, normalizedHistogramCar2);
% disp('car 1 and car 2');
% if distance < 1
%     disp('car 1 and car 2 are of the same class');
% else
%     disp('car 1 and car 2 are of different classes');
% end  
% distance
% 
% % intersectionCar3 = ICV_getIntersection(normalizedHistogramCar2, normalizedHistogramCar3);
% distance = ICV_getSquaredEuqlidianDistance(normalizedHistogramCar1, normalizedHistogramCar3);
% disp('car 1 and car 3');
% distance
% if distance < 1
%     disp('car 1 and car 3 are of the same class');
% else
%     disp('car 1 and car 3 are of different classes');
% end
% % %uncomment to see histograms comparison of cars
% %bar([normalizedHistogramCar1;normalizedHistogramCar2;normalizedHistogramCar3]);
% % 
% % %learn: face 1 is face class
% [histogramFace1, normalizedHistogramFace1] = ICV_getHistogram(imageLBPFace1);
% [histogramFace2, normalizedHistogramFace2] = ICV_getHistogram(imageLBPFace2);
% distance = ICV_getSquaredEuqlidianDistance(normalizedHistogramFace1, normalizedHistogramFace2);
% disp('face 1 and face 2 ');
% distance
% % intersectionFace2 = ICV_getIntersection(normalizedHistogramFace1, normalizedHistogramFace2);
% if distance < 1
%     disp('face 1 and face 2 are of the same class');
% else
%     disp('face 1 and face 2 are of different classes');
% end
% [histogramFace3, normalizedHistogramFace3] = ICV_getHistogram(imageLBPFace3);
% distance = ICV_getSquaredEuqlidianDistance(normalizedHistogramFace1, normalizedHistogramFace3);
% disp('face 1 and face 3');
% distance
% % intersectionFace3 = ICV_getIntersection(normalizedHistogramFace1, normalizedHistogramFace3);
% if distance < 1
%     disp('face 1 and face 3 are of the same class');
% else
%     disp('face 1 and face 3 are of different classes');
% end
% 
% 
% % intersectionCarFace = ICV_getIntersection(normalizedHistogramCar3, normalizedHistogramFace2);
% distance = ICV_getSquaredEuqlidianDistance(normalizedHistogramCar3, normalizedHistogramFace2);
% disp('car 3 and face 2');
% distance
% if distance < 1
%     disp('car 3 and face 2 are of the same class');
% else
%     disp('car 3 and face 2 are of different classes');
% end
% % 
% % % %uncomment to see histograms comparison of faces
% % bar([normalizedHistogramFace1;normalizedHistogramFace2;normalizedHistogramFace3]);
