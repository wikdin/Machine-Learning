% Applying MTCNN algortihm on live video from webcam for face detection
flag = 1;
cam  = webcam(1);

while flag
    clearvars -except flag cam
    mysnap =snapshot(cam);
    imshow(mysnap);
    hold on;
    
    [bboxes, scores, landmarks] = mtcnn.detectFaces(mysnap);
    fprintf("Found %d faces.\n", numel(scores));
    displayIm = insertObjectAnnotation(mysnap, "rectangle", bboxes, scores, "LineWidth", 2);
    imshow(displayIm)
    drawnow
    
end
