---
title: "emailAddress resource type"
description: "Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
---

# emailAddress resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|String|The email address of an entity instance.|
|name|String|The display name of an entity instance.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.emailAddress"
}-->

```json
{
  "address": "string",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "emailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
