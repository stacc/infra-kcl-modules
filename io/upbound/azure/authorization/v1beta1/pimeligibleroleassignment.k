"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema PimEligibleRoleAssignment:
    r"""
    PimEligibleRoleAssignment is the Schema for the PimEligibleRoleAssignments API. Manages a PIM Eligible Role Assignment.

    Attributes
    ----------
    apiVersion : str, default is "authorization.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "PimEligibleRoleAssignment", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpec, default is Undefined, required
        spec
    status : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatus, default is Undefined, optional
        status
    """


    apiVersion: "authorization.azure.upbound.io/v1beta1" = "authorization.azure.upbound.io/v1beta1"

    kind: "PimEligibleRoleAssignment" = "PimEligibleRoleAssignment"

    metadata?: v1.ObjectMeta

    spec: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpec

    status?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatus


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpec:
    r"""
    PimEligibleRoleAssignmentSpec defines the desired state of PimEligibleRoleAssignment

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
    forProvider : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProvider, default is Undefined, required
        for provider
    initProvider : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProvider

    initProvider?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRef

    publishConnectionDetailsTo?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecWriteConnectionSecretToRef


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProvider:
    r"""
    authorization azure upbound io v1beta1 pim eligible role assignment spec for provider

    Attributes
    ----------
    justification : str, default is Undefined, optional
        The justification of the role assignment. Changing this forces a new resource to be created.
        The justification for this eligible role assignment
    principalId : str, default is Undefined, optional
        Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
        Object ID of the principal for this eligible role assignment
    roleDefinitionId : str, default is Undefined, optional
        The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
        Role definition ID for this eligible role assignment
    schedule : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderSchedule, default is Undefined, optional
        schedule
    scope : str, default is Undefined, optional
        The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
        Scope for this eligible role assignment, should be a valid resource ID
    scopeRef : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRef, default is Undefined, optional
        scope ref
    scopeSelector : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelector, default is Undefined, optional
        scope selector
    ticket : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderTicket, default is Undefined, optional
        ticket
    """


    justification?: str

    principalId?: str

    roleDefinitionId?: str

    schedule?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderSchedule

    scope?: str

    scopeRef?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRef

    scopeSelector?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelector

    ticket?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderTicket


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderSchedule:
    r"""
    A schedule block as defined below. Changing this forces a new resource to be created.
    The schedule details for this eligible role assignment

    Attributes
    ----------
    expiration : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScheduleExpiration, default is Undefined, optional
        expiration
    startDateTime : str, default is Undefined, optional
        The start date/time of the role assignment. Changing this forces a new resource to be created.
        The start date/time
    """


    expiration?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScheduleExpiration

    startDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScheduleExpiration:
    r"""
    An expiration block as defined above.

    Attributes
    ----------
    durationDays : float, default is Undefined, optional
        The duration of the role assignment in days. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in days
    durationHours : float, default is Undefined, optional
        The duration of the role assignment in hours. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in hours
    endDateTime : str, default is Undefined, optional
        The end date/time of the role assignment. Changing this forces a new resource to be created.
        The end date/time of the eligible role assignment
    """


    durationDays?: float

    durationHours?: float

    endDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRef:
    r"""
    Reference to a ManagementGroup in management to populate scope.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRefPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeRefPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelector:
    r"""
    Selector for a ManagementGroup in management to populate scope.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelectorPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderScopeSelectorPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecForProviderTicket:
    r"""
    A ticket block as defined below. Changing this forces a new resource to be created.
    Ticket details relating to the eligible assignment

    Attributes
    ----------
    number : str, default is Undefined, optional
        User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket number to be included with the request
    system : str, default is Undefined, optional
        User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket system name to be included with the request
    """


    number?: str

    system?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProvider:
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
    justification : str, default is Undefined, optional
        The justification of the role assignment. Changing this forces a new resource to be created.
        The justification for this eligible role assignment
    principalId : str, default is Undefined, optional
        Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
        Object ID of the principal for this eligible role assignment
    roleDefinitionId : str, default is Undefined, optional
        The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
        Role definition ID for this eligible role assignment
    schedule : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderSchedule, default is Undefined, optional
        schedule
    scope : str, default is Undefined, optional
        The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
        Scope for this eligible role assignment, should be a valid resource ID
    scopeRef : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRef, default is Undefined, optional
        scope ref
    scopeSelector : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelector, default is Undefined, optional
        scope selector
    ticket : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderTicket, default is Undefined, optional
        ticket
    """


    justification?: str

    principalId?: str

    roleDefinitionId?: str

    schedule?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderSchedule

    scope?: str

    scopeRef?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRef

    scopeSelector?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelector

    ticket?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderTicket


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderSchedule:
    r"""
    A schedule block as defined below. Changing this forces a new resource to be created.
    The schedule details for this eligible role assignment

    Attributes
    ----------
    expiration : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScheduleExpiration, default is Undefined, optional
        expiration
    startDateTime : str, default is Undefined, optional
        The start date/time of the role assignment. Changing this forces a new resource to be created.
        The start date/time
    """


    expiration?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScheduleExpiration

    startDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScheduleExpiration:
    r"""
    An expiration block as defined above.

    Attributes
    ----------
    durationDays : float, default is Undefined, optional
        The duration of the role assignment in days. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in days
    durationHours : float, default is Undefined, optional
        The duration of the role assignment in hours. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in hours
    endDateTime : str, default is Undefined, optional
        The end date/time of the role assignment. Changing this forces a new resource to be created.
        The end date/time of the eligible role assignment
    """


    durationDays?: float

    durationHours?: float

    endDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRef:
    r"""
    Reference to a ManagementGroup in management to populate scope.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRefPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeRefPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelector:
    r"""
    Selector for a ManagementGroup in management to populate scope.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelectorPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderScopeSelectorPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecInitProviderTicket:
    r"""
    A ticket block as defined below. Changing this forces a new resource to be created.
    Ticket details relating to the eligible assignment

    Attributes
    ----------
    number : str, default is Undefined, optional
        User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket number to be included with the request
    system : str, default is Undefined, optional
        User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket system name to be included with the request
    """


    number?: str

    system?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRefPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecProviderConfigRefPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRef

    metadata?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToMetadata

    name: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRefPolicy


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecPublishConnectionDetailsToMetadata:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentSpecWriteConnectionSecretToRef:
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


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatus:
    r"""
    PimEligibleRoleAssignmentStatus defines the observed state of PimEligibleRoleAssignment.

    Attributes
    ----------
    atProvider : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProvider

    conditions?: [AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusConditionsItems0]

    observedGeneration?: int


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProvider:
    r"""
    authorization azure upbound io v1beta1 pim eligible role assignment status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        The ID of the PIM Eligible Role Assignment.
    justification : str, default is Undefined, optional
        The justification of the role assignment. Changing this forces a new resource to be created.
        The justification for this eligible role assignment
    principalId : str, default is Undefined, optional
        Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
        Object ID of the principal for this eligible role assignment
    principalType : str, default is Undefined, optional
        Type of principal to which the role will be assigned.
        Type of principal to which the role will be assigned
    roleDefinitionId : str, default is Undefined, optional
        The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
        Role definition ID for this eligible role assignment
    schedule : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderSchedule, default is Undefined, optional
        schedule
    scope : str, default is Undefined, optional
        The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
        Scope for this eligible role assignment, should be a valid resource ID
    ticket : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderTicket, default is Undefined, optional
        ticket
    """


    id?: str

    justification?: str

    principalId?: str

    principalType?: str

    roleDefinitionId?: str

    schedule?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderSchedule

    scope?: str

    ticket?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderTicket


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderSchedule:
    r"""
    A schedule block as defined below. Changing this forces a new resource to be created.
    The schedule details for this eligible role assignment

    Attributes
    ----------
    expiration : AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderScheduleExpiration, default is Undefined, optional
        expiration
    startDateTime : str, default is Undefined, optional
        The start date/time of the role assignment. Changing this forces a new resource to be created.
        The start date/time
    """


    expiration?: AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderScheduleExpiration

    startDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderScheduleExpiration:
    r"""
    An expiration block as defined above.

    Attributes
    ----------
    durationDays : float, default is Undefined, optional
        The duration of the role assignment in days. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in days
    durationHours : float, default is Undefined, optional
        The duration of the role assignment in hours. Changing this forces a new resource to be created.
        The duration of the eligible role assignment in hours
    endDateTime : str, default is Undefined, optional
        The end date/time of the role assignment. Changing this forces a new resource to be created.
        The end date/time of the eligible role assignment
    """


    durationDays?: float

    durationHours?: float

    endDateTime?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusAtProviderTicket:
    r"""
    A ticket block as defined below. Changing this forces a new resource to be created.
    Ticket details relating to the eligible assignment

    Attributes
    ----------
    number : str, default is Undefined, optional
        User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket number to be included with the request
    system : str, default is Undefined, optional
        User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.
        User-supplied ticket system name to be included with the request
    """


    number?: str

    system?: str


schema AuthorizationAzureUpboundIoV1beta1PimEligibleRoleAssignmentStatusConditionsItems0:
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


