"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema LoadBalancerNatPool:
    r"""
    LoadBalancerNatPool is the Schema for the LoadBalancerNatPools API. Manages a Load Balancer NAT Pool.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "LoadBalancerNatPool", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta1" = "network.azure.upbound.io/v1beta1"

    kind: "LoadBalancerNatPool" = "LoadBalancerNatPool"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpec

    status?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatus


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpec:
    r"""
    LoadBalancerNatPoolSpec defines the desired state of LoadBalancerNatPool

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
    forProvider : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProvider:
    r"""
    network azure upbound io v1beta1 load balancer nat pool spec for provider

    Attributes
    ----------
    backendPort : float, default is Undefined, optional
        The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
    floatingIpEnabled : bool, default is Undefined, optional
        Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
    frontendIpConfigurationName : str, default is Undefined, optional
        The name of the frontend IP configuration exposing this rule.
    frontendPortEnd : float, default is Undefined, optional
        The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    frontendPortStart : float, default is Undefined, optional
        The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    idleTimeoutInMinutes : float, default is Undefined, optional
        Specifies the idle timeout in minutes for TCP connections. Valid values are between 4 and 30. Defaults to 4.
    loadbalancerId : str, default is Undefined, optional
        The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
    loadbalancerIdRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRef, default is Undefined, optional
        loadbalancer Id ref
    loadbalancerIdSelector : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelector, default is Undefined, optional
        loadbalancer Id selector
    $protocol : str, default is Undefined, optional
        The transport protocol for the external endpoint. Possible values are All, Tcp and Udp.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    tcpResetEnabled : bool, default is Undefined, optional
        Is TCP Reset enabled for this Load Balancer Rule?
    """


    backendPort?: float

    floatingIpEnabled?: bool

    frontendIpConfigurationName?: str

    frontendPortEnd?: float

    frontendPortStart?: float

    idleTimeoutInMinutes?: float

    loadbalancerId?: str

    loadbalancerIdRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRef

    loadbalancerIdSelector?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelector

    $protocol?: str

    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelector

    tcpResetEnabled?: bool


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRef:
    r"""
    Reference to a LoadBalancer in network to populate loadbalancerId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRefPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelector:
    r"""
    Selector for a LoadBalancer in network to populate loadbalancerId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderLoadbalancerIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecForProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProvider:
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
    backendPort : float, default is Undefined, optional
        The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
    floatingIpEnabled : bool, default is Undefined, optional
        Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
    frontendIpConfigurationName : str, default is Undefined, optional
        The name of the frontend IP configuration exposing this rule.
    frontendPortEnd : float, default is Undefined, optional
        The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    frontendPortStart : float, default is Undefined, optional
        The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    idleTimeoutInMinutes : float, default is Undefined, optional
        Specifies the idle timeout in minutes for TCP connections. Valid values are between 4 and 30. Defaults to 4.
    $protocol : str, default is Undefined, optional
        The transport protocol for the external endpoint. Possible values are All, Tcp and Udp.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    tcpResetEnabled : bool, default is Undefined, optional
        Is TCP Reset enabled for this Load Balancer Rule?
    """


    backendPort?: float

    floatingIpEnabled?: bool

    frontendIpConfigurationName?: str

    frontendPortEnd?: float

    frontendPortStart?: float

    idleTimeoutInMinutes?: float

    $protocol?: str

    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelector

    tcpResetEnabled?: bool


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecInitProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatus:
    r"""
    LoadBalancerNatPoolStatus defines the observed state of LoadBalancerNatPool.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusAtProvider:
    r"""
    network azure upbound io v1beta1 load balancer nat pool status at provider

    Attributes
    ----------
    backendPort : float, default is Undefined, optional
        The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
    floatingIpEnabled : bool, default is Undefined, optional
        Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
    frontendIpConfigurationId : str, default is Undefined, optional
        The ID of the Load Balancer NAT pool.
    frontendIpConfigurationName : str, default is Undefined, optional
        The name of the frontend IP configuration exposing this rule.
    frontendPortEnd : float, default is Undefined, optional
        The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    frontendPortStart : float, default is Undefined, optional
        The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
    id : str, default is Undefined, optional
        The ID of the Load Balancer NAT pool.
    idleTimeoutInMinutes : float, default is Undefined, optional
        Specifies the idle timeout in minutes for TCP connections. Valid values are between 4 and 30. Defaults to 4.
    loadbalancerId : str, default is Undefined, optional
        The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
    $protocol : str, default is Undefined, optional
        The transport protocol for the external endpoint. Possible values are All, Tcp and Udp.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
    tcpResetEnabled : bool, default is Undefined, optional
        Is TCP Reset enabled for this Load Balancer Rule?
    """


    backendPort?: float

    floatingIpEnabled?: bool

    frontendIpConfigurationId?: str

    frontendIpConfigurationName?: str

    frontendPortEnd?: float

    frontendPortStart?: float

    id?: str

    idleTimeoutInMinutes?: float

    loadbalancerId?: str

    $protocol?: str

    resourceGroupName?: str

    tcpResetEnabled?: bool


schema NetworkAzureUpboundIoV1beta1LoadBalancerNatPoolStatusConditionsItems0:
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


