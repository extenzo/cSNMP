[![Build status](https://ci.appveyor.com/api/projects/status/x3er7r2p0n96wggd?svg=true)](https://ci.appveyor.com/project/fabiendibot/csnmp)

# cSNMP Resource #
This is a Desired State Configuration resource that'll help you configure SNMP on your Windows Servers.

It's build and designed for PowerShell v4 & v5. It has been tested only on Windows Server 2012R2 US & FR versions.

## How install it ? ##
In order to install it, just downlooad the zip from Github and extract it in your Powershell Module Path.

## Why can't i find it on PSGallery ? ##
Because PSGallery is still in preview, and mostly because i'm lazy :) 
I'll put it on this repo in a near future. 

## What resources are available ? ##
Right now there are 5 resources availables:

1. cSNMPCommunity - It'll create/remove the community and the rights associated on it. 
2. cSNMPEnableAuthenticationTrap - It'll enable/disable the authentication for traps.
3. cSNMPManager - You can add/remove with this resource as many IP for your Nagios servers.
4. cSNMPTrapCommunity - It'll help you assign/unassign a specific community for traps.
5. cSNMPTrapDestination - Set/Unset the destination for your traps.

## How to use them ? ##
here is an example of what can be done.


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
    }

After that you should now how to apply it - `Test` and `Start-DSCConfiguration` :)

![](https://github.com/fabiendibot/cSNMP/SNMP.png)