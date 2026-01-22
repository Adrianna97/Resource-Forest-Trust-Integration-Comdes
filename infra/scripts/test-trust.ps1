# Walidacja trustu
Test-ADTrustRelationship -Source "produkcja.local" -Target "external.local"

# Test DNS
Resolve-DnsName external.local
Resolve-DnsName produkcja.local

# Test logowania
Get-ADUser -Server "external.local" -Identity "externalUser01"
