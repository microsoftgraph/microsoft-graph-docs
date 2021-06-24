---
title: "mobileThreatDefenseConnector resource type"
description: "Entity which represents a connection to Mobile threat defense partner."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileThreatDefenseConnector resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity which represents a connection to Mobile threat defense partner.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileThreatDefenseConnectors](../api/intune-onboarding-mobilethreatdefenseconnector-list.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) collection|List properties and relationships of the [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) objects.|
|[Get mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-get.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Read properties and relationships of the [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|
|[Create mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-create.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Create a new [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|
|[Delete mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-delete.md)|None|Deletes a [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md).|
|[Update mobileThreatDefenseConnector](../api/intune-onboarding-mobilethreatdefenseconnector-update.md)|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md)|Update the properties of a [mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|lastHeartbeatDateTime|DateTimeOffset|DateTime of last Heartbeat recieved from the Data Sync Partner|
|partnerState|[mobileThreatPartnerTenantState](../resources/intune-onboarding-mobilethreatpartnertenantstate.md)|Data Sync Partner state for this account. Possible values are: `unavailable`, `available`, `enabled`, `unresponsive`.|
|androidEnabled|Boolean|For Android, set whether data from the data sync partner should be used during compliance evaluations|
|iosEnabled|Boolean|For IOS, get or set whether data from the data sync partner should be used during compliance evaluations|
|androidDeviceBlockedOnMissingPartnerData|Boolean|For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant|
|iosDeviceBlockedOnMissingPartnerData|Boolean|For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant|
|partnerUnsupportedOsVersionBlocked|Boolean|Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner|
|partnerUnresponsivenessThresholdInDays|Int32|Get or Set days the per tenant tolerance to unresponsiveness for this partner integration|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileThreatDefenseConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileThreatDefenseConnector",
  "id": "String (identifier)",
  "lastHeartbeatDateTime": "String (timestamp)",
  "partnerState": "String",
  "androidEnabled": true,
  "iosEnabled": true,
  "androidDeviceBlockedOnMissingPartnerData": true,
  "iosDeviceBlockedOnMissingPartnerData": true,
  "partnerUnsupportedOsVersionBlocked": true,
  "partnerUnresponsivenessThresholdInDays": 1024
}
```




