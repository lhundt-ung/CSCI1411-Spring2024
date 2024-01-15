# Windows OS Key Areas

# GUI/Command Line
# Create a new user
New-LocalUser "user1"

#Registry
# https://learn.microsoft.com/en-us/powershell/scripting/samples/working-with-registry-keys?view=powershell-7.3
# [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
Get-ChildItem -Path HKCU:\ -Recurse | measure
Set-ItemProperty -Path HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -Name calc -Value "calc.exe"


#Force a system crash
taskkill.exe /f /im svchost.exe
Get-ScheduledTask -TaskPath "\"

# Services
Get-Service
Get-Service | Where-Object -Property Status -eq "Running"
Get-Service | Where-Object -Property Status -eq "Running" | measure

# Event Log
Get-EventLog -LogName System | Measure
Get-EventLog -LogName System -Newest 5
Get-EventLog -LogName System -EntryType Error
Get-EventLog -LogName Security -InstanceId "4624" -Message *administrator*  | fl *