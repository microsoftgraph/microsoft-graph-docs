---
title: "secureScoreControlStateUpdate resource type"
description: "This resource contains the history of the control states updated by user (control states include Default, Ignored, ThirdParty, Reviewed)."
localization_priority: Normal
author: preetikr
ms.prod: ""
doc_type: resourcePageType
---
#  secureScoreControlStateUpdate resource type

Namespace: microsoft.graph

Contains the history of the control states updated by the user (control states include Default, Ignored, ThirdParty, Reviewed).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|assignedTo|String|Assigns the control to the user who will take the action. |
|comment|String|Provides optional comment about the control. |
|state|String|State of the control, which can be modified via a PATCH command (for example, ignored, thirdParty). |
|updatedBy|String|ID of the user who updated tenant state. |
|updatedDateTime|DateTimeOffset|Time at which the control state was updated. |

## JSON representation
 The following is a JSON representation of the resource.
 <!-- {
  "blockType": "resource",
  "optionalProperties": [
    
   ],
  "@odata.type": "microsoft.graph.secureScoreControlStateUpdate"
}-->
 ```json
{
  "assignedTo": "String",
  "comment": "String",
  "state": "String",
  "updatedBy": "String",
  "updatedDateTime": "String (timestamp)"
}
 ```
 <!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlStateUpdate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

