# Na PROD-DC01
Add-DnsServerConditionalForwarderZone -Name "external.local" -MasterServers "10.0.1.4"

# Na EXT-DC01
Add-DnsServerConditionalForwarderZone -Name "produkcja.local" -MasterServers "10.0.0.4"
