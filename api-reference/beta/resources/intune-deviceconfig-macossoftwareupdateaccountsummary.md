---
title: "macOSSoftwareUpdateAccountSummary resource type"
description: "MacOS software update account summary report for a device and user"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSSoftwareUpdateAccountSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

MacOS software update account summary report for a device and user

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSSoftwareUpdateAccountSummaries](../api/intune-deviceconfig-macossoftwareupdateaccountsummary-list.md)|[macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) collection|List properties and relationships of the [macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) objects.|
|[Get macOSSoftwareUpdateAccountSummary](../api/intune-deviceconfig-macossoftwareupdateaccountsummary-get.md)|[macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md)|Read properties and relationships of the [macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) object.|
|[Create macOSSoftwareUpdateAccountSummary](../api/intune-deviceconfig-macossoftwareupdateaccountsummary-create.md)|[macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md)|Create a new [macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) object.|
|[Delete macOSSoftwareUpdateAccountSummary](../api/intune-deviceconfig-macossoftwareupdateaccountsummary-delete.md)|None|Deletes a [macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md).|
|[Update macOSSoftwareUpdateAccountSummary](../api/intune-deviceconfig-macossoftwareupdateaccountsummary-update.md)|[macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md)|Update the properties of a [macOSSoftwareUpdateAccountSummary](../resources/intune-deviceconfig-macossoftwareupdateaccountsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|The name of the report|
|deviceId|String|The device ID.|
|userId|String|The user ID.|
|deviceName|String|The device name.|
|userPrincipalName|String|The user principal name|
|osVersion|String|The OS version.|
|successfulUpdateCount|Int32|Number of successful updates on the device.|
|failedUpdateCount|Int32|Number of failed updates on the device.|
|totalUpdateCount|Int32|Number of total updates on the device.|
|lastUpdatedDateTime|DateTimeOffset|Last date time the report for this device was updated.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categorySummaries|[macOSSoftwareUpdateCategorySummary](../resources/intune-deviceconfig-macossoftwareupdatecategorysummary.md) collection|Summary of the updates by category.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSSoftwareUpdateAccountSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSSoftwareUpdateAccountSummary",
  "id": "String (identifier)",
  "displayName": "String",
  "deviceId": "String",
  "userId": "String",
  "deviceName": "String",
  "userPrincipalName": "String",
  "osVersion": "String",
  "successfulUpdateCount": 1024,
  "failedUpdateCount": 1024,
  "totalUpdateCount": 1024,
  "lastUpdatedDateTime": "String (timestamp)"
}
```




