// Generate ROIs
run("Set Measurements...", "area centroid perimeter fit shape feret's stack redirect=None decimal=3");
run("Analyze Particles...", "size=100-700 circularity=0.00-0.97 show=Overlay display exclude include add stack");
roiManager("Show None");
saveAs("Results", "Results_" + File.getNameWithoutExtension(getTitle()) + ".csv");
