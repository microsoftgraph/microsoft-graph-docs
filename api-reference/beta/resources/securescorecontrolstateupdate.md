---
title: " secureScoreControlStateUpdate resource type"
description: "This resource contains history of control states updated by user (control states include Default, Ignored, ThirdParty, Reviewed)."
localization_priority: Normal
---
 ##  secureScoreControlStateUpdate resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains the history of the control states updated by the user (control states include Default, Ignored, ThirdParty, Reviewed).

|Property         | Type           |Description                                                  |
|:----------------|:---------------|:------------------------------------------------------------|
| assignedTo      | string         | Assign the control to the user who will take the action     |
| comment         | string         | Provides optional comment about the control                 |
| state           | string         | State of the control can be modified using PATCH command(Ex: ignored, thirdParty etc) |
| updatedBy       | string         |ID of the user who updated tenant state                      |
| updatedDateTime | DateTimeOffset |Time at which control state was updated                      |
 

## JSON representation
 The following is a JSON representation of the resource.

 <!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.secureScoreControlStateUpdate"
}-->
```json
{
  "assignedTo": "String",
  "comment": "String",
  "state": "String",
  "updatedBy": "String",
  "updatedDateTime": "DateTimeOffset"
}
```
 <!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlStateUpdate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
