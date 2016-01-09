Describe "Validate your WSUS Configuration" {
    
    $Communities = [PSCustomObject](Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\services\SNMP\Parameters\ValidCommunities").psbase.properties | ? { 
            $_.Name -notin @('PSDrive','PSProvider','PSCHildName','PSPath','PSParentPath') 
         } | Select Name,Value
	$Community = $Communities | ? { $_.Name -eq 'Test' }
	$SNMPService = Get-Service SNMP
	
    It "Verify if Test community exists" {
        $Community.Name | Should be $true
    }
 
    It "Test community is ReadOnly" {
        $Community.Value | Should be "4"
    }
    
    It "SNMP Service is started" {
        $SNMPService.Status | Should be "Running"
    }
	
}