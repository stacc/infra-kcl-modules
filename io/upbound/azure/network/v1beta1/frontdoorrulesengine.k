"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema FrontdoorRulesEngine:
    r"""
    FrontdoorRulesEngine is the Schema for the FrontdoorRulesEngines API. Manages an Azure Front Door (classic) Rules Engine configuration and rules.

    Attributes
    ----------
    apiVersion : str, default is "network.azure.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "FrontdoorRulesEngine", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpec, default is Undefined, required
        spec
    status : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.upbound.io/v1beta1" = "network.azure.upbound.io/v1beta1"

    kind: "FrontdoorRulesEngine" = "FrontdoorRulesEngine"

    metadata?: v1.ObjectMeta

    spec: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpec

    status?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatus


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpec:
    r"""
    FrontdoorRulesEngineSpec defines the desired state of FrontdoorRulesEngine

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
    forProvider : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProvider, default is Undefined, required
        for provider
    initProvider : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProvider

    initProvider?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRef

    publishConnectionDetailsTo?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecWriteConnectionSecretToRef


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProvider:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider

    Attributes
    ----------
    enabled : bool, default is Undefined, optional
        Whether this Rules engine configuration is enabled? Defaults to true.
    frontdoorName : str, default is Undefined, optional
        The name of the Front Door instance. Changing this forces a new resource to be created.
    frontdoorNameRef : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRef, default is Undefined, optional
        frontdoor name ref
    frontdoorNameSelector : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelector, default is Undefined, optional
        frontdoor name selector
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group. Changing this forces a new resource to be created.
    resourceGroupNameRef : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRef, default is Undefined, optional
        resource group name ref
    resourceGroupNameSelector : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelector, default is Undefined, optional
        resource group name selector
    $rule : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0], default is Undefined, optional
        A rule block as defined below.
    """


    enabled?: bool

    frontdoorName?: str

    frontdoorNameRef?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRef

    frontdoorNameSelector?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelector

    resourceGroupName?: str

    resourceGroupNameRef?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRef

    resourceGroupNameSelector?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelector

    $rule?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRef:
    r"""
    Reference to a FrontDoor in network to populate frontdoorName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRefPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelector:
    r"""
    Selector for a FrontDoor in network to populate frontdoorName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderFrontdoorNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRef:
    r"""
    Reference to a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRefPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelector:
    r"""
    Selector for a ResourceGroup in azure to populate resourceGroupName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelectorPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderResourceGroupNameSelectorPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider rule items0

    Attributes
    ----------
    action : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0], default is Undefined, optional
        An action block as defined below.
    matchCondition : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0MatchConditionItems0], default is Undefined, optional
        One or more match_condition block as defined below.
    name : str, default is Undefined, optional
        The name of the rule.
    priority : float, default is Undefined, optional
        Priority of the rule, must be unique per rules engine definition.
    """


    action?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0]

    matchCondition?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0MatchConditionItems0]

    name?: str

    priority?: float


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider rule items0 action items0

    Attributes
    ----------
    requestHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0RequestHeaderItems0], default is Undefined, optional
        A request_header block as defined below.
    responseHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0ResponseHeaderItems0], default is Undefined, optional
        A response_header block as defined below.
    """


    requestHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0RequestHeaderItems0]

    responseHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0ResponseHeaderItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0RequestHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider rule items0 action items0 request header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0ActionItems0ResponseHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider rule items0 action items0 response header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecForProviderRuleItems0MatchConditionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec for provider rule items0 match condition items0

    Attributes
    ----------
    negateCondition : bool, default is Undefined, optional
        can be set to true or false to negate the given condition. Defaults to false.
    operator : str, default is Undefined, optional
        can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
    selector : str, default is Undefined, optional
        match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
    transform : [str], default is Undefined, optional
        can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
    value : [str], default is Undefined, optional
        value name (string).
    variable : str, default is Undefined, optional
        can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
    """


    negateCondition?: bool

    operator?: str

    selector?: str

    transform?: [str]

    value?: [str]

    variable?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProvider:
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
    enabled : bool, default is Undefined, optional
        Whether this Rules engine configuration is enabled? Defaults to true.
    $rule : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0], default is Undefined, optional
        A rule block as defined below.
    """


    enabled?: bool

    $rule?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec init provider rule items0

    Attributes
    ----------
    action : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0], default is Undefined, optional
        An action block as defined below.
    matchCondition : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0MatchConditionItems0], default is Undefined, optional
        One or more match_condition block as defined below.
    name : str, default is Undefined, optional
        The name of the rule.
    priority : float, default is Undefined, optional
        Priority of the rule, must be unique per rules engine definition.
    """


    action?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0]

    matchCondition?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0MatchConditionItems0]

    name?: str

    priority?: float


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec init provider rule items0 action items0

    Attributes
    ----------
    requestHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0RequestHeaderItems0], default is Undefined, optional
        A request_header block as defined below.
    responseHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0ResponseHeaderItems0], default is Undefined, optional
        A response_header block as defined below.
    """


    requestHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0RequestHeaderItems0]

    responseHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0ResponseHeaderItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0RequestHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec init provider rule items0 action items0 request header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0ActionItems0ResponseHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec init provider rule items0 action items0 response header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecInitProviderRuleItems0MatchConditionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine spec init provider rule items0 match condition items0

    Attributes
    ----------
    negateCondition : bool, default is Undefined, optional
        can be set to true or false to negate the given condition. Defaults to false.
    operator : str, default is Undefined, optional
        can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
    selector : str, default is Undefined, optional
        match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
    transform : [str], default is Undefined, optional
        can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
    value : [str], default is Undefined, optional
        value name (string).
    variable : str, default is Undefined, optional
        can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
    """


    negateCondition?: bool

    operator?: str

    selector?: str

    transform?: [str]

    value?: [str]

    variable?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecProviderConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRef

    metadata?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToMetadata

    name: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRefPolicy


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecPublishConnectionDetailsToMetadata:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineSpecWriteConnectionSecretToRef:
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


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatus:
    r"""
    FrontdoorRulesEngineStatus defines the observed state of FrontdoorRulesEngine.

    Attributes
    ----------
    atProvider : NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProvider

    conditions?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusConditionsItems0]

    observedGeneration?: int


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProvider:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider

    Attributes
    ----------
    enabled : bool, default is Undefined, optional
        Whether this Rules engine configuration is enabled? Defaults to true.
    frontdoorName : str, default is Undefined, optional
        The name of the Front Door instance. Changing this forces a new resource to be created.
    id : str, default is Undefined, optional
        id
    location : str, default is Undefined, optional
        location
    resourceGroupName : str, default is Undefined, optional
        The name of the resource group. Changing this forces a new resource to be created.
    $rule : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0], default is Undefined, optional
        A rule block as defined below.
    """


    enabled?: bool

    frontdoorName?: str

    id?: str

    location?: str

    resourceGroupName?: str

    $rule?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider rule items0

    Attributes
    ----------
    action : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0], default is Undefined, optional
        An action block as defined below.
    matchCondition : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0MatchConditionItems0], default is Undefined, optional
        One or more match_condition block as defined below.
    name : str, default is Undefined, optional
        The name of the rule.
    priority : float, default is Undefined, optional
        Priority of the rule, must be unique per rules engine definition.
    """


    action?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0]

    matchCondition?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0MatchConditionItems0]

    name?: str

    priority?: float


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider rule items0 action items0

    Attributes
    ----------
    requestHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0RequestHeaderItems0], default is Undefined, optional
        A request_header block as defined below.
    responseHeader : [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0ResponseHeaderItems0], default is Undefined, optional
        A response_header block as defined below.
    """


    requestHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0RequestHeaderItems0]

    responseHeader?: [NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0ResponseHeaderItems0]


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0RequestHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider rule items0 action items0 request header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0ActionItems0ResponseHeaderItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider rule items0 action items0 response header items0

    Attributes
    ----------
    headerActionType : str, default is Undefined, optional
        can be set to Overwrite, Append or Delete.
    headerName : str, default is Undefined, optional
        header name (string).
    value : str, default is Undefined, optional
        value name (string).
    """


    headerActionType?: str

    headerName?: str

    value?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusAtProviderRuleItems0MatchConditionItems0:
    r"""
    network azure upbound io v1beta1 frontdoor rules engine status at provider rule items0 match condition items0

    Attributes
    ----------
    negateCondition : bool, default is Undefined, optional
        can be set to true or false to negate the given condition. Defaults to false.
    operator : str, default is Undefined, optional
        can be set to Any, IPMatch, GeoMatch, Equal, Contains, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, BeginsWith or EndsWith
    selector : str, default is Undefined, optional
        match against a specific key when variable is set to PostArgs or RequestHeader. It cannot be used with QueryString and RequestMethod.
    transform : [str], default is Undefined, optional
        can be set to one or more values out of Lowercase, RemoveNulls, Trim, Uppercase, UrlDecode and UrlEncode
    value : [str], default is Undefined, optional
        value name (string).
    variable : str, default is Undefined, optional
        can be set to IsMobile, RemoteAddr, RequestMethod, QueryString, PostArgs, RequestURI, RequestPath, RequestFilename, RequestFilenameExtension,RequestHeader,RequestBody or RequestScheme.
    """


    negateCondition?: bool

    operator?: str

    selector?: str

    transform?: [str]

    value?: [str]

    variable?: str


schema NetworkAzureUpboundIoV1beta1FrontdoorRulesEngineStatusConditionsItems0:
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


