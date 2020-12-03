---
title: "settings resource type"
description: "The current required settings for a user to use the analytics API."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# settings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current required settings for a user to use the analytics API.

For the analytics API to return results for users, they must have a cloud-hosted mailbox that’s enabled for Microsoft Graph, have a valid MyAnalytics license, and be opted in to using MyAnalytics.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
[Get settings](../api/useranalytics-get-settings.md) | [settings](settings.md) | Get the following property settings for a user.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hasGraphMailbox|Boolean|Specifies if the user's primary mailbox is hosted in the cloud and is enabled for Microsoft Graph.|
|hasLicense|Boolean|Specifies if the user has a MyAnalytics license assigned.|
|hasOptedOut|Boolean|Specifies if the user opted out of MyAnalytics.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settings",
  "baseType": null
}-->

```json
{
  "hasGraphMailbox": true,
  "hasLicense": true,
  "hasOptedOut": false
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "settings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

