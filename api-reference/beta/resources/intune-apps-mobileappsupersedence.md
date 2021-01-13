---
title: "mobileAppSupersedence resource type"
description: "Describes a supersedence relationship between two mobile apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppSupersedence resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes a supersedence relationship between two mobile apps.


Inherits from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppSupersedences](../api/intune-apps-mobileappsupersedence-list.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) collection|List properties and relationships of the [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) objects.|
|[Get mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-get.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Read properties and relationships of the [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|
|[Create mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-create.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Create a new [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|
|[Delete mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-delete.md)|None|Deletes a [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md).|
|[Update mobileAppSupersedence](../api/intune-apps-mobileappsupersedence-update.md)|[mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md)|Update the properties of a [mobileAppSupersedence](../resources/intune-apps-mobileappsupersedence.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The relationship entity id. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetId|String|The target mobile app's app id. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayName|String|The target mobile app's display name. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayVersion|String|The target mobile app's display version. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetPublisher|String|The target mobile app's publisher. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetType|[mobileAppRelationshipType](../resources/intune-apps-mobileapprelationshiptype.md)|The type of relationship indicating whether the target is a parent or child. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md). Possible values are: `child`, `parent`.|
|supersedenceType|[mobileAppSupersedenceType](../resources/intune-apps-mobileappsupersedencetype.md)|The supersedence relationship type between the parent and child apps. Possible values are: `update`, `replace`.|
|supersededAppCount|Int32|The total number of apps directly or indirectly superseded by the child app.|
|supersedingAppCount|Int32|The total number of apps directly or indirectly superseding the parent app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppSupersedence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppSupersedence",
  "id": "String (identifier)",
  "targetId": "String",
  "targetDisplayName": "String",
  "targetDisplayVersion": "String",
  "targetPublisher": "String",
  "targetType": "String",
  "supersedenceType": "String",
  "supersededAppCount": 1024,
  "supersedingAppCount": 1024
}
```




