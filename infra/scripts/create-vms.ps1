# Tworzenie maszyn wirtualnych w Azure (przykład)
New-AzVM -Name "PROD-DC01" -ResourceGroupName "AD-RG" -Location "westeurope" -Image "Win2022Datacenter" -Size "Standard_D2s_v3"
New-AzVM -Name "EXT-DC01" -ResourceGroupName "AD-RG" -Location "westeurope" -Image "Win2022Datacenter" -Size "Standard_D2s_v3"
