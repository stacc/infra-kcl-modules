"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema Blob:
    r"""
    Blob is the Schema for the Blobs API. Manages a Blob within a Storage Container.

    Attributes
    ----------
    apiVersion : str, default is "storage.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "Blob", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : StorageAzureUpboundIoV1beta1BlobSpec, default is Undefined, required
        spec
    status : StorageAzureUpboundIoV1beta1BlobStatus, default is Undefined, optional
        status
    """


    apiVersion: "storage.azure.upbound.io/v1beta1" = "storage.azure.upbound.io/v1beta1"

    kind: "Blob" = "Blob"

    metadata?: v1.ObjectMeta

    spec: StorageAzureUpboundIoV1beta1BlobSpec

    status?: StorageAzureUpboundIoV1beta1BlobStatus


schema StorageAzureUpboundIoV1beta1BlobSpec:
    r"""
    BlobSpec defines the desired state of Blob

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
    forProvider : StorageAzureUpboundIoV1beta1BlobSpecForProvider, default is Undefined, required
        for provider
    initProvider : StorageAzureUpboundIoV1beta1BlobSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : StorageAzureUpboundIoV1beta1BlobSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: StorageAzureUpboundIoV1beta1BlobSpecForProvider

    initProvider?: StorageAzureUpboundIoV1beta1BlobSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRef

    publishConnectionDetailsTo?: StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: StorageAzureUpboundIoV1beta1BlobSpecWriteConnectionSecretToRef


schema StorageAzureUpboundIoV1beta1BlobSpecForProvider:
    r"""
    storage azure upbound io v1beta1 blob spec for provider

    Attributes
    ----------
    accessTier : str, default is Undefined, optional
        The access tier of the storage blob. Possible values are Archive, Cool and Hot.
    cacheControl : str, default is Undefined, optional
        Controls the cache control header content of the response when blob is requested .
    contentMd5 : str, default is Undefined, optional
        The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
    contentType : str, default is Undefined, optional
        The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
    encryptionScope : str, default is Undefined, optional
        The encryption scope to use for this blob.
    metadata : {str:str}, default is Undefined, optional
        A map of custom blob metadata.
    parallelism : float, default is Undefined, optional
        The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
    size : float, default is Undefined, optional
        Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
    source : str, default is Undefined, optional
        An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
    sourceContent : str, default is Undefined, optional
        The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
    sourceUri : str, default is Undefined, optional
        The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
    storageAccountName : str, default is Undefined, optional
        Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
    storageAccountNameRef : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRef, default is Undefined, optional
        storage account name ref
    storageAccountNameSelector : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelector, default is Undefined, optional
        storage account name selector
    storageContainerName : str, default is Undefined, optional
        The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
    storageContainerNameRef : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRef, default is Undefined, optional
        storage container name ref
    storageContainerNameSelector : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelector, default is Undefined, optional
        storage container name selector
    $type : str, default is Undefined, optional
        The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
    """


    accessTier?: str

    cacheControl?: str

    contentMd5?: str

    contentType?: str

    encryptionScope?: str

    metadata?: {str:str}

    parallelism?: float

    size?: float

    source?: str

    sourceContent?: str

    sourceUri?: str

    storageAccountName?: str

    storageAccountNameRef?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRef

    storageAccountNameSelector?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelector

    storageContainerName?: str

    storageContainerNameRef?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRef

    storageContainerNameSelector?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelector

    $type?: str


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRef:
    r"""
    Reference to a Account in storage to populate storageAccountName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRefPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameRefPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelector:
    r"""
    Selector for a Account in storage to populate storageAccountName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelectorPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageAccountNameSelectorPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRef:
    r"""
    Reference to a Container in storage to populate storageContainerName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRefPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameRefPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelector:
    r"""
    Selector for a Container in storage to populate storageContainerName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelectorPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecForProviderStorageContainerNameSelectorPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecInitProvider:
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
    accessTier : str, default is Undefined, optional
        The access tier of the storage blob. Possible values are Archive, Cool and Hot.
    cacheControl : str, default is Undefined, optional
        Controls the cache control header content of the response when blob is requested .
    contentMd5 : str, default is Undefined, optional
        The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
    contentType : str, default is Undefined, optional
        The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
    encryptionScope : str, default is Undefined, optional
        The encryption scope to use for this blob.
    metadata : {str:str}, default is Undefined, optional
        A map of custom blob metadata.
    parallelism : float, default is Undefined, optional
        The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
    size : float, default is Undefined, optional
        Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
    source : str, default is Undefined, optional
        An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
    sourceContent : str, default is Undefined, optional
        The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
    sourceUri : str, default is Undefined, optional
        The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
    $type : str, default is Undefined, optional
        The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
    """


    accessTier?: str

    cacheControl?: str

    contentMd5?: str

    contentType?: str

    encryptionScope?: str

    metadata?: {str:str}

    parallelism?: float

    size?: float

    source?: str

    sourceContent?: str

    sourceUri?: str

    $type?: str


schema StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRefPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecProviderConfigRefPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRef

    metadata?: StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToMetadata

    name: str


schema StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRefPolicy


schema StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema StorageAzureUpboundIoV1beta1BlobSpecPublishConnectionDetailsToMetadata:
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


schema StorageAzureUpboundIoV1beta1BlobSpecWriteConnectionSecretToRef:
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


schema StorageAzureUpboundIoV1beta1BlobStatus:
    r"""
    BlobStatus defines the observed state of Blob.

    Attributes
    ----------
    atProvider : StorageAzureUpboundIoV1beta1BlobStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [StorageAzureUpboundIoV1beta1BlobStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: StorageAzureUpboundIoV1beta1BlobStatusAtProvider

    conditions?: [StorageAzureUpboundIoV1beta1BlobStatusConditionsItems0]

    observedGeneration?: int


schema StorageAzureUpboundIoV1beta1BlobStatusAtProvider:
    r"""
    storage azure upbound io v1beta1 blob status at provider

    Attributes
    ----------
    accessTier : str, default is Undefined, optional
        The access tier of the storage blob. Possible values are Archive, Cool and Hot.
    cacheControl : str, default is Undefined, optional
        Controls the cache control header content of the response when blob is requested .
    contentMd5 : str, default is Undefined, optional
        The MD5 sum of the blob contents. Cannot be defined if source_uri is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
    contentType : str, default is Undefined, optional
        The content type of the storage blob. Cannot be defined if source_uri is defined. Defaults to application/octet-stream.
    encryptionScope : str, default is Undefined, optional
        The encryption scope to use for this blob.
    id : str, default is Undefined, optional
        The ID of the Storage Blob.
    metadata : {str:str}, default is Undefined, optional
        A map of custom blob metadata.
    parallelism : float, default is Undefined, optional
        The number of workers per CPU core to run for concurrent uploads. Defaults to 8. Changing this forces a new resource to be created.
    size : float, default is Undefined, optional
        Used only for page blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to 0. Changing this forces a new resource to be created.
    source : str, default is Undefined, optional
        An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created.
    sourceContent : str, default is Undefined, optional
        The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if source or source_uri is specified. Changing this forces a new resource to be created.
    sourceUri : str, default is Undefined, optional
        The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if source or source_content is specified.
    storageAccountName : str, default is Undefined, optional
        Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
    storageContainerName : str, default is Undefined, optional
        The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
    $type : str, default is Undefined, optional
        The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created.
    url : str, default is Undefined, optional
        The URL of the blob
    """


    accessTier?: str

    cacheControl?: str

    contentMd5?: str

    contentType?: str

    encryptionScope?: str

    id?: str

    metadata?: {str:str}

    parallelism?: float

    size?: float

    source?: str

    sourceContent?: str

    sourceUri?: str

    storageAccountName?: str

    storageContainerName?: str

    $type?: str

    url?: str


schema StorageAzureUpboundIoV1beta1BlobStatusConditionsItems0:
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


