schema EnvironmentConfigStep[refName: str]:
    step = "environment-config"
    functionRef = {
        name = "function-environment-configs"
    }
    input = {
        apiVersion = "environmentconfigs.fn.crossplane.io/v1beta1"
        kind = "Input"
        spec = {
            environmentConfigs = [
                {
                    type = "Reference"
                    ref = {
                        name: refName
                    }
                }
            ]
        }
    }

schema AutoDetectReadyStep:
    step = "autodetect-ready-composed-resources"
    functionRef = {
        name: "function-auto-ready"
    }

# environmentConfigStep = lambda ref: str = None -> EnvironmentConfigStep {
#     EnvironmentConfigStep {
#         ref = ref
#     }
# }
