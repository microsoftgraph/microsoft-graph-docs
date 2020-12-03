---
title: "onPremEncryptedPayload resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# onPremEncryptedPayload resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List onPremEncryptedPayloads](../api/intune-raimportcerts-onpremencryptedpayload-list.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) collection|List properties and relationships of the [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) objects.|
|[Get onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-get.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Read properties and relationships of the [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|
|[Create onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-create.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Create a new [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|
|[Delete onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-delete.md)|None|Deletes a [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md).|
|[Update onPremEncryptedPayload](../api/intune-raimportcerts-onpremencryptedpayload-update.md)|[onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md)|Update the properties of a [onPremEncryptedPayload](../resources/intune-raimportcerts-onpremencryptedpayload.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|Guid|Not yet documented|
|userId|Guid|Not yet documented|
|deviceId|Guid|Not yet documented|
|payloadId|Guid|Not yet documented|
|deviceKeyThumbprint|String|Not yet documented|
|cert1PayloadUUID|String|Not yet documented|
|cert2PayloadUUID|String|Not yet documented|
|cert3PayloadUUID|String|Not yet documented|
|plistTemplate|String|Not yet documented|
|encryptedBlob|Binary|Not yet documented|
|payloadVersion|Int32|Not yet documented|
|status|Int32|Not yet documented|
|createdTime|DateTimeOffset|Not yet documented|
|lastModifiedTime|DateTimeOffset|Not yet documented|
|eTag|String|Not yet documented|
|isDeleted|Boolean|Not yet documented|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremEncryptedPayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremEncryptedPayload",
  "tenantId": "Guid",
  "userId": "Guid",
  "deviceId": "Guid",
  "payloadId": "Guid",
  "deviceKeyThumbprint": "String",
  "cert1PayloadUUID": "String",
  "cert2PayloadUUID": "String",
  "cert3PayloadUUID": "String",
  "plistTemplate": "String",
  "encryptedBlob": "binary",
  "payloadVersion": 1024,
  "status": 1024,
  "createdTime": "String (timestamp)",
  "lastModifiedTime": "String (timestamp)",
  "eTag": "String",
  "isDeleted": true
}
```




