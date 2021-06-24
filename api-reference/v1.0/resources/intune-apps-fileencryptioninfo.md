---
title: "fileEncryptionInfo resource type"
description: "Contains properties for file encryption information for the content version of a line of business app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# fileEncryptionInfo resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for file encryption information for the content version of a line of business app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptionKey|Binary|The key used to encrypt the file content.|
|initializationVector|Binary|The initialization vector used for the encryption algorithm.|
|mac|Binary|The hash of the encrypted file content + IV (content hash).|
|macKey|Binary|The key used to get mac.|
|profileIdentifier|String|The the profile identifier.|
|fileDigest|Binary|The file digest prior to encryption.|
|fileDigestAlgorithm|String|The file digest algorithm.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileEncryptionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileEncryptionInfo",
  "encryptionKey": "binary",
  "initializationVector": "binary",
  "mac": "binary",
  "macKey": "binary",
  "profileIdentifier": "String",
  "fileDigest": "binary",
  "fileDigestAlgorithm": "String"
}
```




