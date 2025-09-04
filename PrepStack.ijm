run("Image Sequence...");
run("8-bit");
run("Invert", "stack");
run("Enhance Contrast...", "saturated=0.35 normalize process_all");
run("Subtract Background...", "rolling=20 sliding stack");
run("Tiff...");


