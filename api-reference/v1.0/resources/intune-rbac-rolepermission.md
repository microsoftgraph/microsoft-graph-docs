---
title: "rolePermission resource type"
description: "Contains the set of ResourceActions determining the allowed and not allowed permissions for each role."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# rolePermission resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the set of ResourceActions determining the allowed and not allowed permissions for each role.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceActions|[resourceAction](../resources/intune-rbac-resourceaction.md) collection|Resource Actions each containing a set of allowed and not allowed permissions.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.rolePermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rolePermission",
  "resourceActions": [
    {
      "@odata.type": "microsoft.graph.resourceAction",
      "allowedResourceActions": [
        "String"
      ],
      "notAllowedResourceActions": [
        "String"
      ]
    }
  ]
}
```




