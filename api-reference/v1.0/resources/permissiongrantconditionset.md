---
title: "permissionGrantConditionSet resource type"
description: "Specifies a matching rule with conditions under which an event is included or excluded from a permission grant policy."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# permissionGrantConditionSet resource type

Namespace: microsoft.graph

A permission grant condition set is used to specify a matching rule in a [permission grant policy](permissiongrantpolicy.md) to include or exclude a permission grant event.

A permission grant condition set contains several conditions. For an event to match a permission grant condition set, all conditions must be met.

## Properties

| Property     | Type |Description|
|:---------------|:--------|:----------|
| id | String | The unique identifier for the permission grant condition set. Key. Read-only. |
| permissionClassification | String | The [permission classification](delegatedpermissionclassification.md) for the permission being granted, or "all" to match with any permission classification (including permissions which are not classified). Default is `all`. |
| permissionType | permissionType | The permission type of the permission being granted. Possible values: `application` for application permissions (e.g. app roles) or `delegated` for delegated permissions. The value `delegatedUserConsentable` indicates delegated permissions which have not been configured by the API publisher to require admin consent—this value may be used in built-in permission grant policies, but cannot be used in custom permission grant policies. Required. |
| resourceApplication | String | The **appId** of the resource application (e.g. the API) for which a permission is being granted, or `any` to match with any resource application or API. Default is `any`. |
| permissions | String collection | The list of **id** values for the specific permissions to match with, or a list with the single value "all" to match with any permission. The **id** of delegated permissions can be found in the **oauth2PermissionScopes** property of the API's [**servicePrincipal**](serviceprincipal.md) object. The **id** of application permissions can be found in the **appRoles** property of the API's [**servicePrincipal**](serviceprincipal.md) object. The **id** of resource-specific application permissions can be found in the **resourceSpecificApplicationPermissions** property of the API's [**servicePrincipal**](serviceprincipal.md) object. Default is the single value "all". |
| clientApplicationIds | String collection | A list of **appId** values for the client applications to match with, or a list with the single value "all" to match any client application. Default is the single value "all". |
| clientApplicationTenantIds | String collection | A list of Azure Active Directory tenant IDs in which the client application is registered, or a list with the single value "all" to match with client apps registered in any tenant. Default is the single value "all". |
| clientApplicationPublisherIds | String collection | A list of Microsoft Partner Network (MPN) IDs for verified publishers of the client application, or a list with the single value "all" to match with client apps from any publisher. Default is the single value "all". |
| clientApplicationsFromVerifiedPublisherOnly | Boolean | Set to `true` to only match on client applications with a verified publisher. Set to `false` to match on any client app, even if it does not have a verified publisher. Default is `false`. |

## JSON representation

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantConditionSet"
}-->

```json
{
    "id": "string (identifier)",
    "permissionClassification": "string",
    "permissionType": "string",
    "resourceApplication": "string",
    "permissions": [ "string" ],
    "clientApplicationIds": [ "string" ],
    "clientApplicationTenantIds": [ "string" ],
    "clientApplicationPublisherIds": [ "string" ],
    "clientApplicationsFromVerifiedPublisherOnly": false
}
```
