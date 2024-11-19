:: Creator: Reece Krisnata
:: Modified By: Reece Krisnata
:: Created: 22/10/2024
:: Updated: 19/11/2024 
:: Version: 1.1 

@echo off

set "POWERSHELL=powershell -ExecutionPolicy Bypass -Command"

:: ---------------------------------------------
:: Define Variables
:: ---------------------------------------------
set "SCRIPT_DIR=%~dp0"
set "VENV_DIR=%SCRIPT_DIR%virtual"

:: ---------------------------------------------
:: Set Up Python Virtual Environment
:: ---------------------------------------------
if not exist "%VENV_DIR%\Scripts\activate" (
    echo "Setting up virtual environment..."
    python -m venv "%VENV_DIR%"
    if %ERRORLEVEL% NEQ 0 (
        echo "Failed to create virtual environment. Exiting."
        set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Failed to create virtual environment.', 'Failure', 'OK', 'Error')"
        %POWERSHELL% "%ALERT_MSG%"
        exit /b 1
    )
)

:: Activate Virtual Environment
echo "Activating virtual environment..."
call "%VENV_DIR%\Scripts\activate.bat"

:: ---------------------------------------------
:: Upgrade pip, setuptools, and wheel
:: ---------------------------------------------
echo "Upgrading pip, setuptools, and wheel..."
"%VENV_DIR%\Scripts\python.exe" -m pip install --upgrade pip setuptools wheel
if %ERRORLEVEL% NEQ 0 (
    echo "Failed to upgrade pip, setuptools, or wheel. Exiting."
    set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Failed to upgrade.', 'Failure', 'OK', 'Error')"
    %POWERSHELL% "%ALERT_MSG%"
    exit /b 1
)

:: ---------------------------------------------
:: Check if requirements.txt Exists
:: ---------------------------------------------
if exist "%SCRIPT_DIR%requirements.txt" (
    echo "requirements.txt found. Installing dependencies..."

    :: Check Installed Dependencies
    pip freeze > installed_requirements.txt
    fc installed_requirements.txt requirements.txt > nul

    :: Install Python Dependencies
    echo "Installing Python dependencies..."
    pip install -r requirements.txt
    if %ERRORLEVEL% NEQ 0 (
        echo "Failed to install Python dependencies. Exiting."
        set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Failed to install Python dependencies.', 'Failure', 'OK', 'Error')"
        %POWERSHELL% "%ALERT_MSG%"
        exit /b 1
    )
) else (
    echo "No requirements.txt found. Skipping dependency installation."
)

:: ---------------------------------------------
:: End of Script
:: ---------------------------------------------
echo "Script execution completed."
set "ALERT_MSG=Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Script execution completed successfully.', 'Completion', 'OK', 'Information')"
%POWERSHELL% "%ALERT_MSG%"
exit /b 0