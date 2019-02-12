---
title: "auditActor resource type"
description: "A class containing the properties for Audit Actor."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# auditActor resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

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
  "userId": "String"
}
```




