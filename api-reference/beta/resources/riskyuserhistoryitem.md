---
title: "riskyUserHistoryItem resource type"
description: "Represents the risk history of Azure AD users"
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# riskyUserHistoryItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Represents the risk history of an Azure AD user as determined by Azure AD Identity Protection. 

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List history](../api/riskyuser-list-history.md) | [riskyUserHistoryItem](riskyuserhistoryitem.md) collection|Get the risk history of an Azure AD user.|


## Properties

| Property       | Type    | Description |
|:---------------|:--------|:------------|
| userId         | string  | The id of the user. |
| initiatedBy    | bool    | The id of actor that does the operation. |
| activity       | [riskUserActivity](riskuseractivity.md)| The activity related to user risk level change. | 

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskyUserHistoryItem",
  "baseType": "microsoft.graph.riskyUser"
}-->

```json
{
    "userId": "string",
    "initiatedBy": "string",
    "activity": {"@odata.type": "microsoft.graph.riskUserActivity"}
}
```


<!--
{
  "type": "#page.annotation",
  "description": "riskyUserHistoryItem resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
   
  ]
}
-->


