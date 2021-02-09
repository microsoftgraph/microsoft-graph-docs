---
title: "pfxRecryptionRequest resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# pfxRecryptionRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List pfxRecryptionRequests](../api/intune-raimportcerts-pfxrecryptionrequest-list.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) collection|List properties and relationships of the [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) objects.|
|[Get pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-get.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Read properties and relationships of the [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|
|[Create pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-create.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Create a new [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|
|[Delete pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-delete.md)|None|Deletes a [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md).|
|[Update pfxRecryptionRequest](../api/intune-raimportcerts-pfxrecryptionrequest-update.md)|[pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md)|Update the properties of a [pfxRecryptionRequest](../resources/intune-raimportcerts-pfxrecryptionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|Guid|Not yet documented|
|userId|Guid|Not yet documented|
|deviceId|Guid|Not yet documented|
|profileId|Guid|Not yet documented|
|thumbprint|String|Not yet documented|
|deviceKeyThumbprint|String|Not yet documented|
|status|Int32|Not yet documented|
|sourceType|Int32|Not yet documented|
|createdTime|DateTimeOffset|Not yet documented|
|lastModifiedTime|DateTimeOffset|Not yet documented|
|isDeleted|Boolean|Not yet documented|
|eTag|String|Not yet documented|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pfxRecryptionRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pfxRecryptionRequest",
  "tenantId": "Guid",
  "userId": "Guid",
  "deviceId": "Guid",
  "profileId": "Guid",
  "thumbprint": "String",
  "deviceKeyThumbprint": "String",
  "status": 1024,
  "sourceType": 1024,
  "createdTime": "String (timestamp)",
  "lastModifiedTime": "String (timestamp)",
  "isDeleted": true,
  "eTag": "String"
}
```




