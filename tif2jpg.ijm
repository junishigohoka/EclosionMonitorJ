setBatchMode(true);
// Ask user to choose input TIFF stack
inputPath = File.openDialog("Select TIFF stack");
// Ask user to select output folder
outputFolder = getDirectory("Choose output folder");
// Open the chosen TIFF stack
open(inputPath);
// Loop over slices
for (i = 1; i <= nSlices; i++) {
        // Set i-th slice
        Stack.setSlice(i);
        // Duplicate current slice as new image named "tmp"
        run("Duplicate...", "title=tmp");
        // Get jpg name
        sliceName = getInfo("slice.label");
        // Save the slice as jpg
        saveAs("Jpeg", outputFolder + sliceName);
        // Close duplicated image
        close("tmp");
}


showMessage("tif2jpg", "All slices were saved as JPEG");
