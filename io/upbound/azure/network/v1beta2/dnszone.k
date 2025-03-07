"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema DNSZone:
    r"""
    DNSZone is the Schema for the DNSZones API. Manages a DNS Zone.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta2", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "DNSZone", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta2DNSZoneSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta2DNSZoneStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta2" = "network.azure.upbound.io/v1beta2"

    kind: "DNSZone" = "DNSZone"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta2DNSZoneSpec

    status?: NetworkAzureUpboundIoV1beta2DNSZoneStatus


schema NetworkAzureUpboundIoV1beta2DNSZoneSpec:
    r"""
    DNSZoneSpec defines the desired state of DNSZone

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
    forProvider : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta2DNSZoneSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta2DNSZoneSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProvider:
    r"""
    network azure upbound io v1beta2 DNS zone spec for provider

    Attributes
    ----------
    resourceGroupName : str, default is Undefined, optional
        Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    soaRecord : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderSoaRecord, default is Undefined, optional
        soa record
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    """


    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelector

    soaRecord?: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderSoaRecord

    tags?: {str:str}


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecForProviderSoaRecord:
    r"""
    An soa_record block as defined below.

    Attributes
    ----------
    email : str, default is Undefined, optional
        The email contact for the SOA record.
    expireTime : float, default is Undefined, optional
        The expire time for the SOA record. Defaults to 2419200.
    hostName : str, default is Undefined, optional
        The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used.
    minimumTtl : float, default is Undefined, optional
        The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 300.
    refreshTime : float, default is Undefined, optional
        The refresh time for the SOA record. Defaults to 3600.
    retryTime : float, default is Undefined, optional
        The retry time for the SOA record. Defaults to 300.
    serialNumber : float, default is Undefined, optional
        The serial number for the SOA record. Defaults to 1.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the Record Set.
    ttl : float, default is Undefined, optional
        The Time To Live of the SOA Record in seconds. Defaults to 3600.
    """


    email?: str

    expireTime?: float

    hostName?: str

    minimumTtl?: float

    refreshTime?: float

    retryTime?: float

    serialNumber?: float

    tags?: {str:str}

    ttl?: float


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProvider:
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
    soaRecord : NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProviderSoaRecord, default is Undefined, optional
        soa record
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    """


    soaRecord?: NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProviderSoaRecord

    tags?: {str:str}


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecInitProviderSoaRecord:
    r"""
    An soa_record block as defined below.

    Attributes
    ----------
    email : str, default is Undefined, optional
        The email contact for the SOA record.
    expireTime : float, default is Undefined, optional
        The expire time for the SOA record. Defaults to 2419200.
    hostName : str, default is Undefined, optional
        The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used.
    minimumTtl : float, default is Undefined, optional
        The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 300.
    refreshTime : float, default is Undefined, optional
        The refresh time for the SOA record. Defaults to 3600.
    retryTime : float, default is Undefined, optional
        The retry time for the SOA record. Defaults to 300.
    serialNumber : float, default is Undefined, optional
        The serial number for the SOA record. Defaults to 1.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the Record Set.
    ttl : float, default is Undefined, optional
        The Time To Live of the SOA Record in seconds. Defaults to 3600.
    """


    email?: str

    expireTime?: float

    hostName?: str

    minimumTtl?: float

    refreshTime?: float

    retryTime?: float

    serialNumber?: float

    tags?: {str:str}

    ttl?: float


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta2DNSZoneStatus:
    r"""
    DNSZoneStatus defines the observed state of DNSZone.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta2DNSZoneStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta2DNSZoneStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProvider:
    r"""
    network azure upbound io v1beta2 DNS zone status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        The DNS Zone ID.
    maxNumberOfRecordSets : float, default is Undefined, optional
        Maximum number of Records in the zone. Defaults to 1000.
    nameServers : [str], default is Undefined, optional
        A list of values that make up the NS record for the zone.
    numberOfRecordSets : float, default is Undefined, optional
        The number of records already in the zone.
    resourceGroupName : str, default is Undefined, optional
        Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
    soaRecord : NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProviderSoaRecord, default is Undefined, optional
        soa record
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the resource.
    """


    id?: str

    maxNumberOfRecordSets?: float

    nameServers?: [str]

    numberOfRecordSets?: float

    resourceGroupName?: str

    soaRecord?: NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProviderSoaRecord

    tags?: {str:str}


schema NetworkAzureUpboundIoV1beta2DNSZoneStatusAtProviderSoaRecord:
    r"""
    An soa_record block as defined below.

    Attributes
    ----------
    email : str, default is Undefined, optional
        The email contact for the SOA record.
    expireTime : float, default is Undefined, optional
        The expire time for the SOA record. Defaults to 2419200.
    fqdn : str, default is Undefined, optional
        fqdn
    hostName : str, default is Undefined, optional
        The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used.
    minimumTtl : float, default is Undefined, optional
        The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 300.
    refreshTime : float, default is Undefined, optional
        The refresh time for the SOA record. Defaults to 3600.
    retryTime : float, default is Undefined, optional
        The retry time for the SOA record. Defaults to 300.
    serialNumber : float, default is Undefined, optional
        The serial number for the SOA record. Defaults to 1.
    tags : {str:str}, default is Undefined, optional
        A mapping of tags to assign to the Record Set.
    ttl : float, default is Undefined, optional
        The Time To Live of the SOA Record in seconds. Defaults to 3600.
    """


    email?: str

    expireTime?: float

    fqdn?: str

    hostName?: str

    minimumTtl?: float

    refreshTime?: float

    retryTime?: float

    serialNumber?: float

    tags?: {str:str}

    ttl?: float


schema NetworkAzureUpboundIoV1beta2DNSZoneStatusConditionsItems0:
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


