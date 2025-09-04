input = getDirectory("Choose a Folder");
list = getFileList(input);
setBatchMode(true);

roi_file = File.openDialog("Select ROI set");

// Set measurement
run("Set Measurements...", "area mean standard min median modal display redirect=None decimal=3");




// Loop over images
for (i = 0; i < list.length; i++) {
        if (endsWith(list[i], ".jpg")) {
                // Open i-th image
                open(input + list[i]);
                // Open rois
                roiManager("reset");
                // roiManager("Open", input + list[i] + ".rois.zip");
                //roiManager("Open", input + "roi.zip");
                roiManager("Open", roi_file);
                roiManager("Show All");
                roiManager("Show All with labels");
                // Measure
                run("Select All");
                roiManager("Measure");
                close(input + list[i]);
        }
}


// Save
saveAs("Results", input + "results.csv");


// Close results
close("results");

//
//print("Finished measuring pupae");

showMessage("", "Measuring pupae completed");
