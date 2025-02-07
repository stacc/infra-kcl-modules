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

globalEnvFromCtx = lambda envCtx: any -> GlobalEnvConfig {
    globalEnv = GlobalEnvConfig {
        environmentName: envCtx.environmentName
        environmentType: envCtx.environmentType
        environmentId: envCtx.environmentId
    }

    if envCtx.azure:
        globalEnv.azure = AzureGlobalConfig {
            region: envCtx.azure.region
            subscriptionId: envCtx.azure.subscriptionId
            tenantId: envCtx.azure.tenantId
        }

    globalEnv
}
