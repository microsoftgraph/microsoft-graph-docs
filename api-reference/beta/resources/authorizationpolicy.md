---
title: "authorizationPolicy resource type"
description: "Represents a policy that can control authorization settings of Azure Active Directory."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# authorizationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that can control Azure Active Directory authorization settings. It's a singleton that inherits from base policy type, and always exists for the tenant. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get authorizationPolicy](../api/authorizationpolicy-get.md) | [authorizationPolicy](authorizationpolicy.md) | Read the authorizationPolicy object. |
| [Update authorizationPolicy](../api/authorizationpolicy-update.md) | None | Update the authorizationPolicy object. |

## Properties  
| Property | Type | Description | 
|-|-|-|
|id|String| ID of the authorization policy. Required. Read-only.| 
|displayName|String| Display name for this policy. |  
|description|String| Description of this policy.|  
|guestUserRoleId|Guid| Represents role templateId for the role that should be granted to guest user. Refer to [List unifiedRoleDefinitions](https://docs.microsoft.com/graph/api/rbacapplication-list-roledefinitions?view=graph-rest-beta&tabs=http) to find the list of available role templates. Currently following roles are supported: User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b). | 
|enabledPreviewFeatures|Collection(string)| List of features enabled for private preview on the tenant. | 
|blockMsolPowerShell|Boolean| To disable the use of MSOL PowerShell set this property to true. Setting to true will also disable user-based access to the legacy service endpoint used by MSOL PowerShell. This does not affect Azure AD Connect or Microsoft Graph. | 
|defaultUserRolePermissions|[defaultUserRolePermissions](defaultUserRolePermissions.md)| Specifies certain customizable permissions for default user role. | 
|allowedToUseSSPR|Boolean| Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant. | 
|allowedToSignUpEmailBasedSubscriptions|Boolean| Indicates whether users can sign up for email based subscriptions. | 
|allowEmailVerifiedUsersToJoinOrganization|Boolean| Indicates whether a user can join the tenant by email validation. | 


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authorizationPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
   "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "enabledPreviewFeatures": "[String]",
  "guestUserRoleId": "Guid",
  "blockMsolPowerShell": true,
  "defaultUserRolePermissions": {"@odata.type": "microsoft.graph.defaultUserRolePermissions"},
  "allowedToUseSSPR": true,
  "allowedToSignUpEmailBasedSubscriptions": true,
  "allowEmailVerifiedUsersToJoinOrganization": true
}
```
