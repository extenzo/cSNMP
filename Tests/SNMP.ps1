Configuration Test {
 
    Import-DscResource -ModuleName cSNMP
 
    Node localhost {
 
        WindowsFeature SNMPService {
    
            Name = 'SNMP-Service'
            Ensure = 'Present'
 
        }
 
        WindowsFeature SNMPRSAT {
 
            Name = 'RSAT-SNMP'
            Ensure = 'Present'
 
        } 
 
        cSNMPCommunity Community {
 
            Community = "Test"
            Right = "ReadOnly"
            Ensure = "Present"
            DependsOn = '[WindowsFeature]SNMPRSAT' 
        }      
    }
}
 
 Test
