# Tworzenie trustu z produkcja.local do external.local
New-ADTrust -Name "external.local" `
    -SourceForest "produkcja.local" `
    -TargetForest "external.local" `
    -Direction Incoming `
    -ForestTrust `
    -Authentication Forest `
    -TrustPassword (ConvertTo-SecureString "TrustHaslo!" -AsPlainText -Force)
