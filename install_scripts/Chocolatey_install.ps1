
# Step 1:
# Open Powershell as Administrator
Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope CurrentUser 
#<Press A> for All

# Step 2: Run this script or command to install Chocolately in Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Step 3: Reopen Powershell for chocolately to take effect

# Step 4: Install Data Science Applications
choco install slack zoom python mysql mysql-python mysql.workbench mongodb r r.studio vscode tableau-public github-desktop anaconda3 speedtest 
#<Press A> for All

#reboot