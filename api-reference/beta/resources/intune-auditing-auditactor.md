---
title: "auditActor resource type"
description: "A class containing the properties for Audit Actor."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# auditActor resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties for Audit Actor.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|String|Actor Type.|
|userPermissions|String collection|List of user permissions when the audit was performed.|
|applicationId|String|AAD Application Id.|
|applicationDisplayName|String|Name of the Application.|
|userPrincipalName|String|User Principal Name (UPN).|
|servicePrincipalName|String|Service Principal Name (SPN).|
|ipAddress|String|IPAddress.|
|userId|String|User Id.|
|userRoleScopeTags|[roleScopeTagInfo](../resources/intune-auditing-rolescopetaginfo.md) collection|List of user scope tags when the audit was performed.|
|remoteTenantId|String|Remote Tenant Id|
|remoteUserId|String|Remote User Id|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditActor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActor",
  "type": "String",
  "userPermissions": [
    "String"
  ],
  "applicationId": "String",
  "applicationDisplayName": "String",
  "userPrincipalName": "String",
  "servicePrincipalName": "String",
  "ipAddress": "String",
  "userId": "String",
  "userRoleScopeTags": [
    {
      "@odata.type": "microsoft.graph.roleScopeTagInfo",
      "displayName": "String",
      "roleScopeTagId": "String"
    }
  ],
  "remoteTenantId": "String",
  "remoteUserId": "String"
}
```




