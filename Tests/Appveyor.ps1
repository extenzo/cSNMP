# This script will invoke a DSC configuration
# This is a simple proof of concept

"`n`tPerforming DSC Configuration`n"

Enable-PSRemoting -Force

ls "C:\Program Files\WindowsPowerShell\Modules\cSNMP\0.2"

. .\Tests\SNMP.ps1
 
( Test ).FullName | Set-Content -Path .\Artifacts.txt
 
Start-DscConfiguration -Path .\Test -Wait -Force -verbose
