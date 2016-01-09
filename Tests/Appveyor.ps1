# This script will invoke a DSC configuration
# This is a simple proof of concept

"`n`tPerforming DSC Configuration`n"

Enable-PSRemoting -Force

. .\Tests\SNMP.ps1
 
( TestWSUS ).FullName | Set-Content -Path .\Artifacts.txt
 
Start-DscConfiguration -Path .\Test -Wait -Force -verbose
