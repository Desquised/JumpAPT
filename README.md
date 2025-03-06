# JumpAPT
This script adds a function to suggest and install missing commands directly in your Bash or Zsh terminal with a simple shortcut, saving time and avoiding interruptions in your workflow!

# Bash/Zsh Autofix: Easily Install Missing Commands 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This script enhances your **Bash** and **Zsh** command line experience by adding an “autofix” function that suggests and installs commands that are not installed directly from your terminal. Tired of seeing the “command not found” error? This script helps you solve it quickly!

**How does it work?**

When you try to run a command that is not installed on your system, instead of just displaying the standard error, this script does the following:

1. **Detects the “command not found” error.**
2. **Suggests the installation command** using `apt install` (for Debian/Ubuntu and derivative systems) or `snap install` (if `snap` is available).  *Currently only `apt` and `snap` are supported, but this can be expanded.
3. **Display the hint in your terminal** in color so that it is easy to identify.
4. **Allows you to insert the hint in your terminal** with a simple keyboard shortcut: **Double Esc**.

With just two presses of the Esc key, you can insert the suggested installation command, execute it and continue working without interruption!

**Key Features ✨**.

* **Support for Bash and Zsh:** Works perfectly on both shells, the most popular on Linux and macOS.
* **Simple Installation:** Installs with a single command: `source install.sh`.
* **Minimalistic and Non-Intrusive:** The script is lightweight and efficient, without affecting the performance of your shell.
* **Intelligent Suggestions:** Automatically detects whether to use `apt install` or `snap install` based on the availability of package managers on your system.
* **Quick and Convenient Shortcut:** Insert the hint with a double tap of the Esc key, keeping your hands on the keyboard.
* **Easy to Uninstall (Manually):** Simply remove the code block added to your configuration file (`.bashrc` or `.zshrc`).

**Installation 🛠️**

1. **Download the `install.sh`** script from this repository to your local machine. You can use `wget` or `curl`:

   ````bash
   wget https://raw.githubusercontent.com/Desquised/JumpAPT/main/install.sh
                                     # or
   curl -O https://raw.githubusercontent.com/Desquised/JumpAPT/main/install.sh
