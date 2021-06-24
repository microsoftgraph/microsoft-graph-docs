---
title: "userInstallStateSummary resource type"
description: "Contains properties for the installation state summary for a user."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userInstallStateSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the installation state summary for a user.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userInstallStateSummaries](../api/intune-books-userinstallstatesummary-list.md)|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) collection|List properties and relationships of the [userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) objects.|
|[Get userInstallStateSummary](../api/intune-books-userinstallstatesummary-get.md)|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md)|Read properties and relationships of the [userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) object.|
|[Create userInstallStateSummary](../api/intune-books-userinstallstatesummary-create.md)|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md)|Create a new [userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) object.|
|[Delete userInstallStateSummary](../api/intune-books-userinstallstatesummary-delete.md)|None|Deletes a [userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md).|
|[Update userInstallStateSummary](../api/intune-books-userinstallstatesummary-update.md)|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md)|Update the properties of a [userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userName|String|User name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceStates|[deviceInstallState](../resources/intune-books-deviceinstallstate.md) collection|The install state of the eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userInstallStateSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userInstallStateSummary",
  "id": "String (identifier)",
  "userName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```




