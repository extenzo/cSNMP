    
Describe "Test DSC Resource execution" {
    Copy-Item "cSNMPCommunity.psm1" TestDrive:\script.ps1 -Force
    Mock Export-ModuleMember {return $true}
    . "TestDrive:\script.ps1"

    It "Test if the Get-TargetResource return a hashtable" {
        (Get-TargetResource nagios).GetType() -as [string] | Should Be 'hashtable'
    }

    It "Test if the Get-TargetResource return true or false" {
        (Test-TargetResource -community nagios -Right ReadOnly -Ensure "Absent").GetType() -as [string] | Should Be 'bool'
    }
}