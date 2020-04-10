#This script will show HA restarted the VMs after a ESXi reooted unexpectedly coz of any reason
$Date = Get-Date
$HAVMrestartold =5
Get-VIEvent -maxsamples 100000 -Start ($Date).AddDays(-$HAVMrestartold) -type warning | Where {$_.FullFormattedMessage -match "restarted"} |select CreatedTime,FullFormattedMessage |sort CreatedTime -Descending