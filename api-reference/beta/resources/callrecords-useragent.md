---
title: "userAgent resource type"
description: "The userAgent type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# userAgent resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the user agent of an endpoint in a call.
The [clientUserAgent](callrecords-clientuseragent.md) and
[serviceUserAgent](callrecords-serviceuseragent.md)) types inherit from this type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationVersion|String|Identifies the version of application software used by this endpoint.|
|headerValue|String|User-agent header value reported by this endpoint.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.userAgent",
  "baseType": null
}-->

```json
{
  "applicationVersion": "String",
  "headerValue": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

