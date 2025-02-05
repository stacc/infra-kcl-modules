schema GlobalEnvConfig:
    environmentName: str
    environmentType: str
    environmentId: str
    unixSuffix?: str
    azure?: AzureGlobalConfig

schema AzureGlobalConfig:
    region: str
    subscriptionId: str
    tenantId: str

