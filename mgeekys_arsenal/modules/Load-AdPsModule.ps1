    # This load the Active Directory PowerShell module

    # DLL bytes as a string

    # Grab the Microsoft.ActiveDirectory.Management.dll bytes from the Base64 encoded string
    $ADModuleBytes  = [System.Convert]::FromBase64String($ADModuleString) 

    # Load the bytes via .net Reflection
    $Assembly = [System.Reflection.Assembly]::Load($ADModuleBytes)

    # Import module
    Import-Module -Assembly $Assembly