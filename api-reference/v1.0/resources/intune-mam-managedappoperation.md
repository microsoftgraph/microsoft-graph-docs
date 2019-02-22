---
title: "managedAppOperation resource type"
description: "Represents an operation applied against an app registration."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# managedAppOperation resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an operation applied against an app registration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppOperations](../api/intune-mam-managedappoperation-list.md)|[managedAppOperation](../resources/intune-mam-managedappoperation.md) collection|List properties and relationships of the [managedAppOperation](../resources/intune-mam-managedappoperation.md) objects.|
|[Get managedAppOperation](../api/intune-mam-managedappoperation-get.md)|[managedAppOperation](../resources/intune-mam-managedappoperation.md)|Read properties and relationships of the [managedAppOperation](../resources/intune-mam-managedappoperation.md) object.|
|[Create managedAppOperation](../api/intune-mam-managedappoperation-create.md)|[managedAppOperation](../resources/intune-mam-managedappoperation.md)|Create a new [managedAppOperation](../resources/intune-mam-managedappoperation.md) object.|
|[Delete managedAppOperation](../api/intune-mam-managedappoperation-delete.md)|None|Deletes a [managedAppOperation](../resources/intune-mam-managedappoperation.md).|
|[Update managedAppOperation](../api/intune-mam-managedappoperation-update.md)|[managedAppOperation](../resources/intune-mam-managedappoperation.md)|Update the properties of a [managedAppOperation](../resources/intune-mam-managedappoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The operation name.|
|lastModifiedDateTime|DateTimeOffset|The last time the app operation was modified.|
|state|String|The current state of the operation|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppOperation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppOperation",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "id": "String (identifier)",
  "version": "String"
}
```



