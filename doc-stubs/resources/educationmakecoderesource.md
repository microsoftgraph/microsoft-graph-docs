---
title: "educationMakeCodeResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# educationMakeCodeResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [educationResource](../resources/educationresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [educationResource](../resources/educationresource.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [educationResource](../resources/educationresource.md).|
|displayName|String|**TODO: Add Description** Inherited from [educationResource](../resources/educationresource.md).|
|hostWebUrl|String|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [educationResource](../resources/educationresource.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [educationResource](../resources/educationresource.md).|
|projectId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationMakeCodeResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationMakeCodeResource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "hostWebUrl": "String",
  "projectId": "String"
}
```

