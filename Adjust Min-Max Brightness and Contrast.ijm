/////////////////////////////////////
// Adjust Min Max Macro for ImageJ //
// Jared Engelken                  //
// Shastri Lab - ALU Freiburg      //
// 19.10.2022                      //
/////////////////////////////////////

// This program adjusts the min and max values (brightness and contrast) 
// 	for every TIF and TIFF in the selected folder and saves each
//	of the adjusted images as a TIFF in the same folder.

////////////////////////////////////////////////////////////////////////////////////////////

setBatchMode(true);

dir = getDir("Choose a Directory"); // Choose a directory.
list = getFileList(dir); // Get all files in the directory.

min = getNumber("Enter your desired min: ", 0);
max = getNumber("Enter your desired max: ", 255);

for (i = 0; i < lengthOf(list); i++) { // Check the number in the file name
	if (endsWith(list[i], ".tif") || endsWith(list[i], ".tiff")) {
		open(dir + "/" + list[i]);
		selectWindow(list[i]);
		run("Brightness/Contrast...");
		setMinAndMax(min, max);
		run("Close");
		saveAs("Tiff", dir + "adjusted_min_max-" + list[i]);
		close();
	}
}

setBatchMode(false);
