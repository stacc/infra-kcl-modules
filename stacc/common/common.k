getArgoAnnotations = lambda wave: str -> {str:str} {
    {
        "argocd.argoproj.io/sync-options" = 'SkipDryRunOnMissingResource=true'
        "argocd-argoproj.io/sync-wave" = wave
    }
}

getModuleAnnotations = lambda cloud: str, module: str, argoWave: str {
    _common = {
        "infra.stacc.com/cloud" = cloud
        "infra.stacc.com/module" = module
    }
    _argo = getArgoAnnotations(argoWave)
    final = _common | _argo
}

getIdentifierLabels = lambda module: str, useFor: str, env: str {
    {
        "stacc.com/module" = module
        "stacc.com/useFor" = useFor
        "stacc.com/environment" = env
    }
}
