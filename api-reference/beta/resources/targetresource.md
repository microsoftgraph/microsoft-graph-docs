---
title: "targetResource resource complex type - Microsoft Graph API"
description: "Defines the targetResource entity resource complex type of the Microsoft Graph API which supports audit log reporting organization (tenant) activity."
author: "cloudhandler"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
---

# targetResource resource type

Namespace: microsoft.graph

Represents target resource types associated with audit activity. 


## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|Indicates the unique ID of the resource.|
|displayName|String|Indicates the visible name defined for the resource. Typically specified when the resource is created.|
|type|String|Describes the resource type.  Example values include `Application`, `Group`, `ServicePrincipal`, and `User`.|
|userPrincipalName|String|When **type** is set to `User`, this includes the user name that initiated the action; `null` for other types.|
|groupType|String|When **type** is set to `Group`, this indicates the group type.|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Indicates name, old value and new value of each attribute that changed. Property values depend on the operation **type**.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResource"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "type": "String",
  "userPrincipalName": "String",
  "groupType": "String", 
  "modifiedProperties": [{"@odata.type": "microsoft.graph.modifiedProperty"}]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


