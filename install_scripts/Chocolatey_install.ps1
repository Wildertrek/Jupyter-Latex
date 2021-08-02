#step 0: ensure you have a solid, high-bandwidth and unlimited 
# connection to the internet

# Step 1: if you have already run step2 in a previous session, skip this step and move on to step2
# Open Powershell as Administrator
Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope CurrentUser 
#<Press A> for All

# Step 2: FIRST RUN!!! Run this script or command to install Chocolately in Powershell run as Administrator
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Step 3: Reopen Powershell for chocolately to take effect

# Step 4: Install Data Science Applications
choco install slack zoom python mysql mysql-python mysql.workbench mongodb r r.studio vscode tableau-public github-desktop anaconda3 speedtest 
#<Press A> for All

# Step 5: reboot your computer