---
title: "userIdentity resource type"
description: "In the context of an Azure AD audit log, this represents the user information that initiated or was affected by an audit activity."
localization_priority: Normal
author: "dhanyahk"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userIdentity resource type

Namespace: microsoft.graph

In the context of an Azure AD audit log, this represents the user information that initiated or was affected by an audit activity.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| displayName | String | The identity's display name. Note that this may not always be available or up-to-date.    |
| id          | String | Unique identifier for the identity.  |
| ipAddress   | String| Indicates the client IP address used by user performing the activity (audit log only).|
| userPrincipalName | String  | The userPrincipalName attribute of the user. |

>**Note:** In some cases, the unique identifier might not be available. In this case, the **displayName** property for the identity will be returned, but the **id** property will be missing from the resource.

## JSON representation

Here is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
"displayName", "thumbnails"
  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "string",
  "id": "string",
  "ipAddress": "string",
  "userPrincipalName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "userIdentity type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/useridentity.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

