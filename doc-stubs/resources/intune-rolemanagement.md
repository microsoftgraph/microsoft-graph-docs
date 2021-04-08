---
title: "roleManagement resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# roleManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get roleManagement](../api/intune-rolemanagement-get.md)|[roleManagement](../resources/intune-rolemanagement.md)|Read the properties and relationships of a [roleManagement](../resources/intune-rolemanagement.md) object.|
|[Update roleManagement](../api/intune-rolemanagement-update.md)|[roleManagement](../resources/intune-rolemanagement.md)|Update the properties of a [roleManagement](../resources/intune-rolemanagement.md) object.|
|[List rbacApplicationMultiple](../api/intune-rolemanagement-list-cloudpc.md)|[rbacApplicationMultiple](../resources/rbacapplicationmultiple.md) collection|Get the rbacApplicationMultiple resources from the cloudPC navigation property.|
|[Create rbacApplicationMultiple](../api/intune-rolemanagement-post-cloudpc.md)|[rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|Create a new rbacApplicationMultiple object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cloudPC|[rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|**TODO: Add Description**|
|deviceManagement|[rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|**TODO: Add Description**|
|directory|[rbacApplication](../resources/rbacapplication.md)|**TODO: Add Description**|
|entitlementManagement|[rbacApplication](../resources/rbacapplication.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleManagement",
  "id": "String (identifier)"
}
```

