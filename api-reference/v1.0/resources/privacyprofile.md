---
title: "privacyProfile resource type"
description: "Represents a company's privacy profile, which includes a privacy statement URL and a contact person for questions regarding the privacy statement."
localization_priority: Normal
author: "davidmu1"
ms.prod: ""
doc_type: resourcePageType
---

# privacyProfile resource type

Namespace: microsoft.graph

Represents a company's privacy profile, which includes a privacy statement URL and a contact person for questions regarding the privacy statement.

## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|contactEmail|String| A valid smtp email address for the privacy statement contact. Not required.|
|statementUrl|String| A valid URL format that begins with http:// or https://. Maximum length is 255 characters. The URL that directs to the company's privacy statement. Not required.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privacyProfile"
}-->

```json
{
  "contactEmail": "string",
  "statementUrl": "string"
}
```

