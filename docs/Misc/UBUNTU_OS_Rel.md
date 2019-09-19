# UBUNTU OS Related...

## UBUNTU Tips and Tricks

### Disable Webcam


For security or any other reason, sometimes it is very it is very essectial to disable webcam. Following instructions will work in __UBUNTU 18.04__   

* Temporary option - You can disable your webcam device easily via modprobe command. Open terminal either via `Ctrl+Alt+T` or by searching for `terminal` from app launcher. When it opens, run command: `sudo modprobe -r uvcvideo`. The command removes the module from Linux kernel. Webcam is disabled until you reboot Ubuntu. Just start (or restart) **Cheese** to check it out.
* Permanent option - You can add a rule into configuration file, so your Ubuntu machine never starts the webcam kernel module on boot. Open terminal and run command `sudo gedit /etc/modprobe.d/blacklist.conf` to edit the configuration file. When the file opens, add the following two new lines and save it. Line 1 `#Disable webcam` and Line 2 `blacklist uvcvideo`. To revert the changes, simply remove the 2 lines, save the file and finally reboot.

### Problem with Forward (`/`) and Backward Slash (`\`) in File-Paths, While Working on Cross-Platform Projects

Ubuntu does not recognise backward slash (`\`), it is an error. However, Windows recongises both forward (`/`) and backward slash (`\`) even though Windows OS uses backward slash in its file-paths.
Hence to be on safe side, while working on cross-platform projects (such as working in both windows and ubuntu platform) its better to always use forward slash (`/`), since it is compatible with both windows and Ubuntu and url's as well.