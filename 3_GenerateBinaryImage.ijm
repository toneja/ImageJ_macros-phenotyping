// Generate a binary image from our image stack
setAutoThreshold("Default");
setThreshold(0, 230);
setOption("BlackBackground", false);
run("Convert to Mask", "method=Default background=Light");
saveAs("tif", getTitle());
