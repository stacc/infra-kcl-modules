"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema DNSMXRecord:
    r"""
    DNSMXRecord is the Schema for the DNSMXRecords API. Manages a DNS MX Record.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "DNSMXRecord", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta1DNSMXRecordSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta1DNSMXRecordStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta1" = "network.azure.upbound.io/v1beta1"

    kind: "DNSMXRecord" = "DNSMXRecord"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta1DNSMXRecordSpec

    status?: NetworkAzureUpboundIoV1beta1DNSMXRecordStatus


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpec:
    r"""
    DNSMXRecordSpec defines the desired state of DNSMXRecord

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
    forProvider : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProvider:
    r"""
    network azure upbound io v1beta1 DNS m x record spec for provider

    Attributes
    ----------
    record : [NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderRecordItems0], default is Undefined, optional
        A list of values that make up the MX record. Each record block supports fields documented below.
    resourceGroupName : str, default is Undefined, optional
        Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    ttl : float, default is Undefined, optional
        The Time To Live (TTL) of the DNS record in seconds.
    zoneName : str, default is Undefined, optional
        Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
    zoneNameRef : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRef, default is Undefined, optional
        zone name ref
    zoneNameSelector : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelector, default is Undefined, optional
        zone name selector
    """


    record?: [NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderRecordItems0]

    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelector

    tags?: {str:str}

    ttl?: float

    zoneName?: str

    zoneNameRef?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRef

    zoneNameSelector?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelector


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderRecordItems0:
    r"""
    network azure upbound io v1beta1 DNS m x record spec for provider record items0

    Attributes
    ----------
    exchange : str, default is Undefined, optional
        The mail server responsible for the domain covered by the MX record.
    preference : str, default is Undefined, optional
        String representing the "preference” value of the MX records. Records with lower preference value take priority.
    """


    exchange?: str

    preference?: str


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRef:
    r"""
    Reference to a DNSZone in network to populate zoneName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRefPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelector:
    r"""
    Selector for a DNSZone in network to populate zoneName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecForProviderZoneNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProvider:
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
    record : [NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProviderRecordItems0], default is Undefined, optional
        A list of values that make up the MX record. Each record block supports fields documented below.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    ttl : float, default is Undefined, optional
        The Time To Live (TTL) of the DNS record in seconds.
    """


    record?: [NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProviderRecordItems0]

    tags?: {str:str}

    ttl?: float


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecInitProviderRecordItems0:
    r"""
    network azure upbound io v1beta1 DNS m x record spec init provider record items0

    Attributes
    ----------
    exchange : str, default is Undefined, optional
        The mail server responsible for the domain covered by the MX record.
    preference : str, default is Undefined, optional
        String representing the "preference” value of the MX records. Records with lower preference value take priority.
    """


    exchange?: str

    preference?: str


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta1DNSMXRecordStatus:
    r"""
    DNSMXRecordStatus defines the observed state of DNSMXRecord.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta1DNSMXRecordStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta1DNSMXRecordStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProvider:
    r"""
    network azure upbound io v1beta1 DNS m x record status at provider

    Attributes
    ----------
    fqdn : str, default is Undefined, optional
        The FQDN of the DNS MX Record.
    id : str, default is Undefined, optional
        The DNS MX Record ID.
    record : [NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProviderRecordItems0], default is Undefined, optional
        A list of values that make up the MX record. Each record block supports fields documented below.
    resourceGroupName : str, default is Undefined, optional
        Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    ttl : float, default is Undefined, optional
        The Time To Live (TTL) of the DNS record in seconds.
    zoneName : str, default is Undefined, optional
        Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
    """


    fqdn?: str

    id?: str

    record?: [NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProviderRecordItems0]

    resourceGroupName?: str

    tags?: {str:str}

    ttl?: float

    zoneName?: str


schema NetworkAzureUpboundIoV1beta1DNSMXRecordStatusAtProviderRecordItems0:
    r"""
    network azure upbound io v1beta1 DNS m x record status at provider record items0

    Attributes
    ----------
    exchange : str, default is Undefined, optional
        The mail server responsible for the domain covered by the MX record.
    preference : str, default is Undefined, optional
        String representing the "preference” value of the MX records. Records with lower preference value take priority.
    """


    exchange?: str

    preference?: str


schema NetworkAzureUpboundIoV1beta1DNSMXRecordStatusConditionsItems0:
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


