# Fiji macros for eclosion monitor

# Installation


Under your `Fiji.app` folder, navigate to

```bash
cd scripts/Plugins/
```

Then, clone the repository

```bash
git clone https://github.com/junishigohoka/EclosionMonitorJ.git

```

In Fiji, the macros are available Plugins > EclosionMonitorJ > ...



# Overview

1. Process raw images `PrepJpeg`.
2. Select reference.
3. On the reference image, ROIs for the pupae will be semi-automatically determined using `MakeRefROIs`. The ROIs should be manually corrected, and saved.
4. Measure the ROIs on all un-stacked images using `MeasurePupae`


