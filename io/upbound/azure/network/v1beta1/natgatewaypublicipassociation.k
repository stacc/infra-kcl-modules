"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema NATGatewayPublicIPAssociation:
    r"""
    NATGatewayPublicIPAssociation is the Schema for the NATGatewayPublicIPAssociations API. Manages the association between a NAT Gateway and a Public IP.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "NATGatewayPublicIPAssociation", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta1" = "network.azure.upbound.io/v1beta1"

    kind: "NATGatewayPublicIPAssociation" = "NATGatewayPublicIPAssociation"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpec

    status?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatus


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpec:
    r"""
    NATGatewayPublicIPAssociationSpec defines the desired state of NATGatewayPublicIPAssociation

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
    forProvider : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProvider:
    r"""
    network azure upbound io v1beta1 n a t gateway public IP association spec for provider

    Attributes
    ----------
    natGatewayId : str, default is Undefined, optional
        The ID of the NAT Gateway. Changing this forces a new resource to be created.
    natGatewayIdRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRef, default is Undefined, optional
        nat gateway Id ref
    natGatewayIdSelector : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelector, default is Undefined, optional
        nat gateway Id selector
    publicIpAddressId : str, default is Undefined, optional
        The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
    publicIpAddressIdRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRef, default is Undefined, optional
        public Ip address Id ref
    publicIpAddressIdSelector : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelector, default is Undefined, optional
        public Ip address Id selector
    """


    natGatewayId?: str

    natGatewayIdRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRef

    natGatewayIdSelector?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelector

    publicIpAddressId?: str

    publicIpAddressIdRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRef

    publicIpAddressIdSelector?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelector


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRef:
    r"""
    Reference to a NATGateway in network to populate natGatewayId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelector:
    r"""
    Selector for a NATGateway in network to populate natGatewayId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderNatGatewayIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRef:
    r"""
    Reference to a PublicIP in network to populate publicIpAddressId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelector:
    r"""
    Selector for a PublicIP in network to populate publicIpAddressId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecForProviderPublicIPAddressIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProvider:
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
    natGatewayId : str, default is Undefined, optional
        The ID of the NAT Gateway. Changing this forces a new resource to be created.
    natGatewayIdRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRef, default is Undefined, optional
        nat gateway Id ref
    natGatewayIdSelector : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelector, default is Undefined, optional
        nat gateway Id selector
    publicIpAddressId : str, default is Undefined, optional
        The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
    publicIpAddressIdRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRef, default is Undefined, optional
        public Ip address Id ref
    publicIpAddressIdSelector : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelector, default is Undefined, optional
        public Ip address Id selector
    """


    natGatewayId?: str

    natGatewayIdRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRef

    natGatewayIdSelector?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelector

    publicIpAddressId?: str

    publicIpAddressIdRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRef

    publicIpAddressIdSelector?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelector


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRef:
    r"""
    Reference to a NATGateway in network to populate natGatewayId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelector:
    r"""
    Selector for a NATGateway in network to populate natGatewayId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderNatGatewayIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRef:
    r"""
    Reference to a PublicIP in network to populate publicIpAddressId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelector:
    r"""
    Selector for a PublicIP in network to populate publicIpAddressId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelectorPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecInitProviderPublicIPAddressIDSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatus:
    r"""
    NATGatewayPublicIPAssociationStatus defines the observed state of NATGatewayPublicIPAssociation.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusAtProvider:
    r"""
    network azure upbound io v1beta1 n a t gateway public IP association status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        id
    natGatewayId : str, default is Undefined, optional
        The ID of the NAT Gateway. Changing this forces a new resource to be created.
    publicIpAddressId : str, default is Undefined, optional
        The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
    """


    id?: str

    natGatewayId?: str

    publicIpAddressId?: str


schema NetworkAzureUpboundIoV1beta1NATGatewayPublicIPAssociationStatusConditionsItems0:
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


