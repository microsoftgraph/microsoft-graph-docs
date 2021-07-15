---
title: "servicePrincipal resource type"
description: "Represents an instance of an application in a directory. Inherits from directoryObject."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "applications"
author: "sureshja"
---

# servicePrincipal resource type

Namespace: microsoft.graph

Represents an instance of an application in a directory. Inherits from [directoryObject](directoryobject.md).

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/serviceprincipal-delta.md) function.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List servicePrincipals](../api/serviceprincipal-list.md) | [servicePrincipal](serviceprincipal.md) collection | Retrieve a list of servicePrincipal objects. |
|[Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md)| [servicePrincipal](serviceprincipal.md) | Creates a new servicePrincipal object. |
|[Get servicePrincipal](../api/serviceprincipal-get.md) | [servicePrincipal](serviceprincipal.md) |Read properties and relationships of servicePrincipal object.|
|[Update servicePrincipal](../api/serviceprincipal-update.md) | [servicePrincipal](serviceprincipal.md)  |Update servicePrincipal object. |
|[Delete servicePrincipal](../api/serviceprincipal-delete.md) | None |Delete servicePrincipal object.|
|[List createdObjects](../api/serviceprincipal-list-createdobjects.md) |[directoryObject](directoryobject.md) collection| Get a createdObject object collection.|
|[List ownedObjects](../api/serviceprincipal-list-ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get an ownedObject object collection.|
|[Get delta](../api/serviceprincipal-delta.md)|servicePrincipal collection| Get incremental changes for service principals. |
|**App role assignments**| | |
|[List appRoleAssignments](../api/serviceprincipal-list-approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get the app roles which this service principal has been assigned.|
|[Add appRoleAssignment](../api/serviceprincipal-post-approleassignments.md) |[appRoleAssignment](approleassignment.md)| Assign an app role to this service principal.|
|[Remove appRoleAssignment](../api/serviceprincipal-delete-approleassignments.md) | None | Remove an app role assignment from this service principal.|
|[List appRoleAssignedTo](../api/serviceprincipal-list-approleassignedto.md) |[appRoleAssignment](approleassignment.md) collection| Get the users, groups, and service principals assigned app roles for this service principal.|
|[Add appRoleAssignedTo](../api/serviceprincipal-post-approleassignedto.md) |[appRoleAssignment](approleassignment.md)| Assign an app role for this service principal to a user, group, or service principal.|
|[Remove appRoleAssignedTo](../api/serviceprincipal-delete-approleassignedto.md) | None | Remove an app role assignment for this service principal from a user, group, or service principal.|
|**Certificates and secrets**| | |
|[Add password](../api/serviceprincipal-addpassword.md)|[passwordCredential](passwordcredential.md)|Add a strong password to a servicePrincipal.|
|[Remove password](../api/serviceprincipal-removepassword.md)|[passwordCredential](passwordcredential.md)|Remove a password from a servicePrincipal.|
|[Add key](../api/serviceprincipal-addkey.md)|[keyCredential](keycredential.md)|Add a key credential to a servicePrincipal.|
|[Remove key](../api/serviceprincipal-removekey.md)|None|Remove a key credential from a servicePrincipal.|
|**Delegated permission classifications**| | |
|[List delegated permission classifications](../api/serviceprincipal-list-delegatedpermissionclassifications.md) |[delegatedPermissionClassification](delegatedpermissionclassification.md) collection| Get the permission classifications for delegated permissions exposed by this service principal.|
|[Add delegated permission classification](../api/serviceprincipal-post-delegatedpermissionclassifications.md) |[delegatedPermissionClassification](delegatedpermissionclassification.md) | Add a permission classification for a delegated permission exposed by this service principal. |
|[Remove delegated permission classification](../api/serviceprincipal-delete-delegatedpermissionclassifications.md) | None | Remove a permission classification for a delegated permission exposed by this service principal.|
|**Delegated permission grants**| | |
|[List oauth2PermissionGrants](../api/serviceprincipal-list-oauth2permissiongrants.md) |[oAuth2PermissionGrant](oauth2permissiongrant.md) collection| Get the delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user.|
|**Membership**| | |
|[List memberOf](../api/serviceprincipal-list-memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups that this service principal is a direct member of from the memberOf navigation property.|
|[List transitive memberOf](../api/serviceprincipal-list-transitivememberof.md) |[directoryObject](directoryobject.md) collection| List the groups that this service principal is a member of. This operation is transitive and includes the groups that this service principal is a nested member of. |
|[checkMemberGroups](../api/serviceprincipal-checkmembergroups.md)|String collection|Check for membership in a specified list of groups.|
|[checkMemberObjects](../api/serviceprincipal-checkmemberobjects.md)|String collection|Check for membership in a specified list of group, directory role, or administrative unit objects.|
|[getMemberGroups](../api/serviceprincipal-getmembergroups.md)|String collection|Get the list of groups that this service principal is a member of.|
|[getMemberObjects](../api/serviceprincipal-getmemberobjects.md)|String collection|Get the list of groups and directory roles that this service principal is a member of.|
|**Owners**| | |
|[List owners](../api/serviceprincipal-list-owners.md) |[directoryObject](directoryobject.md) collection| Get an owner object collection.|
|[Add owner](../api/serviceprincipal-post-owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[Remove owner](../api/serviceprincipal-delete-owners.md) |None| Remove an owner from a serviceprincipal.|
|**Policies**| | |
|[Assign claimsMappingPolicy](../api/serviceprincipal-post-claimsmappingpolicies.md)| [claimsMappingPolicy](claimsmappingpolicy.md) collection| Assign a claimsMappingPolicy to this object.|
|[List claimsMappingPolicies](../api/serviceprincipal-list-claimsmappingpolicies.md)| [claimsMappingPolicy](claimsmappingpolicy.md) collection| Get all claimsMappingPolicies assigned to this object.|
|[Remove claimsMappingPolicy](../api/serviceprincipal-delete-claimsmappingpolicies.md)| [claimsMappingPolicy](claimsmappingpolicy.md) collection| Remove a claimsMappingPolicy from this object.|
|[Assign homeRealmDiscoveryPolicy](../api/serviceprincipal-post-homerealmdiscoverypolicies.md)| [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection| Assign a homeRealmDiscoveryPolicy to this object.|
|[List homeRealmDiscoveryPolicies](../api/serviceprincipal-list-homerealmdiscoverypolicies.md)| [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection| Get all homeRealmDiscoveryPolicies assigned to this object.|
|[Remove homeRealmDiscoveryPolicy](../api/serviceprincipal-delete-homerealmdiscoverypolicies.md)| [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection| Remove a homeRealmDiscoveryPolicy from this object.|
|[Assign tokenIssuancePolicy](../api/application-post-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Assign a tokenIssuancePolicy to this object.|
|[List tokenIssuancePolicies](../api/application-list-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Get all tokenIssuancePolicies assigned to this object.|
|[Remove tokenIssuancePolicy](../api/application-delete-tokenissuancepolicies.md)| [tokenIssuancePolicy](tokenissuancepolicy.md) collection| Remove a tokenIssuancePolicy from this object.|
|[Assign tokenLifetimePolicy](../api/application-post-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Assign a tokenLifetimePolicy to this object.|
|[List tokenLifetimePolicies](../api/application-list-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Get all tokenLifetimePolicies assigned to this object.|
|[Remove tokenLifetimePolicy](../api/application-delete-tokenlifetimepolicies.md)| [tokenLifetimePolicy](tokenlifetimepolicy.md) collection| Remove a tokenLifetimePolicy from this object.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

| Property     | Type |Description|
|:---------------|:--------|:----------|
| accountEnabled |Boolean| `true` if the service principal account is enabled; otherwise, `false`. Supports `$filter` (`eq`, `ne`, `NOT`, `in`).|
| addIns | [addIn](addin.md) collection | Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may set the addIns property](/onedrive/developer/file-handlers/?view=odsp-graph-online&preserve-view=true) for its "FileHandler" functionality. This will let services like Microsoft 365 call the application in the context of a document the user is working on.|
|alternativeNames|String collection| Used to retrieve service principals by subscription, identify resource group and full resource ids for [managed identities](https://aka.ms/azuremanagedidentity). Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`).|
|appDescription|String|The description exposed by the associated application.|
|appDisplayName|String|The display name exposed by the associated application.|
|appId|String|The unique identifier for the associated application (its **appId** property).|
|applicationTemplateId|String|Unique identifier of the applicationTemplate that the servicePrincipal was created from. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `startsWith`).|
|appOwnerOrganizationId|String|Contains the tenant id where the application is registered. This is applicable only to service principals backed by applications. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`).|
|appRoleAssignmentRequired|Boolean|Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is `false`. Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `NOT`). |
|appRoles|[appRole](approle.md) collection|The roles exposed by the application which this service principal represents. For more information see the **appRoles** property definition on the [application](application.md) entity. Not nullable. |
| deletedDateTime | DateTimeOffset | The date and time the service principal was deleted. Read-only. |
| description | String | Free text field to provide an internal end-user facing description of the service principal. End-user portals such [MyApps](/azure/active-directory/user-help/my-apps-portal-end-user-access) will display the application description in this field. The maximum allowed size is 1024 characters. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `startsWith`) and `$search`.|
| disabledByMicrosoftStatus | String | Specifies whether Microsoft has disabled the registered application. Possible values are: `null` (default value), `NotDisabled`, and `DisabledDueToViolationOfServicesAgreement` (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement). <br><br> Supports `$filter` (`eq`, `ne`, `NOT`).  |
|displayName|String|The display name for the service principal. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`), `$search`, and `$orderBy`. |
|homepage|String|Home page or landing page of the application.|
|id|String|The unique identifier for the service principal. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `NOT`, `in`).|
| info | [informationalUrl](informationalurl.md) | Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: [Add Terms of service and privacy statement for registered Azure AD apps](/azure/active-directory/develop/howto-add-terms-of-service-privacy-statement). <br><br>Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`).  |
|keyCredentials|[keyCredential](keycredential.md) collection|The collection of key credentials associated with the service principal. Not nullable. Supports `$filter` (`eq`, `NOT`, `ge`, `le`).            |
|loginUrl|String|Specifies the URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with [SAML-based single sign-on](/azure/active-directory/manage-apps/what-is-single-sign-on#saml-sso). The user launches the application from Microsoft 365, the Azure AD My Apps, or the Azure AD SSO URL.|
|logoutUrl|String| Specifies the URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html) or SAML logout protocols.|
|notes|String|Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1024 characters.|
|notificationEmailAddresses|String collection|Specifies the list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.|
|oauth2PermissionScopes|[permissionScope](permissionScope.md) collection|The delegated permissions exposed by the application. For more information see the **oauth2PermissionScopes** property on the [application](application.md) entity's **api** property. Not nullable.|
|preferredSingleSignOnMode|string|Specifies the single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. The supported values are `password`, `saml`, `notSupported`, and `oidc`.|
|replyUrls|String collection|The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable. |
|samlSingleSignOnSettings|[samlSingleSignOnSettings](samlsinglesignonsettings.md)|The collection for settings related to saml single sign-on.|
|servicePrincipalNames|String collection|Contains the list of **identifiersUris**, copied over from the associated [application](application.md). Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Azure AD. For example,<ul><li>Client apps can specify a resource URI which is based on the values of this property to acquire an access token, which is the URI returned in the “aud” claim.</li></ul><br>The any operator is required for filter expressions on multi-valued properties. Not nullable. <br><br> Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`).|
|servicePrincipalType|String|Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Azure AD internally. The **servicePrincipalType** property can be set to three different values: <ul><li>__Application__ - A service principal that represents an application or service. The **appId** property identifies the associated app registration, and matches the **appId** of an [application](application.md), possibly from a different tenant. If the associated app registration is missing, tokens are not issued for the service principal.</li><li>__ManagedIdentity__ - A service principal that represents a [managed identity](/azure/active-directory/managed-identities-azure-resources/overview). Service principals representing managed identities can be granted access and permissions, but cannot be updated or modified directly.</li><li>__Legacy__ - A service principal that represents an app created before app registrations, or through legacy experiences. Legacy service principal can have credentials, service principal names, reply URLs, and other properties which are editable by an authorized user, but does not have an associated app registration. The **appId** value does not associate the service principal with an app registration. The service principal can only be used in the tenant where it was created.</li></ul>|
| signInAudience | String | Specifies the Microsoft accounts that are supported for the current application. Read-only. <br><br>Supported values are:<ul><li>`AzureADMyOrg`: Users with a Microsoft work or school account in my organization’s Azure AD tenant (single-tenant).</li><li>`AzureADMultipleOrgs`: Users with a Microsoft work or school account in any organization’s Azure AD tenant (multi-tenant).</li><li>`AzureADandPersonalMicrosoftAccount`: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant.</li><li>`PersonalMicrosoftAccount`: Users with a personal Microsoft account only.</li></ul> |
|tags|String collection| Custom strings that can be used to categorize and identify the service principal. Not nullable. <br><br>Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`). |
| tokenEncryptionKeyId |String|Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.|
| verifiedPublisher          | [verifiedPublisher](verifiedPublisher.md)                            | Specifies the verified publisher of the application which this service principal represents.

## Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|appRoleAssignedTo|[appRoleAssignment](approleassignment.md)|App role assignments for this app or service, granted to users, groups, and other service principals. Supports `$expand`.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|App role assignment for another app or service, granted to this service principal. Supports `$expand`.|
|claimsMappingPolicies|[claimsMappingPolicy](claimsmappingpolicy.md) collection|The claimsMappingPolicies assigned to this service principal. Supports `$expand`.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects created by this service principal. Read-only. Nullable.|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) collection|The homeRealmDiscoveryPolicies assigned to this service principal. Supports `$expand`.|
|memberOf|[directoryObject](directoryobject.md) collection|Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports `$expand`.|
|oauth2PermissionGrants|[oAuth2PermissionGrant](oauth2permissiongrant.md) collection|Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by this service principal. Read-only. Nullable. Supports `$expand`.|
|owners|[directoryObject](directoryobject.md) collection|Directory objects that are owners of this servicePrincipal. The owners are a set of non-admin users or servicePrincipals who are allowed to modify this object. Read-only. Nullable. Supports `$expand`.|
|tokenIssuancePolicies|[tokenIssuancePolicy](tokenissuancepolicy.md) collection|The tokenIssuancePolicies assigned to this service principal.|
|tokenLifetimePolicies|[tokenLifetimePolicy](tokenlifetimepolicy.md) collection|The tokenLifetimePolicies assigned to this service principal.|

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "appRoleAssignedTo",
    "appRoleAssignments",
    "createdObjects",
    "createdOnBehalfOf",
    "endpoints",
    "memberOf",
    "oauth2PermissionGrants",
    "ownedObjects",
    "owners"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipal"
}-->

```json
{
  "accountEnabled": true,
  "addIns": [{"@odata.type": "microsoft.graph.addIn"}],
  "alternativeNames": ["string"] ,
  "appDisplayName": "string",
  "appId": "string",
  "appOwnerOrganizationId": "guid",
  "appRoleAssignmentRequired": true,
  "appRoles": [{"@odata.type": "microsoft.graph.appRole"}],
  "disabledByMicrosoftStatus": "string",
  "displayName": "string",
  "homepage": "string",
  "id": "string (identifier)",
  "info": {"@odata.type": "microsoft.graph.informationalUrl"},
  "keyCredentials": [{"@odata.type": "microsoft.graph.keyCredential"}],
  "logoutUrl": "string",
  "notes": "string",
  "oauth2PermissionScopes": [{"@odata.type": "microsoft.graph.permissionScope"}],
  "passwordCredentials": [{"@odata.type": "microsoft.graph.passwordCredential"}],
  "replyUrls": ["string"],
  "servicePrincipalNames": ["string"],
  "servicePrincipalType": "string",
  "tags": ["string"],
  "tokenEncryptionKeyId": "String",
  "verifiedPublisher": {"@odata.type": "microsoft.graph.verifiedPublisher"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "servicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    ]
}
-->
