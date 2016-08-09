Configuration Test {
 
    Import-DscResource -ModuleName @{ModuleName=”cSNMP”;RequiredVersion="0.2"}
 
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
