# Virtual Environment Manager
Virtual Environment Manager is a Windows batch script that automates the creation, activation, and management of Python virtual environments. It upgrades essential tools like pip, installs dependencies from a `requirements.txt` file, and handles errors with user-friendly notifications for smooth setup.

## Table of Contents
1. [Overview](#overview)  
2. [Requirements](#requirements)  
3. [Features](#features)  
4. [Usage Instructions](#usage-instructions)  
5. [Example](#example)  
6. [Troubleshooting](#troubleshooting)  
7. [License](#license)  
8. [Disclaimer](#disclaimer)  

## Overview
The **Virtual Environment Manager** is a Windows-based batch script (`virtual_environment_setup.bat`) designed to automate the creation, activation, and maintenance of Python virtual environments. It handles setting up a virtual environment, upgrading `pip`, `setuptools`, and `wheel`, and installing dependencies from a `requirements.txt` file, all while providing clear error handling and user notifications.

## Requirements
- **Python**: Ensure Python is installed and added to your system's PATH.
- **PowerShell**: Required for error and success notifications.
- **Windows Environment**: This script is designed for Windows systems.

## Features
- **Automated Virtual Environment Setup**: Creates a Python virtual environment in the current directory if one does not already exist.
- **Automatic Tool Upgrades**: Upgrades `pip`, `setuptools`, and `wheel` to their latest versions.
- **Dependency Management**: Installs dependencies listed in a `requirements.txt` file if it exists.
- **Error Handling**: Displays PowerShell pop-up alerts on errors or success, making it user-friendly and easy to troubleshoot.
- **Cross-Platform Friendly**: Designed for use on Windows systems.

## Usage Instructions
1. **Download the Script**: Save the `virtual_environment_setup.bat` file to your local directory.
2. **Prepare Your Project**: Place the `requirements.txt` file in the same directory if you have dependencies to install.
3. **Run the Script**: Open a Command Prompt and execute the script:
   ```bash
   virtual_environment_setup.bat
   ```
4. **Follow Prompts**: The script will automatically set up and activate the virtual environment, upgrade necessary tools, and install dependencies if applicable.

## Example
Run the script in a project folder with a `requirements.txt` file:
```bash
virtual_environment_setup.bat
```
The script will:
- Create a virtual environment if one does not exist.
- Upgrade `pip`, `setuptools`, and `wheel` to the latest versions.
- Install any dependencies listed in the `requirements.txt` file.

## Licence
This project is proprietary software - see the [Licence](https://github.com/ReeceKrisnata/Virtual-Environment-Manager/tree/main?tab=License-1-ov-file) file for details.

## Disclaimer
This tool is intended for use at your own risk. The creators/maintainers/contributors assume no responsibility for any consequences arising from its use. Users are advised to comply with the terms of service of relevant platforms and adhere to all applicable laws, regulations, and ethical guidelines. Proceed with caution and at your own discretion.
