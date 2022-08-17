function main {
    #######################################################################
    # Variable
    #######################################################################
    # YYYYMMDD-HHmm format
        # pattern 1 system is JST 
        #$datetime = Get-Date -format yyyyMMdd-HHmm

        # pattern 2 system is UTC (Azure CludShell is UTC. JST conbert to UTC+9)
        $datetime = Get-Date
        $datetime = ($datetime.addHours(9)).ToString("yyyyMMdd-HHmm")

    # Export Directory
    $dir = $PSScriptRoot + "/../export\" + $datetime + "_AzureInfo_ps1"
    New-Item $dir -type directory
    
    #######################################################################
    # Information Get(Azure PowerShell) -> Export csv file
    #######################################################################
    # NetworkSecurityGroup List
    Get-AzNetworkSecurityGroup | Select-Object Name,ResourceGroupName,Location | Export-Csv -path ($dir + "\Get-AzNetworkSecurityGroup.csv")

    # PublicIpAddress List
    Get-AzPublicIpAddress | Select-Object Name,ResourceGroupName,IpAddress,Location | Export-Csv -path ($dir + "\Get-AzPublicIpAddress.csv")

    # ResourceGroup List
    Get-AzResourceGroup | Select-Object ResourceGroupName,Location | Export-Csv -path ($dir + "\Get-AzResourceGroup.csv")
    
	# VM List
    Get-AzVM | Select-Object @{N="VMName";E={@($_.Name)}},ResourceGroupName,Location | Export-Csv -path ($dir + "\Get-AzVM.csv")
    
    # VirtualNetwork List
    Get-AzVirtualNetwork | Select-Object Name,ResourceGroupName,Location | Export-Csv -path ($dir + "\Get-AzVirtualNetwork.csv")

    #######################################################################
    # afterwork
    #######################################################################
    Write-Host "export:" (Resolve-Path $dir)
}

#######################################################################
# Entry point
#######################################################################
exit main
