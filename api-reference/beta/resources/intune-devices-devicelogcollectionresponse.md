---
title: "deviceLogCollectionResponse resource type"
description: "Windows Log Collection request entity."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceLogCollectionResponse resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Log Collection request entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceLogCollectionResponses](../api/intune-devices-devicelogcollectionresponse-list.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) collection|List properties and relationships of the [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) objects.|
|[Get deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-get.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Read properties and relationships of the [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[Create deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-create.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Create a new [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[Delete deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-delete.md)|None|Deletes a [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md).|
|[Update deviceLogCollectionResponse](../api/intune-devices-devicelogcollectionresponse-update.md)|[deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md)|Update the properties of a [deviceLogCollectionResponse](../resources/intune-devices-devicelogcollectionresponse.md) object.|
|[createDownloadUrl action](../api/intune-devices-devicelogcollectionresponse-createdownloadurl.md)|String|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier in the form of tenantId_deviceId_requestId|
|status|String|The status of the log collection request|
|managedDeviceId|Guid|The device Id|
|errorCode|Int64|The error code, if any. Valid values -9.22337203685478E+18 to 9.22337203685478E+18|
|requestedDateTimeUTC|DateTimeOffset|The DateTime of the request|
|receivedDateTimeUTC|DateTimeOffset|The DateTime the request was received|
|initiatedByUserPrincipalName|String|The UPN for who initiated the request|
|expirationDateTimeUTC|DateTimeOffset|The DateTime of the expiration of the logs|
|size|Double|The size of the logs. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceLogCollectionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLogCollectionResponse",
  "id": "String (identifier)",
  "status": "String",
  "managedDeviceId": "Guid",
  "errorCode": 1024,
  "requestedDateTimeUTC": "String (timestamp)",
  "receivedDateTimeUTC": "String (timestamp)",
  "initiatedByUserPrincipalName": "String",
  "expirationDateTimeUTC": "String (timestamp)",
  "size": "4.2"
}
```




