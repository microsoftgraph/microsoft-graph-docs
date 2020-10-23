---
title: "alertTrigger resource type"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# alertTrigger resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the properties that triggered a detection (properties exist in the alert entity).

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|name|String|Name of the property serving as a detection trigger.|
|type|String|Type of the property in the key:value pair for interpretation. For example, String, Boolean, etc.|
|value|String|Value of the property serving as a detection trigger.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.alertTrigger"
}-->

```json
{
  "name": "String",
  "type": "String",
  "value": "String"
}

```

## Example

```json
{
  "name": "hostState.privateIpAddress",
  "type": "String",
  "value": "10.154.9.40"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "alertTrigger resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


