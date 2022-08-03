// Crop image stack to 1000x1000 in center of image
// All images are 3226x3024 so we can use hard-coded values
makeRectangle(1113, 1012, 1000, 1000);
run("Crop");
saveAs("tif", getTitle());
