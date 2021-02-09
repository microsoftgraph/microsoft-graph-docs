---
title: "Create accessReview"
description: "In the Azure AD access reviews feature, create a new accessReview object."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Create accessReview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](../resources/accessreviews-root.md) feature, create a new [accessReview](../resources/accessreview.md) object.

Before making this request, the caller must have previously [retrieved the list of business flow templates](businessflowtemplate-list.md), to have the value of `businessFlowTemplateId` to include in the request.

After making this request, the caller should [create a programControl](programcontrol-create.md), to link the access review to a program.  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.Membership, AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | AccessReview.ReadWrite.Membership |

The caller should also have ProgramControl.ReadWrite.All permission, so that after creating an access review, the caller can create a [programControl](../resources/programcontrol.md).
In addition, the signed in user must also be in a directory role that permits them to create an access review.  For more details, see the role and permission requirements for [access reviews](../resources/accessreviews-root.md).

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /accessReviews
```
## Request headers
| Name         | Description |
|:-------------|:------------|
| Authorization | Bearer \{token\}. Required. |
| Content-type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [accessReview](../resources/accessreview.md) object.

The following table shows the properties that are required when you create an accessReview.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `displayName`             |`String`                                                        | The access review name.  |
| `startDateTime`           |`DateTimeOffset`                                                | The DateTime when the review is scheduled to be start.  This must be a date in the future.   |
| `endDateTime`             |`DateTimeOffset`                                                | The DateTime when the review is scheduled to end. This must be at least one day later than the start date.   |
| `description`             |`String`                                                        | The description, to show to the reviewers. |
| `businessFlowTemplateId`  |`String`                                                        | The business flow template identifier, obtained from a [businessFlowTemplate](../resources/businessflowtemplate.md).  |
| `reviewerType`            |`String`                                                        | The relationship type of reviewer to the access rights of the reviewed object, one of `self`, `delegated`, or `entityOwners`. | 
| `reviewedEntity`          |`microsoft.graph.identity`                                      | The object for which an access review is created, such as the membership of a group or the assignments of users to an application. | 


If the reviewerType being supplied has the value `delegated`, then the caller must also include the `reviewers` property, with a collection of [userIdentity](../resources/useridentity.md) of the reviewers.

If your app is calling this API without a signed-in user, then the caller must also include the **createdBy** property, the value for which is a [userIdentity](../resources/useridentity.md) of the user who will be identified as the creator of the review.

In addition, the caller can include settings, to create a recurring review series or to change from the default review behavior. In particular, to create a recurring review, the caller must include the `accessReviewRecurrenceSettings` within the access review settings,


## Response
If successful, this method returns a `201, Created` response code and an [accessReview](../resources/accessreview.md) object in the response body.

## Example

This is an example of creating a one-time (not recurring) access review, explicitly specifying two users as the reviewers.

### Request
In the request body, supply a JSON representation of the [accessReview](../resources/accessreview.md) object.

<!-- {
  "blockType": "ignored",
  "name": "create_accessReview_from_accessReviews"
}-->
```http
POST https://graph.microsoft.com/beta/accessReviews
Content-type: application/json

{
    "displayName":"TestReview",
    "startDateTime":"2017-02-10T00:35:53.214Z",
    "endDateTime":"2017-03-12T00:35:53.214Z",
    "reviewedEntity": {
        "id": "99025615-a0b1-47ec-9117-35377b10998b"
    },
    "reviewerType" : "delegated",
    "businessFlowTemplateId": "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    "description":"Sample description",
    "reviewers":
    [
        {
            "id":"f260246a-09b1-4fd5-8d18-daed736071ec"
        },
        {
            "id":"5a4e184c-4ee5-4883-96e9-b371f8da88e3"
        }
    ],
    "settings":
    {
        "mailNotificationsEnabled": true,
        "remindersEnabled": true,
        "justificationRequiredOnApproval":true,
        "autoReviewEnabled":false,
        "activityDurationInDays":30,
        "autoApplyReviewResultsEnabled":false,
        "accessRecommendationsEnabled":false,
        "recurrenceSettings":{
            "recurrenceType":"onetime",
            "recurrenceEndType":"endBy",
            "durationInDays":0,
            "recurrenceCount":0
        },
        "autoReviewSettings":{
            "notReviewedResult":"Deny"
        }
    }
}
```

### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReview"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "006111db-0810-4494-a6df-904d368bd81b",
    "displayName": "TestReview",
    "startDateTime": "2017-02-10T00:35:53.214Z",
    "endDateTime": "2017-03-12T00:35:53.214Z",
    "status": "Initializing",
    "businessFlowTemplateId": "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    "reviewerType": "delegated",
    "description": "Sample description"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Create accessReview",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


