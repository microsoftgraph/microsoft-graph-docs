---
title: "principalResourceMembershipsScope resource type"
description: "Allows for the selection scopes to review access of the selected principals to the selected resources."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# principalResourceMembershipsScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The principalResourceMembershipsScope is a type of [accessReviewScope](accessreviewscope.md) which allows you to select a collection of principal scopes and a collection of resource scopes and review access of selected principals to selected resources. It is used to configure the **scope** property of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md).

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|principalScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the principals to be included in an access review.|
|resourceScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the resources for which access will be reviewed.|

You must also specify the **@odata.type** type property with the value `#microsoft.graph.principalResourceMembershipsScope`. For more about configuration options for **scope** using **principalResourceMembershipsScope**, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept).

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.principalResourceMembershipsScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
  "principalScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "resourceScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```
