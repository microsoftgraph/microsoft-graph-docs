---
title: "serviceAnnouncementBase resource type"
description: "This is an abstract base type for serviceHealthIssue and serviceUpdateMessage."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceAnnouncementBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract base type for [serviceHealthIssue](../resources/servicehealthissue.md) and [serviceUpdateMessage](../resources/serviceupdatemessage.md).

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|details|Collection([keyValuePair](../resources/keyvaluepair.md))|Additional details about service event. This property doesn't support filters.|
|endDateTime|DateTimeOffset|The end time of the service event.|
|id|String|The id of the service event.|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the service event.|
|startDateTime|DateTimeOffset|The start time of the service event.|
|title|String|The title of the service event.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceAnnouncementBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceAnnouncementBase",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ]
}
```