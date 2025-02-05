_resourceTypeSuffixMap = {
    "ResourceGroup": "rg"
    "VirtualMachine": "vm"
    "VirtualNetwork": "vnet"
    "NetworkSecurityGroup": "nsg"
    "StorageAccount": "st"
    "KeyVault": "kv"
    "AppService": "app"
    "AzureFunction": "func"
    "ContainerRegistry": "acr"
    "PostgresFlexibleServer": "psql"
    "PostgresDatabase": "psqldb"
    "MSSqlServer": "mssql"
}

_azureLocationCodes: {str:str} = {
    "westeurope": "we"
    "northeruope": "ne"
    "norwayeast": "noe"
}

getAzResourceSuffix = lambda resourceType: str -> str {
    _resourceTypeSuffixMap[resourceType] if resourceType in _resourceTypeSuffixMap else resourceType
}
