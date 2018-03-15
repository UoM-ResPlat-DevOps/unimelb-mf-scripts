# aterm

aterm (or aterm.cmd for Windows) script provides a command line Mediaflux terminal. It requires aterm.jar, which can be downloaded by the script. Also it requires the configruation file: mflux.cfg, which specifies the Mediaflux server details and user credentials.

### aterm.jar
  * The script downloads aterm.jar automatically to script directory.
  * You can modify the script to specify a different location:
    * on Linux/Mac OS/Unix, modify aterm file:
      * export MFLUX_ATERM=/path/to/aterm.jar
    * on Windows, modify aterm.cmd file:
      * SET MFLUX_ATERM=x:\path\to\aterm.jar

### mflux.cfg
  * the script will try the following locations to find mflux.cfg:
    1. use the file specified by $MFLUX_CFG (or %MFLUX_CFG% on Windows) if the file exists;
    2. use the file in $HOME/.Arcitecta/mflux.cfg (or %USERPROFILE%/Arcitecta/mflux.cfg) if the file exists
    3. use the file in the script directory.
