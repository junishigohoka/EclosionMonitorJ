setBatchMode(true);
run("Clear Results");
// count the number of ROIs
n_roi = roiManager("Count");
// select all ROIs
run("Select All");
// Set Measurement
run("Set Measurements...", "display centroid redirect=None decimal=3");
// Measure all
roiManager("Measure");
// Ask user to make a freehand selection
waitForUser("Please make a freehand selection on the image and click OK.");
roiManager("Add");
// Select the selection
roiManager("Select", n_roi);
// Loop over ROIs
for(i = 0; i < n_roi; i++){
        // Get measured values
        // Centroid
        x = getResult("X", i);
        y = getResult("Y", i);
        // Select the focal ROI
        roiManager("Select", i);
        name = Roi.getName;
        // Select the selection
        roiManager("Select", n_roi);
        if(Roi.contains(x, y)){
                print(name);
        }
}
run("Clear Results");
roiManager("Select", roiManager("Count") - 1);
roiManager("Delete");
selectWindow("Log");
saveAs("Text");
run("Close");
selectWindow("Results");
run("Close");


