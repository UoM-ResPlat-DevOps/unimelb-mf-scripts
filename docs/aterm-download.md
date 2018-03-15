# aterm-download

**aterm-download** (or **aterm-download.cmd** on Windows) script provides a command line tool to download data from Mediaflux server. 
It requires **aterm.jar**, which can be downloaded by the script automatically. Also it requires the configruation file: **mflux.cfg**, which includes the Mediaflux server details and user credentials.

## I. Requirements

### aterm.jar
* The script downloads **aterm.jar** automatically to script directory.
* You can modify the script to specify a different location:
  * on Linux/Mac OS/Unix, modify aterm file:
    * **export MFLUX_ATERM=/path/to/aterm.jar**
  * on Windows, modify aterm.cmd file:
    * **SET MFLUX_ATERM=x:\path\to\aterm.jar**

### mflux.cfg
* the script will try the following locations to find **mflux.cfg**:
  1. use the file specified by **$MFLUX_CFG** (or **%MFLUX_CFG%** on Windows) if the file exists;
  2. use the file in **$HOME/.Arcitecta/mflux.cfg** (or **%USERPROFILE%/Arcitecta/mflux.cfg**) if the file exists
  3. use the file **mflux.cfg** in the script directory if exists.

## II. Examples

### 1. Enter command line terminal, simply 
* On Mac OS, Linux or Unix:
  * **./aterm**
* On Windows:
  * **aterm.cmd**
* Type **quit** to quit the terminal.
### 2. Execute a Mediaflux service:
* On Mac OS, Linux or Unix:
  * **./aterm server.uuid**
* On Windows:
  * **aterm.cmd server.uuid**
### 3. Execute download command:
* On Mac OS, Linux or Unix:
  * **./aterm download -namespace /projects/my-project /Users/wilson/Downloads**
* On Windows:
  * **aterm.cmd download -namespace /projects/my-project c:\users\wilson\Downloads**

