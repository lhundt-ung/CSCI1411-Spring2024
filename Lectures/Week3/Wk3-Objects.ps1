#CMDLETs and objects
Get-Process

#0 Get a single process by name
$p = Get-Process -ProcessName "win32calc"
$p
$p.Name 
$p.kill()

#1. What type of Object is $processes
$processes = Get-Process
$processes.GetType()

#2. What type of Object is our first element in our Array
$processes[0].GetType()
$processes[0] | Get-Member
$processes[0].Threads
$processes[0].ProcessName

$processes.ProcessName



#3. Ways to count the number of items in the array
$processes | Measure-Object
$processes | measure
$processes.Count

# Use of fl (Format-List) to display all properties and current values
$processes[0] | format-list *
$processes[0] | fl *

$processes2 = $processes | Where-Object {$_.ID -lt 4000} 
$processes2

Get-ChildItem
$files = Get-ChildItem

#Select-Object has a great way to pull in specific Object Properties
Get-ChildItem -recurse | Select-Object -Property Name, Length
$files
