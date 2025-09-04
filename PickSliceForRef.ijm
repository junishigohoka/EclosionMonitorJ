file=File.openDialog("Select stack");
open(file);


waitForUser("Pick a slice for reference. Then click OK.");  // non-blocking message that allows slice navigation

sliceName = getInfo("slice.label");

outputFolder = getDirectory("Choose output folder");
saveAs("Jpeg", outputFolder + sliceName);
run("Close");
print(sliceName + ".jpg was saved in " + outputFolder);

