---
title: "accessReviewInstanceDecisionItemServicePrincipalTarget resource type"
description: "Represents the target of a review as a service principal target."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemServicePrincipalTarget resource type

Namespace: microsoft.graph

Represents a service principal under review in an [accessReviewInstance](accessreviewinstance.md).

Inherits from [accessReviewInstanceDecisionItemTarget](../resources/accessreviewinstancedecisionitemtarget.md).

## Properties
| Property | Type | Description |
| :--------------------------- | :------------------------ | :---------- |
| servicePrincipalID | String | The identifier of the service principal whose access is being reviewed. |
| servicePrincipalDisplayName | String | The display name of the service principal whose access is being reviewed. |
| appId | String | The appId for the service principal entity being reviewed. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemServicePrincipalTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemServicePrincipalTarget",
  "servicePrincipalId": "String",
  "servicePrincipalDisplayName": "String",
  "appId": "String"
}
```
