# AzureCloudShell-GetInfo

## Features

- [x] It works in Azure Cloud Shell, so you can try it if you have a browser.
- [x] It works with a single executable file, so it can be installed easily.

## Usage

### Run

bash

```bash
git clone https://github.com/roota5666/AzureCloudShell-GetInfo
AzureCloudShell-GetInfo/script/GetAzureInfo.sh
```

PowerShell

```PowerShesll
git clone https://github.com/roota5666/AzureCloudShell-GetInfo
AzureCloudShell-GetInfo/script/GetAzureInfo.ps1
```

### Directory Tree

```bash
/
│  .gitignore
│  README.md
│
├─export
│  ├─yyyyMMdd-HHmm_AzureInfo_az
│  │      az_disk_list.json
│  │      az_group_list.json
│  │      az_monitor_action-group_list.json
│  │      az_network_dns_zone_list.json
│  │      az_network_lb_list.json
│  │      az_network_nic_list.json
│  │      az_network_nsg_list.json
│  │      az_network_public-ip_list.json
│  │      az_network_vnet_list.json
│  │      az_vm_list.json
│  │
│  └─%Y%m%d-%H%M_AzureInfo_ps1
│          Get-AzNetworkSecurityGroup.csv
│          Get-AzPublicIpAddress.csv
│          Get-AzResourceGroup.csv
│          Get-AzVirtualNetwork.csv
│          Get-AzVM.csv
│
└─script
        GetAzureInfo.ps1
        GetAzureInfo.sh
```

## Reference Document

- [Overview of Azure Cloud Shell](https://docs.microsoft.com/en-us/azure/cloud-shell/overview)
- [Azure PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/azure/?view=azps-8.2.0)
- [az Reference](https://docs.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest)

## LICENSE

[MIT](./LICENSE)

## Author

[roota5666](https://github.com/roota5666)
