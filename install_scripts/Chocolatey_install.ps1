# Step 0: ensure you have a solid, high-bandwidth and unlimited 
# connection to the internet

# Step 1: Open Powershell and run as Administrator

# Step 2: Run this command to install Chocolately in Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Step 2: Close and Reopen Powershell for chocolately to take effect

# Step 3: Install Data Science Applications
choco install slack zoom python mysql mysql-python mysql.workbench mongodb r r.studio vscode tableau-public github-desktop anaconda3 speedtest gpower
#<Press A> for All

# Step 4: reboot your computer
