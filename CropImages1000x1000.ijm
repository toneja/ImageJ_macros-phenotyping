// Crop image stack to 1000x1000 in center of image
size=1000;
h = getHeight();
w = getWidth();
makeRectangle(w/2-size/2, h/2-size/2, size, size);
run("Crop");
