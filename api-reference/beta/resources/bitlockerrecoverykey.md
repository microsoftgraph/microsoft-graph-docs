---
title: "bitlockerRecoveryKey resource type"
description: "BitLocker recovery key resource"
author: "hafowler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# bitlockerRecoveryKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a stored BitLocker key that contains the actual recovery key via the **key** property.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List recoveryKeys](../api/bitlocker-list-recoverykeys.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|Get a list of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects and their properties.|
|[Get bitlockerRecoveryKey](../api/bitlockerrecoverykey-get.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Retrieve the properties and relationships of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object. Note: The **key** property is not returned by default.|

> **Note**: Only some roles have the permissions to call these APIs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the key was originally backed up to Azure Active Directory.|
|deviceId|String|ID of the device the BitLocker key is originally backed up from.|
|id|String|The unique identifier for the BitLocker key.|
|key|String|The BitLocker recovery key.|
|volumeType|volumeType|Indicates the type of volume the BitLocker key is associated with. Possible values are: `operatingSystemVolume`, `fixedDataVolume`, `removableDataVolume`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bitlockerRecoveryKey",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
  "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
  "createdDateTime": "2020-06-15T13:45:30.0000000Z",
  "volumeType": 1,
  "deviceId": "1ab40ab2-32a8-4b00-b6b5-ba724e407de9",
  "key": "123456-231453-873456-213546-654678-765689-123456-324565"
}
```

