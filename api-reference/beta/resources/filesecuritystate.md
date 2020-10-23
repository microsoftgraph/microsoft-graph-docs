---
title: "fileSecurityState resource type"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

# fileSecurityState resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the file (not process) related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|fileHash|[fileHash](filehash.md)|Complex type containing file hashes (cryptographic and location-sensitive).|
|name|String|File name (without path).|
|path|String|Full file path of the file/imageFile.|
|riskScore|String|Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileSecurityState"
}-->

```json
{
  "fileHash": {"@odata.type": "microsoft.graph.fileHash"},
  "name": "String",
  "path": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "fileSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


