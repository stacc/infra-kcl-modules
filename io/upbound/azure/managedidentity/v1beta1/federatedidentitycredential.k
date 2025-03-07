"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema FederatedIdentityCredential:
    r"""
    FederatedIdentityCredential is the Schema for the FederatedIdentityCredentials API. Manages a Federated Identity Credential.

    Attributes
    ----------
    apiVersion : str, default is "managedidentity.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "FederatedIdentityCredential", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpec, default is Undefined, required
        spec
    status : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatus, default is Undefined, optional
        status
    """


    apiVersion: "managedidentity.azure.upbound.io/v1beta1" = "managedidentity.azure.upbound.io/v1beta1"

    kind: "FederatedIdentityCredential" = "FederatedIdentityCredential"

    metadata?: v1.ObjectMeta

    spec: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpec

    status?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatus


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpec:
    r"""
    FederatedIdentityCredentialSpec defines the desired state of FederatedIdentityCredential

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
    forProvider : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProvider, default is Undefined, required
        for provider
    initProvider : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProvider

    initProvider?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRef

    publishConnectionDetailsTo?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecWriteConnectionSecretToRef


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProvider:
    r"""
    managedidentity azure upbound io v1beta1 federated identity credential spec for provider

    Attributes
    ----------
    audience : [str], default is Undefined, optional
        Specifies the audience for this Federated Identity Credential.
    issuer : str, default is Undefined, optional
        Specifies the issuer of this Federated Identity Credential.
    parentId : str, default is Undefined, optional
        Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
    parentIdRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRef, default is Undefined, optional
        parent Id ref
    parentIdSelector : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelector, default is Undefined, optional
        parent Id selector
    resourceGroupName : str, default is Undefined, optional
        Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created.
    resourceGroupNameRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    subject : str, default is Undefined, optional
        Specifies the subject for this Federated Identity Credential.
    """


    audience?: [str]

    issuer?: str

    parentId?: str

    parentIdRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRef

    parentIdSelector?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelector

    resourceGroupName?: str

    resourceGroupNameRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelector

    subject?: str


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRef:
    r"""
    Reference to a UserAssignedIdentity in managedidentity to populate parentId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRefPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDRefPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelector:
    r"""
    Selector for a UserAssignedIdentity in managedidentity to populate parentId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelectorPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderParentIDSelectorPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRefPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameRefPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelectorPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecForProviderResourceGroupNameSelectorPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProvider:
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
    audience : [str], default is Undefined, optional
        Specifies the audience for this Federated Identity Credential.
    issuer : str, default is Undefined, optional
        Specifies the issuer of this Federated Identity Credential.
    resourceGroupName : str, default is Undefined, optional
        Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created.
    resourceGroupNameRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    subject : str, default is Undefined, optional
        Specifies the subject for this Federated Identity Credential.
    """


    audience?: [str]

    issuer?: str

    resourceGroupName?: str

    resourceGroupNameRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRef

    resourceGroupNameSelector?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelector

    subject?: str


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRefPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameRefPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelectorPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecInitProviderResourceGroupNameSelectorPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRefPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecProviderConfigRefPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRef

    metadata?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToMetadata

    name: str


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRefPolicy


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecPublishConnectionDetailsToMetadata:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialSpecWriteConnectionSecretToRef:
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


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatus:
    r"""
    FederatedIdentityCredentialStatus defines the observed state of FederatedIdentityCredential.

    Attributes
    ----------
    atProvider : ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusAtProvider

    conditions?: [ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusConditionsItems0]

    observedGeneration?: int


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusAtProvider:
    r"""
    managedidentity azure upbound io v1beta1 federated identity credential status at provider

    Attributes
    ----------
    audience : [str], default is Undefined, optional
        Specifies the audience for this Federated Identity Credential.
    id : str, default is Undefined, optional
        The ID of the Federated Identity Credential.
    issuer : str, default is Undefined, optional
        Specifies the issuer of this Federated Identity Credential.
    parentId : str, default is Undefined, optional
        Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
    resourceGroupName : str, default is Undefined, optional
        Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created.
    subject : str, default is Undefined, optional
        Specifies the subject for this Federated Identity Credential.
    """


    audience?: [str]

    id?: str

    issuer?: str

    parentId?: str

    resourceGroupName?: str

    subject?: str


schema ManagedidentityAzureUpboundIoV1beta1FederatedIdentityCredentialStatusConditionsItems0:
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


