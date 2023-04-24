
# Bash Script to Install Apps

The script creates a progress bar for a specific process, displaying a "spinner" icon while the process is running. It receives the parameters passed by the user and uses the "getopt" tool to process them. Then, it starts the process and updates the progress bar with each iteration. When the process ends, the progress bar is finalized, and a "Process finished!" message is displayed.

## 🚀 How It Works

**#!/bin/bash:** This is the declaration of the script interpreter that will be used to execute the code. In this case, the Bash interpreter will be used.

**spinner():** This is the function that will run in the background while the process is running. It shows a "spinner" icon, indicating that the process is still running.

**trap 'kill $spinner_pid' TERM:** This is a trap declaration for the "TERM" signal, which is sent when the process is interrupted or terminated. It ensures that the "spinner" function is terminated when the process ends.

**start_spinner():** This function is responsible for running the "spinner" function in the background and storing the process ID (PID).

**stop_spinner():** This function is responsible for stopping the "spinner" process and removing the icon.

**progress_bar():** This is the function that displays the progress bar. It takes two parameters: the first is the total number of steps in the process and the second is the message that will be displayed next to the progress bar.

**usage():** This function displays a help message to the user if they pass an invalid parameter or no parameters at all.

**Starting from line 42**, the script begins to receive and process the parameters passed by the user. It uses the "getopt" tool to obtain the parameters in a more organized way.

**From line 52,** the script runs the process indicated by the user. It displays the message "Starting process..." and starts the "start_spinner" function to display the "spinner" icon.

**From line 58**, the script displays the progress bar using the "progress_bar" function. With each iteration of the process, the script updates the progress bar.

**From line 68**, the script terminates the "spinner" process and displays the message "Process finished!".

## 📝 How To Use

Here are the instructions to use this script and install the apps:

1.  First, make sure to give executable permission to the shell scripts. You can do this by running the command `sudo chmod +x *.sh` in the directory where the scripts are located.
    
2.  Next, you need to specify the directory where the shell scripts are located by passing the `--dir` flag followed by the directory path. For example, `./progress_bar.sh --dir /path/to/dir`.
    
3.  Finally, you can find various shell scripts in this repository that install different apps. Simply locate the script you need and run it using the `./script_name.sh` command.
    

Enjoy the hassle-free installation process with the progress bar and spinner features provided by the `progress_bar.sh` script!

### Fell free to contribute with your shell script from your app
