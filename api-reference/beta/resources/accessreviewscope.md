---
title: "accessReviewScope resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScope` represents what entities will be reviewed in an access review.  "
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewScope** defines what entities will be reviewed in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). This is expressed as an odata query. The query type must also be expressed so that scenarios can be supported to review entities outside of MicrosoftGraph, such as ARM.

## Properties
| Property   | Type  | Description |
| :-------------------------| :---------- | :---------- |
| query |String  | The query specifying what will be reviewed. See table for examples. |
|queryType  |String | The type of query. Examples include MicrosoftGraph and ARM. |

### Supported queries for accessReviewScope as scope
The following are queries supported as the `scope` property in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md)

|Scenario| Query | Additional Comments |
|--|--|-- |
| Review of all users assigned to a group | /groups/{group id}/transitiveMembers ||
| Review of guest users assigned to a group | /groups/{group id}/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') ||
| Review of guest users assigned to all groups | ./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') | Note that the corresponding instanceEnumerationScope should also be passed in to the accessReviewScheduleDefinition. See table below for instanceEnumerationScope query. |
| Entitlement Management Access Package Assigment Reviews | /identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}')| Note that only READ is supported for Access Package Assignment Reviews|

### Supported queries for accessReviewScope as instanceEnumerationScope
The following are queries supported as the `instanceEnumerationScope` property in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md)

|Scenario| Query | Additional Comments |
|--|--|--|
| Review of guest users assigned to all groups, excluding specified groups | /groups?$filter=(groupTypes/any(c:c+eq+'Unified') and id ne '{group id}' and id ne '{group id}' and id ne '{group id}')&$count=true | Note that the corresponding scope should also be passed in to the accessReviewScheduleDefinition. See "Review of guest users assigned to all groups" in scope property table above for the scope query. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScope",
  "query": "String",
  "queryType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
