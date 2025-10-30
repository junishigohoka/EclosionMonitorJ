
inputDir = getDirectory("Choose Input Directory");
n0 = getNumber("0-based index of first JPG of the sequence", 0);
n1 = getNumber("0-based index of last JPG of the sequence", 0);
outputDir = getDirectory("Choose Output Directory");
list = getFileList(inputDir);


setBatchMode(true);

for (i = n0; i <= n1; i++) {
    open(inputDir + list[i]);
    run("8-bit");
    run("Invert");
    run("Enhance Contrast...", "saturated=0.35 normalize");
    run("Subtract Background...", "rolling=20 sliding");
    outpath = outputDir + list[i];
    saveAs("Jpeg", outpath);
    //run("Jpeg...", "save='" + outpath + "'");
    close("*");
}

showMessage("", "PrepStack is completed.");
