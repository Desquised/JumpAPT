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
   ````

   **Quick Installation with use of temporary memory (Recommended)**

   For a quick and easy in-memory installation (without saving the install.sh file), you can use the following “one-liner”    command in your Bash or Zsh terminal:

   ```bash
   source <(curl -sL https://raw.githubusercontent.com/Desquised/JumpAPT/main/install.sh)
   ```

2. **Run the installation script:**

   ```bash
   source install.sh
   ```

   **Important:** You must run the script with `source install.sh` (or `. install.sh`) for the changes to be applied correctly in your current session and your configuration file to be modified..

3. **Restart your terminal or open a new terminal window** for the changes in the configuration file to take full effect. (Although the script already applies the changes to the current session, restarting ensures that everything is set up correctly for future sessions.)

That's it! You now have the command autofix installed and running.

**Use ⌨️**

1. **Try running a command that is not installed** on your system, for example: `htop` (if you don't have it installed).
2. **You will see a message in the terminal** telling you that the command was not found and suggesting the installation command (e.g. `sudo apt install htop`).  The suggestion will be highlighted in color.
3. **Press the `Esc` key twice quickly `Esc` `Esc` **.
4. **The suggested installation command will be automatically inserted into your terminal.
5. **Press Enter** to execute the installation command.
6. **Enter your administrator password (if necessary)** and install the command.

Now you can use the command you needed without interrupting your workflow!

**Example**.

````bash
$ docker
zsh: command not found: docker
The command 'docker' was not found.
Press Esc twice to insert: sudo apt install docker <-- TIP
````

Then, when you press `Esc` `Esc`, the command line will become:

````bash
sudo apt install docker
````

Just press Enter to install it!

## Uninstall 🗑️

If you want to uninstall the “autofix” from your shell, you can use the `uninstall.sh` script.

**Quick Uninstall with “One-Liner” (Recommended)**.

Similar to the installation, you can use a ``one-liner`` to uninstall the plugin directly from GitHub:

````bash
source <(curl -sL https://raw.githubusercontent.com/Desquised/JumpAPT/main/uninstall.sh)
````
**Download the `uninstall.sh`** script from this repository:

````bash
wget https://raw.githubusercontent.com/Desquised/JumpAPT/main/uninstall.sh
# or
curl -O https://raw.githubusercontent.com/Desquised/JumpAPT/main/uninstall.sh
````

**Execute Permissions: Make sure that both install.sh and uninstall.sh have execute permissions (`chmod +x install.sh uninstall.sh`). Although this is not strictly necessary with source, it is good practice if someone downloads the scripts and tries to run them directly:**

````bash
chmod +x uninstall.sh
````

**Run the uninstallation script:**

````bash
source uninstall.sh
````

**Restart your terminal or open a new terminal window** for the changes to the configuration file to take full effect.

**Why use this script? 🤔**

* **Increase your Productivity:** Avoid interruptions and manual searches to install commands.
* **Save Time:** Install commands quickly with a keyboard shortcut.
* **Smoother Workflow:** Continue working without leaving the terminal to search for how to install something.
* **Easy to Use:** Very easy to install and use.
* **Customizable:** If you are an advanced user, you can modify the script to add support for other package managers or customize the hints.

**Upcoming Improvements (Ideas) 💡**

* **Support for more package managers:** Add support for `yum`, `dnf`, `pacman`, `brew`, etc.
* **Configuration:** Allow to configure keyboard shortcut or preferred package manager.
* **More informative messages:** Show more details about the hint or the installation process.
* **Automatic uninstallation:** Create an uninstall script to revert changes.

**Contributions 🤝**

Contributions are welcome! If you have ideas to improve this script, find bugs or want to add support for other shells or package managers, feel free to open an Issue or submit a Pull Request.

**License 📄**

This project is licensed under the **MIT License**. See the `LICENSE` file for details (if you decide to add a license file).

**Author: Encrypted 👤**

I hope you find this script useful!  If you like it, leave me a star in the repository! ⭐
