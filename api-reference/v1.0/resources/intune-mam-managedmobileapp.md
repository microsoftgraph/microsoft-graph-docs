---
title: "managedMobileApp resource type"
description: "The identifier for the deployment an app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedMobileApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The identifier for the deployment an app.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedMobileApps](../api/intune-mam-managedmobileapp-list.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md) collection|List properties and relationships of the [managedMobileApp](../resources/intune-mam-managedmobileapp.md) objects.|
|[Get managedMobileApp](../api/intune-mam-managedmobileapp-get.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Read properties and relationships of the [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|
|[Create managedMobileApp](../api/intune-mam-managedmobileapp-create.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Create a new [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|
|[Delete managedMobileApp](../api/intune-mam-managedmobileapp-delete.md)|None|Deletes a [managedMobileApp](../resources/intune-mam-managedmobileapp.md).|
|[Update managedMobileApp](../api/intune-mam-managedmobileapp-update.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Update the properties of a [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)|The identifier for an app with it's operating system type.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedMobileApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedMobileApp",
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.androidMobileAppIdentifier",
    "packageId": "String"
  },
  "id": "String (identifier)",
  "version": "String"
}
```




