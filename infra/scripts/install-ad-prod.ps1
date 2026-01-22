# Instalacja AD DS na PROD-DC01
Install-WindowsFeature -Name AD-Domain-Services
Import-Module ADDSDeployment

Install-ADDSForest `
    -DomainName "produkcja.local" `
    -DomainNetbiosName "PRODUKCJA" `
    -SafeModeAdministratorPassword (ConvertTo-SecureString "HasloDSRM!" -AsPlainText -Force) `
    -Force
