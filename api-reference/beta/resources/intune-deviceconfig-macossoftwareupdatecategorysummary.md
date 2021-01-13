---
title: "macOSSoftwareUpdateCategorySummary resource type"
description: "MacOS software update category summary report for a device and user"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSSoftwareUpdateCategorySummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

MacOS software update category summary report for a device and user

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSSoftwareUpdateCategorySummaries](../api/intune-deviceconfig-macossoftwareupdatecategorysummary-list.md)|[macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) collection|List properties and relationships of the [macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) objects.|
|[Get macOSSoftwareUpdateCategorySummary](../api/intune-deviceconfig-macossoftwareupdatecategorysummary-get.md)|[macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md)|Read properties and relationships of the [macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) object.|
|[Create macOSSoftwareUpdateCategorySummary](../api/intune-deviceconfig-macossoftwareupdatecategorysummary-create.md)|[macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md)|Create a new [macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) object.|
|[Delete macOSSoftwareUpdateCategorySummary](../api/intune-deviceconfig-macossoftwareupdatecategorysummary-delete.md)|None|Deletes a [macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md).|
|[Update macOSSoftwareUpdateCategorySummary](../api/intune-deviceconfig-macossoftwareupdatecategorysummary-update.md)|[macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md)|Update the properties of a [macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|The name of the report|
|deviceId|String|The device ID.|
|userId|String|The user ID.|
|updateCategory|[macOSSoftwareUpdateCategory](../resources/intune-deviceconfig-macossoftwareupdatecategory.md)|Software update type. Possible values are: `critical`, `configurationDataFile`, `firmware`, `other`.|
|successfulUpdateCount|Int32|Number of successful updates on the device|
|failedUpdateCount|Int32|Number of failed updates on the device|
|totalUpdateCount|Int32|Number of total updates on the device|
|lastUpdatedDateTime|DateTimeOffset|Last date time the report for this device was updated.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|updateStateSummaries|[macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) collection|Summary of the update states.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSSoftwareUpdateCategorySummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSSoftwareUpdateCategorySummary",
  "id": "String (identifier)",
  "displayName": "String",
  "deviceId": "String",
  "userId": "String",
  "updateCategory": "String",
  "successfulUpdateCount": 1024,
  "failedUpdateCount": 1024,
  "totalUpdateCount": 1024,
  "lastUpdatedDateTime": "String (timestamp)"
}
```




