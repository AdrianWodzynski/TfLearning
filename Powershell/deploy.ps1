sub="subid"
resourceGroupName="rg-example-01"
location="westeurope"
vnetName="vnet-example-01"
addressPrefix="10.0.0.0/24"
subnetName="snet-example-01"
subnetAddressPrefix="10.0.0.0/27"
vmName="vm-example-01"
pipName="pip-vm-example-01"
nsgName="nsg-vm-example-01"
nicName="nic-vm-example-01"
login="azureuser"
pass="password"



az account set --subcription $sub
az group create --name $resourceGroupName --location $location

az network vnet create --resource-group $resourceGroupName --location $location
az network vnet subnet create --resource-group $resourceGroupName --vnet-name $vnetName --name $subnetName --address-prefix $subnetAddressPrefix 
az network public-ip create --resource-group $resourceGroupName --name $pipName --location $location
az network nsg create --resource-group $resourceGroupName --name $nsgName --location $location
az network nic create --resource $resourceGroupName --name $nicName --vnet-name $vnetName --subnet $subnetName --network-security-group $nsgName
az vm create --resource-group $resourceGroupName --name $vmName --image Win2019Datacenter --admin-username $login --admin-password $pass --size Standard_B1s --nics $nicName --location $location