---
title: "Create accessReviewHistoryDefinition"
description: "Create a new accessReviewHistoryDefinition object."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Create accessReviewHistoryDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

The signed-in user must also be in a directory role that permits them to read an access review to retrieve any data.  For more details, see the role and permission requirements for [access reviews](../resources/accessreviewsv2-root.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/historyDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.

The following table shows the required properties used to create an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName | String  | Name for the access review history data collection. Required. |
|reviewHistoryPeriodStartDateTime  | DateTimeOffset  | Timestamp, reviews starting on or after this date will be included in the fetched history data. Required.  |
|reviewHistoryPeriodEndDateTime  | DateTimeOffset  | Timestamp, reviews starting on or before this date will be included in the fetched history data. Required.  |
|scopes|[accessReviewQueryScope](../resources/accessreviewqueryscope.md) collection| Used to filter which reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. Required. <br> For more, see [Supported scope queries for accessReviewHistoryDefinition](#supported-scope-queries-for-accessreviewhistorydefinition). |

### Supported scope queries for accessReviewHistoryDefinition

The **scopes** property of [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) is based on **accessReviewQueryScope**, a resource that allows you to configure different resources in it's **query** property. These resources then represent the scope of the history definition and dictate the type of review history data that is included in the downloadable CSV file which is generated when the history definition is created.

Use the following format for the **query** property:

```http
/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '{object}')
```

The value of `{object}` is one of the resources that can be configured in an **accessReviewScheduleDefinition**. For example, the following includes every accessReviewScheduleDefinition review result on individual groups (and excludes definitions scoped to all Microsoft 365 groups with guest users).

```http
/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')
```

For more supported values, see Use the [$filter query parameter on accessReviewScheduleDefinition](accessreviewscheduledefinition-list.md#use-the-filter-query-parameter).

## Response

If successful, this method returns a `201 Created` response code and an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object in the response body.

## Examples

The following example shows how to create an access review history definition scoped to access reviews on access packages and groups, running between the start date of 01/01/2021 and end date of 04/05/2021.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accessreviewhistorydefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions
Content-Type: application/json

{
  "displayName": "Last quarter's group reviews April 2021",
  "decisions": [
    "approve",
    "deny",
    "dontKnow",
    "notReviewed",
    "notNotified"
  ],
  "reviewHistoryPeriodStartDateTime": "2021-01-01T00:00:00Z",
  "reviewHistoryPeriodEndDateTime": "2021-04-05T00:00:00Z",
  "scopes": [
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
      "queryRoot": null
    },  
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
      "queryRoot": null
    }
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accessreviewhistorydefinition-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accessreviewhistorydefinition-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-accessreviewhistorydefinition-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accessreviewhistorydefinition-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
  "id": "b2cb022f-b7e1-40f3-9854-c65a40861c38",
  "displayName": "Last quarter's group reviews April 2021",
  "reviewHistoryPeriodStartDateTime": "2021-01-01T00:00:00Z",
  "reviewHistoryPeriodEndDateTime": "2021-04-05T00:00:00Z",
  "decisions": [
    "approve",
    "deny",
    "dontKnow",
    "notReviewed",
    "notNotified"
  ],
  "status": "requested",
  "createdDateTime": "2021-04-14T00:22:48.9392594Z",
  "fulfilledDateTime": null,
  "downloadUri": null,
  "createdBy": {
      "id": "957f1027-c0ee-460d-9269-b8444459e0fe",
      "displayName": "MOD Administrator",
      "userPrincipalName": "admin@contoso.com"
  },
  "scopes": [
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
      "queryRoot": null
    },  
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
      "queryRoot": null
    }
  ]
}
```
