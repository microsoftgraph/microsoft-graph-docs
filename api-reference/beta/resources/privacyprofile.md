---
title: "privacyProfile resource type"
description: "Represents a company's privacy profile, which includes a privacy statement URL and a contact person for questions regarding the privacy statement."
localization_priority: Normal
doc_type: resourcePageType
---

# privacyProfile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/privacyprofile.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
