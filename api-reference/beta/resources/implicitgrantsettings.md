---
title: "implicitGrantSettings resource type"
description: "Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. Separate properties are available to request ID and access tokens as part of the implicit flow. To enable implicit flow, at least one of the following properties must be set to true."
localization_priority: Normal
---

# implicitGrantSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. Separate properties are available to request ID and access tokens as part of the implicit flow. To enable implicit flow, at least one of the following properties must be set to true.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|enableIdTokenIssuance| Boolean | Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.|
|enableAccessTokenIssuance| Boolean | Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.|

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "enableIdTokenIssuance": "Boolean",
  "enableAccessTokenIssuance": "Boolean"
}

```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/implicitgrantsettings.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
