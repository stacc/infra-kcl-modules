schema GlobalEnvConfig:
    [str]: any
    environmentType: str
    environmentId: str
    customerName: str
    solutionOwner?: str
    azure?: AzureGlobalConfig
    primaryRegion: str

schema AzureGlobalConfig:
    [str]: any
    subscriptionId: str
    tenantId: str

