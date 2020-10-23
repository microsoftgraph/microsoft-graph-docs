---
title: "clientUserAgent resource type"
description: "The clientUserAgent type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# clientUserAgent resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a client user agent of an endpoint in a call. Inherits from
the [userAgent](callrecords-useragent.md) type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationVersion|String|Identifies the version of application software used by this endpoint.|
|headerValue|String|User-agent header value reported by this endpoint.|
|platform|microsoft.graph.callRecords.clientPlatform|Identifies the platform used by this endpoint. Possible values are: `unknown`, `windows`, `macOS`, `iOS`, `android`, `web`, `ipPhone`, `roomSystem`, `surfaceHub`, `holoLens`, `unknownFutureValue`.|
|productFamily|microsoft.graph.callRecords.productFamily|Identifies the family of application software used by this endpoint. Possible values are: `unknown`, `teams`, `skypeForBusiness`, `lync`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.clientUserAgent",
  "baseType": "microsoft.graph.callRecords.userAgent"
}-->

```json
{
  "applicationVersion": "String",
  "headerValue": "String",
  "platform": "String",
  "productFamily": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "clientUserAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

