"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema VirtualNetworkPeering:
    r"""
    VirtualNetworkPeering is the Schema for the VirtualNetworkPeerings API. Manages a virtual network peering which allows resources to access other resources in the linked virtual network.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "VirtualNetworkPeering", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta1" = "network.azure.upbound.io/v1beta1"

    kind: "VirtualNetworkPeering" = "VirtualNetworkPeering"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpec

    status?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatus


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpec:
    r"""
    VirtualNetworkPeeringSpec defines the desired state of VirtualNetworkPeering

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
    forProvider : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProvider:
    r"""
    network azure upbound io v1beta1 virtual network peering spec for provider

    Attributes
    ----------
    allowForwardedTraffic : bool, default is Undefined, optional
        Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false.
    allowGatewayTransit : bool, default is Undefined, optional
        Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to false.
    allowVirtualNetworkAccess : bool, default is Undefined, optional
        Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to true.
    localSubnetNames : [str], default is Undefined, optional
        A list of local Subnet names that are Subnet peered with remote Virtual Network.
    onlyIpv6PeeringEnabled : bool, default is Undefined, optional
        Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
    peerCompleteVirtualNetworksEnabled : bool, default is Undefined, optional
        Specifies whether complete Virtual Network address space is peered. Defaults to true. Changing this forces a new resource to be created.
    remoteSubnetNames : [str], default is Undefined, optional
        A list of remote Subnet names from remote Virtual Network that are Subnet peered.
    remoteVirtualNetworkId : str, default is Undefined, optional
        The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
    remoteVirtualNetworkIdRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRef, default is Undefined, optional
        remote virtual network Id ref
    remoteVirtualNetworkIdSelector : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelector, default is Undefined, optional
        remote virtual network Id selector
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    triggers : {str:str}, default is Undefined, optional
        A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
    useRemoteGateways : bool, default is Undefined, optional
        Controls if remote gateways can be used on the local virtual network. If the flag is set to true, and allow_gateway_transit on the remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway. Defaults to false.
    virtualNetworkName : str, default is Undefined, optional
        The name of the virtual network. Changing this forces a new resource to be created.
    virtualNetworkNameRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRef, default is Undefined, optional
        virtual network name ref
    virtualNetworkNameSelector : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelector, default is Undefined, optional
        virtual network name selector
    """


    allowForwardedTraffic?: bool

    allowGatewayTransit?: bool

    allowVirtualNetworkAccess?: bool

    localSubnetNames?: [str]

    onlyIpv6PeeringEnabled?: bool

    peerCompleteVirtualNetworksEnabled?: bool

    remoteSubnetNames?: [str]

    remoteVirtualNetworkId?: str

    remoteVirtualNetworkIdRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRef

    remoteVirtualNetworkIdSelector?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelector

    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelector

    triggers?: {str:str}

    useRemoteGateways?: bool

    virtualNetworkName?: str

    virtualNetworkNameRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRef

    virtualNetworkNameSelector?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelector


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRef:
    r"""
    Reference to a VirtualNetwork in network to populate remoteVirtualNetworkId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelector:
    r"""
    Selector for a VirtualNetwork in network to populate remoteVirtualNetworkId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderRemoteVirtualNetworkIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRef:
    r"""
    Reference to a VirtualNetwork in network to populate virtualNetworkName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelector:
    r"""
    Selector for a VirtualNetwork in network to populate virtualNetworkName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecForProviderVirtualNetworkNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProvider:
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
    allowForwardedTraffic : bool, default is Undefined, optional
        Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false.
    allowGatewayTransit : bool, default is Undefined, optional
        Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to false.
    allowVirtualNetworkAccess : bool, default is Undefined, optional
        Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to true.
    localSubnetNames : [str], default is Undefined, optional
        A list of local Subnet names that are Subnet peered with remote Virtual Network.
    onlyIpv6PeeringEnabled : bool, default is Undefined, optional
        Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
    peerCompleteVirtualNetworksEnabled : bool, default is Undefined, optional
        Specifies whether complete Virtual Network address space is peered. Defaults to true. Changing this forces a new resource to be created.
    remoteSubnetNames : [str], default is Undefined, optional
        A list of remote Subnet names from remote Virtual Network that are Subnet peered.
    remoteVirtualNetworkId : str, default is Undefined, optional
        The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
    remoteVirtualNetworkIdRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRef, default is Undefined, optional
        remote virtual network Id ref
    remoteVirtualNetworkIdSelector : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelector, default is Undefined, optional
        remote virtual network Id selector
    triggers : {str:str}, default is Undefined, optional
        A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
    useRemoteGateways : bool, default is Undefined, optional
        Controls if remote gateways can be used on the local virtual network. If the flag is set to true, and allow_gateway_transit on the remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway. Defaults to false.
    """


    allowForwardedTraffic?: bool

    allowGatewayTransit?: bool

    allowVirtualNetworkAccess?: bool

    localSubnetNames?: [str]

    onlyIpv6PeeringEnabled?: bool

    peerCompleteVirtualNetworksEnabled?: bool

    remoteSubnetNames?: [str]

    remoteVirtualNetworkId?: str

    remoteVirtualNetworkIdRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRef

    remoteVirtualNetworkIdSelector?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelector

    triggers?: {str:str}

    useRemoteGateways?: bool


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRef:
    r"""
    Reference to a VirtualNetwork in network to populate remoteVirtualNetworkId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelector:
    r"""
    Selector for a VirtualNetwork in network to populate remoteVirtualNetworkId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecInitProviderRemoteVirtualNetworkIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatus:
    r"""
    VirtualNetworkPeeringStatus defines the observed state of VirtualNetworkPeering.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusAtProvider:
    r"""
    network azure upbound io v1beta1 virtual network peering status at provider

    Attributes
    ----------
    allowForwardedTraffic : bool, default is Undefined, optional
        Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false.
    allowGatewayTransit : bool, default is Undefined, optional
        Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to false.
    allowVirtualNetworkAccess : bool, default is Undefined, optional
        Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to true.
    id : str, default is Undefined, optional
        The ID of the Virtual Network Peering.
    localSubnetNames : [str], default is Undefined, optional
        A list of local Subnet names that are Subnet peered with remote Virtual Network.
    onlyIpv6PeeringEnabled : bool, default is Undefined, optional
        Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
    peerCompleteVirtualNetworksEnabled : bool, default is Undefined, optional
        Specifies whether complete Virtual Network address space is peered. Defaults to true. Changing this forces a new resource to be created.
    remoteSubnetNames : [str], default is Undefined, optional
        A list of remote Subnet names from remote Virtual Network that are Subnet peered.
    remoteVirtualNetworkId : str, default is Undefined, optional
        The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
    triggers : {str:str}, default is Undefined, optional
        A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
    useRemoteGateways : bool, default is Undefined, optional
        Controls if remote gateways can be used on the local virtual network. If the flag is set to true, and allow_gateway_transit on the remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway. Defaults to false.
    virtualNetworkName : str, default is Undefined, optional
        The name of the virtual network. Changing this forces a new resource to be created.
    """


    allowForwardedTraffic?: bool

    allowGatewayTransit?: bool

    allowVirtualNetworkAccess?: bool

    id?: str

    localSubnetNames?: [str]

    onlyIpv6PeeringEnabled?: bool

    peerCompleteVirtualNetworksEnabled?: bool

    remoteSubnetNames?: [str]

    remoteVirtualNetworkId?: str

    resourceGroupName?: str

    triggers?: {str:str}

    useRemoteGateways?: bool

    virtualNetworkName?: str


schema NetworkAzureUpboundIoV1beta1VirtualNetworkPeeringStatusConditionsItems0:
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


