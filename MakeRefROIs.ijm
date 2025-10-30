file = File.openDialog("Select JPEG of reference slice");
open(file);                         // opens the image
imp = getTitle();                    // gets the title of the open image

// build the command string using the image title
cmd = "command=[de.csbdresden.stardist.StarDist2D], args=['input':'" + imp + "', 'modelChoice':'Versatile (fluorescent nuclei)', 'normalizeInput':'true', 'percentileBottom':'1.0', 'percentileTop':'99.8', 'probThresh':'0.65', 'nmsThresh':'0.05', 'outputType':'ROI Manager', 'nTiles':'16', 'excludeBoundary':'2', 'roiPosition':'Automatic', 'verbose':'false', 'showCsbdeepProgress':'false', 'showProbAndDist':'false'], process=[false]";

run("Command From Macro", cmd);

showMessage("MakeRefROIs", "ROI identification completed. Please edit the ROIs and save the ROI set.");
