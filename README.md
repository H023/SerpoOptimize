# Serpo Optimize- Linux performance enhancing Script

## Overview

This is a Bash script designed to speed up the performance of your Linux computer. The script automates the installation and configuration of various tools and optimizations that can enhance your Linux experience. It is intended to be run with root privileges (using `sudo`) to ensure that it can perform system-level tasks.

## What it does

The script performs the following actions:

1. **Update Package List:** It updates the package list to ensure that you install the latest available packages.

2. **Install Necessary Tools:** It installs essential tools like `preload`, `powertop`, and `tlp`, which can improve system performance and power management.

3. **Install apt-fast:** It installs the `apt-fast` package, which is a faster alternative to the standard `apt` package manager, making package installation faster.

4. **Install zram-config:** It installs `zram-config` to enable compressed swap in RAM, reducing the need for disk-based swap and improving performance.

5. **Run preload Service:** It starts the `preload` service, which analyzes user behavior and optimizes the system to load frequently used applications faster.

6. **Enable tlp:** It enables and starts the `tlp` service, which provides advanced power management and battery optimization for laptops.

7. **Powertop Calibration:** It runs `powertop` with the `--auto-tune` option to calibrate power settings automatically, optimizing power usage.

8. **Install prelink:** It installs `prelink`, a tool that optimizes dynamic libraries to speed up the startup of applications.

9. **Optimize Libraries with prelink:** It runs `prelink` to optimize the dynamic libraries on the system, further enhancing application launch times.

10. **Clear Cache and Thumbnails:** It removes cache and thumbnail files to free up disk space and improve overall system performance.

11. **Clean Up Unnecessary Packages:** It performs a cleanup of unnecessary packages and cached files, freeing up additional disk space.

12. **Install Specific Linux Tools:** It installs specific Linux tools for the kernel version 6.2.0-25-generic, which can further optimize the system.

13. **Enable tmp.mount:** It copies the `tmp.mount` file to `/etc/systemd/system/` and enables it as a systemd unit to mount temporary directories in tmpfs for improved performance.

## How to Use

1. **Download the Script:**
   Download the `serpo-optimize.sh` script to your Linux computer. You can place it in your desired location, such as your home directory or any folder where you have write permissions.

2. **Make the Script Executable:**
   Open a terminal and navigate to the directory where you downloaded the script. Make the script executable using the following command:

   ```bash
   chmod +x serpo-optimize.sh
   ```

3. **Run the Script:**
   Run the script with root privileges using `sudo`:

   ```bash
   sudo ./serpo-optimize.sh
   ```

   The script will prompt you for your password (if required) since it needs root access to perform system-level tasks.

4. **Follow Instructions:**
   The script will automatically execute various optimizations and install necessary tools. Follow the on-screen instructions during the script execution.

5. **Reboot Your Computer:**
   After the script has completed running, it is recommended to reboot your computer to apply all the optimizations and changes made by the script.

## Additional Notes

- The script is designed for Debian-based Linux distributions, such as Ubuntu. It may not work as intended on other distributions.

- Read the script carefully before running it to understand the actions it performs on your system.

- Some actions require an internet connection to download and install packages. Ensure that you have a stable internet connection before running the script.

- The script is provided as-is, and the author takes no responsibility for any unintended consequences or issues that may arise from using it.

## Feedback

If you encounter any problems, have suggestions, or want to provide feedback on the script, feel free to contact the author, hemoo023. You can also leave feedback wherever you downloaded this script.

Enjoy your optimized Linux experience!
