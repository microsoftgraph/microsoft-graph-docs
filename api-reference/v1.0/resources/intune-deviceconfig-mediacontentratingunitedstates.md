---
title: "mediaContentRatingUnitedStates resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mediaContentRatingUnitedStates resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|movieRating|[ratingUnitedStatesMoviesType](../resources/intune-deviceconfig-ratingunitedstatesmoviestype.md)|Movies rating selected for United States. Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `parentalGuidance13`, `restricted`, `adults`.|
|tvRating|[ratingUnitedStatesTelevisionType](../resources/intune-deviceconfig-ratingunitedstatestelevisiontype.md)|TV rating selected for United States. Possible values are: `allAllowed`, `allBlocked`, `childrenAll`, `childrenAbove7`, `general`, `parentalGuidance`, `childrenAbove14`, `adults`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mediaContentRatingUnitedStates"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingUnitedStates",
  "movieRating": "String",
  "tvRating": "String"
}
```




