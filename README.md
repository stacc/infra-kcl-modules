KCL modules for the plaftorm infra team

### Adding a dependency

#### Crossplane provider managed by Upbound

If the provider name is prefixed with `upbound.io`, then the dependency can be added using the following command:

```sh
up dependency add "xpkg.upbound.io/upbound/provider-azure-authorization@>=v1" -f project.yaml
```

```

```
