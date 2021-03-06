@{

ModuleVersion = '0.4'

GUID = '2b73f494-5e6f-4753-b41c-b0f447be029f'

Author = 'Fabien Dibot'

Description = 'Module with DSC Resources for handling SNMP configurations'

PowerShellVersion = '4.0'

CLRVersion = '4.0'

PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

        # A URL to the license for this module.
        LicenseUri = ''

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/fabiendibot/cSNMP'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Updated manifest for PSGallery publish'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'
}

