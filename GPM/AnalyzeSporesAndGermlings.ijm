// Crop image stack to 1000x1000 in center of image
// All images are 3226x3024 so we can use hard-coded values
makeRectangle(1113, 1012, 1000, 1000);
run("Crop");
saveAs("tif", "GPM/images/" + getTitle());

// Subtract background from image stack
run("Subtract Background...", "rolling=10 light stack");

// Generate a binary image from our image stack
setAutoThreshold("Default");
setThreshold(0, 240);
setOption("BlackBackground", false);
run("Convert to Mask", "method=Default background=Light");
run("Fill Holes", "stack");
saveAs("tif", "GPM/images/" + getTitle());

// Generate ROIs
run("Set Measurements...", "area centroid perimeter fit shape feret's stack redirect=None decimal=3");
run("Analyze Particles...", "size=100-600 circularity=0.00-0.97 show=Overlay display exclude include add stack");
roiManager("Show None");
saveAs("Results", "GPM/results/Results_" + File.getNameWithoutExtension(getTitle()) + ".csv");

// Close image window when finished
// close();
