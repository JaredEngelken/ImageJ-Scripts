# ImageJ-Scripts

This is a collection of scripts that can be run as macros in the image processing software ImageJ/Fiji.
Copyright (C) Jared Engelken 2023

Description
These scripts can be imported into ImageJ as macros. The functionality of each script is given in the title of 
each file with a more detailed description and user instructions within each files themselves, which can be 
viewed with a stadard text editor. The scripts were written either in Python 3 or in the ImageJ macro language,
which combines the Python codebase with executables.

Table of Contents
1) How to Install and Run the Scripts
2) Scripts and Functionality
3) Disclaimer
4) Credits
5) License

How to Install and Run the Scripts
1) IJM Scripts: Scripts that are of the IJM filetype are written as macros for use within ImageJ. Detailed 
instructions for each script can be found within headers of the files themselves. These can be viewed 
with a standard text editor. However, the general procedure is to open the ImageJ software. From the toolbar, 
navigate to "Plugins" -> "Macros" -> "Run...". A file browser will apear, with which you can navigate to this 
folder and select the script you would like to run. The script will then execute and further instructions may 
follow.
2) PY Scripts: Scripts that are of the PY filetype are written as (somewhat) stand-alone executables. In order 
to run these scripts, it is necessary to have an up-to-date version of Python 3 and the required packages 
installed. Installation of these softwares goes beyond the scope of this README, but Python 3 can be acquired 
for free from www.python.org and the packages can be installed with the pip installer. Otherwise, various 
distributions of Python may be used. Detailed instructions for each script can be found within headers of the 
files themselves. These can be viewed with a standard text editor or with an IDLE. With Python 3 installed, the 
scripts can be executed directly, as long as Python 3 is included in the PATH within the environment variables.

Scripts and Functionality
This collection currently includes:
1) Adjust Min-Max Brightness and Contrast
This script adjusts the min and max values (brightness and contrast) for every TIF and TIFF image in the 
selected folder, and then saves each of the adjusted images as a TIFF in the same folder.
2) Scan Grayscale
This script measures the mean grayscale value of a given area (polygon) for every TIF and TIFF in the selected 
folder and returns a list of the results as a text file in the same folder. To measure a specific area, first 
draw a polygon on the image you	want to analyze with ImageJ. Make a note of each coordinate. Then, enter the 
coordinates as "x1,y1,x2,y2,x3,y3,..." in the pop-up window, when you run the macro.

Disclaimer
These scripts are provided "as is". The author does not take any responsibilty for their usage or the results 
that are obtained from their usage. Furthermore, the scripts are "open-source" and may be edited by anyone with 
access, for which the original author also takes no responsibilty. The scripts are provided without malicious 
content or functionality, and are intended purely for educational usage, though they may be used in any fassion
according to the License.

Credits
The scripts were written entirely by the author; however, reference material was gained from the webpages 
provided by the National Institute of Health at [https://imagej.nih.gov/ij/developer/macro/macros.html].

License
These scripts fall under the GNU General Public License v3.0, which can be viewed in the COPYING text file.
