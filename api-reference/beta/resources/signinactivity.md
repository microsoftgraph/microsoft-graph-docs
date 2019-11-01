---
title: "signInActivity resource type"
description: "Provides the last signed-in date for a specific user."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# signInActivity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the last signed-in date for a specific user.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|lastSignInDateTime|DateTimeOffset|The last sign-in date for a specific user. You can use this field to calculate the last time a user signed in to the directory. This field can be used to build reports, such as inactive users. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|lastSignInRequestId|String|Request ID of the last sign-in performed by this user.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInActivity",
  "baseType": null
}-->

```json
{
  "lastSignInDateTime": "String (timestamp)",
  "lastSignInRequestId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->