# Instalacja AD DS na EXT-DC01
Install-WindowsFeature -Name AD-Domain-Services
Import-Module ADDSDeployment

Install-ADDSForest `
    -DomainName "external.local" `
    -DomainNetbiosName "EXTERNAL" `
    -SafeModeAdministratorPassword (ConvertTo-SecureString "HasloDSRM!" -AsPlainText -Force) `
    -Force
