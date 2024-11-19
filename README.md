# Virtual Environment Manager
Virtual Environment Manager is a Windows batch script that automates the creation, activation, and management of Python virtual environments. It upgrades essential tools like `pip`, installs dependencies from a `requirements.txt` file, and handles errors with user-friendly notifications for smooth setup.

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

## Troubleshooting
If you encounter any issues while running the `virtual_environment_setup.bat` script, try the following steps:

### 1. **Python Not Found or Incorrect Version**
   **Error Message**: `python is not recognized as an internal or external command`
   - **Cause**: Python may not be installed or added to the system's PATH.
   - **Solution**: 
     - Verify that Python is installed by running `python --version` in Command Prompt.
     - If Python is not installed, download and install it from [python.org](https://www.python.org/downloads/).
     - Ensure Python is added to the system’s PATH during installation, or manually add it through the Environment Variables settings.

### 2. **PowerShell Not Working for Notifications**
   **Error Message**: PowerShell error or no notification pop-up.
   - **Cause**: PowerShell may not be configured properly, or script execution is restricted.
   - **Solution**:
     - Ensure that PowerShell is enabled and set up to execute scripts.
     - Run `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` in PowerShell to allow script execution.
     - Ensure the script has the correct permissions to invoke PowerShell notifications.

### 3. **Virtual Environment Creation Fails**
   **Error Message**: `Error creating virtual environment` or `Invalid virtual environment directory`
   - **Cause**: The script may not have permission to create files in the current directory, or the `venv` module might be missing.
   - **Solution**:
     - Ensure the directory is writable and that you have sufficient permissions.
     - Confirm that Python's `venv` module is installed and accessible by running `python -m venv --help`. If the `venv` module is missing, reinstall Python.

### 4. **Dependencies Fail to Install**
   **Error Message**: `Could not install requirements from requirements.txt`
   - **Cause**: Issues with the `requirements.txt` file format, missing dependencies, or network problems.
   - **Solution**:
     - Verify that the `requirements.txt` file is correctly formatted and contains valid package names.
     - Ensure that you have an active internet connection for the script to fetch dependencies.
     - If a specific package fails to install, try installing it manually with `pip install <package_name>` to diagnose the issue.

### 5. **Permission Denied**
   **Error Message**: `Access denied` or `Permission denied`
   - **Cause**: Insufficient user permissions to execute the script or write to certain directories.
   - **Solution**:
     - Right-click the `virtual_environment_setup.bat` script and select **Run as administrator** to ensure the script has the necessary privileges.
     - Alternatively, check your system’s user permissions and adjust them if necessary.

### 6. **Unexpected Termination of Script**
   **Error Message**: `Script terminated unexpectedly`
   - **Cause**: This can occur due to errors in the script or conflicts with other running processes.
   - **Solution**:
     - Review any error messages in the Command Prompt for specific causes.
     - Ensure that no other processes (e.g., Python scripts or virtual environments) are interfering with the execution.

If none of the above solutions resolve your issue, you can check the script's output for more detailed error messages and consult the [GitHub Issues](https://github.com/ReeceKrisnata/Virtual-Environment-Manager/issues) page for known issues and solutions.

## Licence
This project is proprietary software - see the [Licence](https://github.com/ReeceKrisnata/Virtual-Environment-Manager/tree/main?tab=License-1-ov-file) file for details.

## Disclaimer
This tool is intended for use at your own risk. The creators/maintainers/contributors assume no responsibility for any consequences arising from its use. Users are advised to comply with the terms of service of relevant platforms and adhere to all applicable laws, regulations, and ethical guidelines. Proceed with caution and at your own discretion.
