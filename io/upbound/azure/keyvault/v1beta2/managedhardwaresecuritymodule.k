"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema ManagedHardwareSecurityModule:
    r"""
    ManagedHardwareSecurityModule is the Schema for the ManagedHardwareSecurityModules API. Manages a Key Vault Managed Hardware Security Module.

    Attributes
    ----------
    apiVersion : str, default is "keyvault.azure.upbound.io/v1beta2", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "ManagedHardwareSecurityModule", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpec, default is Undefined, required
        spec
    status : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatus, default is Undefined, optional
        status
    """


    apiVersion: "keyvault.azure.upbound.io/v1beta2" = "keyvault.azure.upbound.io/v1beta2"

    kind: "ManagedHardwareSecurityModule" = "ManagedHardwareSecurityModule"

    metadata?: v1.ObjectMeta

    spec: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpec

    status?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatus


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpec:
    r"""
    ManagedHardwareSecurityModuleSpec defines the desired state of ManagedHardwareSecurityModule

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProvider, default is Undefined, required
        for provider
    initProvider : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProvider

    initProvider?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRef

    publishConnectionDetailsTo?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecWriteConnectionSecretToRef


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProvider:
    r"""
    keyvault azure upbound io v1beta2 managed hardware security module spec for provider

    Attributes
    ----------
    adminObjectIds : [str], default is Undefined, optional
        Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    location : str, default is Undefined, optional
        Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    networkAcls : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderNetworkAcls, default is Undefined, optional
        network acls
    publicNetworkAccessEnabled : bool, default is Undefined, optional
        Whether traffic from public networks is permitted. Defaults to true. Changing this forces a new resource to be created.
    purgeProtectionEnabled : bool, default is Undefined, optional
        Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    resourceGroupNameRef : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    securityDomainKeyVaultCertificateIds : [str], default is Undefined, optional
        A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see activate-your-managed-hsm
    securityDomainQuorum : float, default is Undefined, optional
        Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when security_domain_key_vault_certificate_ids is specified. Valid values are between 2 and 10.
    skuName : str, default is Undefined, optional
        The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is Standard_B1. Changing this forces a new resource to be created.
    softDeleteRetentionDays : float, default is Undefined, optional
        The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days. Defaults to 90. Changing this forces a new resource to be created.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    tenantId : str, default is Undefined, optional
        The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    """


    adminObjectIds?: [str]

    location?: str

    networkAcls?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderNetworkAcls

    publicNetworkAccessEnabled?: bool

    purgeProtectionEnabled?: bool

    resourceGroupName?: str

    resourceGroupNameRef?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelector

    securityDomainKeyVaultCertificateIds?: [str]

    securityDomainQuorum?: float

    skuName?: str

    softDeleteRetentionDays?: float

    tags?: {str:str}

    tenantId?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderNetworkAcls:
    r"""
    A network_acls block as defined below.

    Attributes
    ----------
    bypass : str, default is Undefined, optional
        Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
    defaultAction : str, default is Undefined, optional
        The Default Action to use. Possible values are Allow and Deny.
    """


    bypass?: str

    defaultAction?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRefPolicy


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelectorPolicy


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecForProviderResourceGroupNameSelectorPolicy:
    r"""
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProvider:
    r"""
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    adminObjectIds : [str], default is Undefined, optional
        Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    location : str, default is Undefined, optional
        Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    networkAcls : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProviderNetworkAcls, default is Undefined, optional
        network acls
    publicNetworkAccessEnabled : bool, default is Undefined, optional
        Whether traffic from public networks is permitted. Defaults to true. Changing this forces a new resource to be created.
    purgeProtectionEnabled : bool, default is Undefined, optional
        Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
    securityDomainKeyVaultCertificateIds : [str], default is Undefined, optional
        A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see activate-your-managed-hsm
    securityDomainQuorum : float, default is Undefined, optional
        Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when security_domain_key_vault_certificate_ids is specified. Valid values are between 2 and 10.
    skuName : str, default is Undefined, optional
        The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is Standard_B1. Changing this forces a new resource to be created.
    softDeleteRetentionDays : float, default is Undefined, optional
        The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days. Defaults to 90. Changing this forces a new resource to be created.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    tenantId : str, default is Undefined, optional
        The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    """


    adminObjectIds?: [str]

    location?: str

    networkAcls?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProviderNetworkAcls

    publicNetworkAccessEnabled?: bool

    purgeProtectionEnabled?: bool

    securityDomainKeyVaultCertificateIds?: [str]

    securityDomainQuorum?: float

    skuName?: str

    softDeleteRetentionDays?: float

    tags?: {str:str}

    tenantId?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecInitProviderNetworkAcls:
    r"""
    A network_acls block as defined below.

    Attributes
    ----------
    bypass : str, default is Undefined, optional
        Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
    defaultAction : str, default is Undefined, optional
        The Default Action to use. Possible values are Allow and Deny.
    """


    bypass?: str

    defaultAction?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRefPolicy


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecProviderConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRef

    metadata?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToMetadata

    name: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRefPolicy


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecPublishConnectionDetailsToMetadata:
    r"""
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleSpecWriteConnectionSecretToRef:
    r"""
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatus:
    r"""
    ManagedHardwareSecurityModuleStatus defines the observed state of ManagedHardwareSecurityModule.

    Attributes
    ----------
    atProvider : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProvider

    conditions?: [KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusConditionsItems0]

    observedGeneration?: int


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProvider:
    r"""
    keyvault azure upbound io v1beta2 managed hardware security module status at provider

    Attributes
    ----------
    adminObjectIds : [str], default is Undefined, optional
        Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    hsmUri : str, default is Undefined, optional
        The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys.
    id : str, default is Undefined, optional
        The Key Vault Secret Managed Hardware Security Module ID.
    location : str, default is Undefined, optional
        Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    networkAcls : KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProviderNetworkAcls, default is Undefined, optional
        network acls
    publicNetworkAccessEnabled : bool, default is Undefined, optional
        Whether traffic from public networks is permitted. Defaults to true. Changing this forces a new resource to be created.
    purgeProtectionEnabled : bool, default is Undefined, optional
        Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    securityDomainKeyVaultCertificateIds : [str], default is Undefined, optional
        A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see activate-your-managed-hsm
    securityDomainQuorum : float, default is Undefined, optional
        Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when security_domain_key_vault_certificate_ids is specified. Valid values are between 2 and 10.
    skuName : str, default is Undefined, optional
        The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is Standard_B1. Changing this forces a new resource to be created.
    softDeleteRetentionDays : float, default is Undefined, optional
        The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days. Defaults to 90. Changing this forces a new resource to be created.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    tenantId : str, default is Undefined, optional
        The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
    """


    adminObjectIds?: [str]

    hsmUri?: str

    id?: str

    location?: str

    networkAcls?: KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProviderNetworkAcls

    publicNetworkAccessEnabled?: bool

    purgeProtectionEnabled?: bool

    resourceGroupName?: str

    securityDomainKeyVaultCertificateIds?: [str]

    securityDomainQuorum?: float

    skuName?: str

    softDeleteRetentionDays?: float

    tags?: {str:str}

    tenantId?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusAtProviderNetworkAcls:
    r"""
    A network_acls block as defined below.

    Attributes
    ----------
    bypass : str, default is Undefined, optional
        Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
    defaultAction : str, default is Undefined, optional
        The Default Action to use. Possible values are Allow and Deny.
    """


    bypass?: str

    defaultAction?: str


schema KeyvaultAzureUpboundIoV1beta2ManagedHardwareSecurityModuleStatusConditionsItems0:
    r"""
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration represents the .metadata.generation that the condition was set based upon.
        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
        with respect to the current state of the instance.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    observedGeneration?: int

    reason: str

    status: str

    $type: str


