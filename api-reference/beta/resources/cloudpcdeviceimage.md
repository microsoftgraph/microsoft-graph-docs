---
title: "cloudPcDeviceImage resource type"
description: "Represents the image resource on cloud PC."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDeviceImage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the image resource on cloud PC.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List deviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects.|
|[Get cloudPcDeviceImage](../api/cloudpcdeviceimage-get.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Read the properties and relationships of a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create cloudPcDeviceImage](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Delete cloudPcDeviceImage](../api/cloudpcdeviceimage-delete.md)|None|Delete a [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[getSourceImages](../api/cloudpcdeviceimage-getsourceimages.md)|[cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) collection|Get [cloudPcSourceDeviceImage](../resources/cloudpcsourcedeviceimage.md) objects.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the image resource on cloud PC. Read-only.|
|sourceImageResourceId|String|The ID of the source image resource on Azure. Required format: "/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}".|
|displayName|String|The image's display name.|
|version|String|The image version. For example: 0.0.1, 1.5.13.|
|osBuildNumber|String|The image's OS build version. For example: 1909.|
|operatingSystem|String|The image's operating system. For example: Windows 10 Enterprise.|
|lastModifiedDateTime|DateTimeOffset|The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|status|cloudPcDeviceImageStatus|The status of the image on cloud PC. Possible status include upload pending, failed to upload, or ready to use. Possible values are: `pending`, `ready`, `failed`.|
|statusDetails|cloudPcDeviceImageStatusDetails|The details of the image's status, which indicates why the upload failed, if applicable. Possible values are: `internalServerError`, `sourceImageNotFound`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcDeviceImage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDeviceImage",
  "id": "String (identifier)",
  "displayName": "String",
  "operatingSystem": "String",
  "osBuildNumber": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "statusDetails": "String",
  "sourceImageResourceId": "String"
}
```
