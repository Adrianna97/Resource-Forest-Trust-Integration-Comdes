# Konfiguracja reguł NSG dla portów AD, DNS, Kerberos
$ports = @(53, 88, 135, 389, 445, 636, 3268, 3269)
foreach ($port in $ports) {
    New-AzNetworkSecurityRuleConfig -Name "Allow-Port-$port" `
        -Protocol "Tcp" -Direction "Inbound" -Priority ($port + 100) `
        -SourceAddressPrefix "*" -SourcePortRange "*" `
        -DestinationAddressPrefix "*" -DestinationPortRange "$port" `
        -Access "Allow"
}
