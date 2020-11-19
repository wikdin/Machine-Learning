function x = mtcnn_try() % Face Detection using MT-CNN
    cam = webcam(1);
    I = snapshot(cam);
    %I = imread("photo2.jpg");
     %I = imread("classroom.jpg");
    [bboxes, scores, landmarks] = mtcnn.detectFaces(I);
    fprintf("Found %d faces.\n", numel(scores));

    displayIm = insertObjectAnnotation(I, "rectangle", bboxes, scores, "LineWidth", 2);
    x = imshow(displayIm);

