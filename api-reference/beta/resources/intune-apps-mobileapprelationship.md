---
title: "mobileAppRelationship resource type"
description: "Describes the relationship for a child mobile app to its parent mobile app."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# mobileAppRelationship resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the relationship for a child mobile app to its parent mobile app.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppRelationships](../api/intune-apps-mobileapprelationship-list.md)|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|List properties and relationships of the [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) objects.|
|[Get mobileAppRelationship](../api/intune-apps-mobileapprelationship-get.md)|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|Read properties and relationships of the [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The relationship entity id.|
|targetId|String|The target child mobile app's app id.|
|targetDisplayName|String|The target child mobile app's display name.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppRelationship"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppRelationship",
  "id": "String (identifier)",
  "targetId": "String",
  "targetDisplayName": "String"
}
```



