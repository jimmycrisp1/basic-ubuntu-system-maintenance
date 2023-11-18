# basic-ubuntu-system-maintenance
$ Receuved some help from GPT on this making it for my own system, figured it would be a good first share on github. ENJOY!

General comprehensive bash script for maintaining your Ubuntu system. This script includes updating package lists, upgrading packages, cleaning up, and removing old kernels.

Make your script executable by running:
bash
$ chmod +x system_maintenance.sh

Important Notes:

    The script includes a section for removing old kernels. This command keeps the currently running kernel and the latest one as a backup. Be cautious with this, as removing kernels       can be risky if not done correctly.
    The deborphan command is used to find and remove orphaned packages. If deborphan is not installed, you can install it with sudo apt-get install deborphan.
    The reboot section is commented out. If you want the script to offer a reboot option at the end, uncomment this section.
    Always review and understand scripts, especially those involving system maintenance and sudo privileges, before running them.

    Name the script to your prefence or keep it the same. Any questions feel free to ask.

    
