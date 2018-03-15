# aterm

aterm (or aterm.cmd for Windows) script provides a command line Mediaflux terminal. It requires aterm.jar, which can be downloaded by the script. Also it requires the configruation file: mflux.cfg, which specifies the Mediaflux server details and user credentials.

* aterm.jar
  * aterm.jar will be downloaded automatically to script directory by the script.
  * Or you can modify the script to specify the location of aterm.jar
    * on Linux/Mac OS/Unix, modify aterm file:
      * export MFLUX_ATERM=/path/to/aterm.jar
    * on Windows, modify aterm.cmd file:
      * SET MFLUX_ATERM=x:\path\to\aterm.jar

* configuration file: mflux.cfg
  * the script will try the following locations to find mflux.cfg:
    1.
