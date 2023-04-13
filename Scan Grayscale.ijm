/////////////////////////////////////
// Grayscale Scan Macro for ImageJ //
// Jared Engelken                  //
// Shastri Lab - ALU Freiburg      //
// 18.10.2022                      //
/////////////////////////////////////

// This program measures the mean grayscale value of a given area for 
// 	every TIF and TIFF in the selected folder and returns a list
//	of the results as a text file in the same folder.
// To measure a specific area, first draw a polygon on the image you
// 	want to analyze with ImageJ. Make a note of each coordinate.
//	Then enter the coordinates as x1,y1,x2,y2,x3,y3,... below.

////////////////////////////////////////////////////////////////////////////////////////////

setBatchMode(true);

dir = getDir("Choose a Directory"); // Choose a directory.
list = getFileList(dir); // Get all files in the directory.
stack = newArray; // Initialize the channel stack list for each image.

run("Clear Results"); // Clear any previous ImageJ measurement results.

coord = getString("What are your coordinates? ", "0,0,0,100,100,100,100,0");

for (i = 0; i < lengthOf(list); i++) { // Check the number in the file name
	if (endsWith(list[i], ".tif") || endsWith(list[i], ".tiff")) {
		open(dir + "/" + list[i]);
		selectWindow(list[i]);
		run("8-bit");
		// CHANGE THE ANALYSIS AREA HERE! //
		makePolygon(coord);
		// // // // // //  // // // // // //
		run("Measure");
		close();
	}
}

saveAs("Results", dir + "/Grayscale_Results.txt");	
run("Clear Results");

setBatchMode(false);