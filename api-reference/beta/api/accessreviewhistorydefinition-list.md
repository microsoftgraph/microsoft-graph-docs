---
title: "List accessReviewHistoryDefinitions"
description: "Get a list of the accessReviewHistoryDefinition objects."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# List accessReviewHistoryDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects created in the last 30 days, including all nested properties.

>[!NOTE]
>The default page size for this API is 100 **accessReviewHistoryDefinitions** objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).
>
>If no query parameters are provided and there are more than 100 results, Microsoft Graph will automatically paginate results at 100 results per page.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

If the signed-in user is not a Global Admin directory role member or a Global Reader directory role member, only the definitions that the signed-in user created will be returned.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/accessReviews/historyDefinitions
```

## Optional query parameters
This method supports the `$top`, `$filter`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessreviewhistorydefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewhistorydefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewhistorydefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-accessreviewhistorydefinition-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewhistorydefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition",
  "isCollection": "true"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.count": 1,
  "value": [
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
      "status": "done",
      "createdDateTime": "2021-04-14T00:22:48.9392594Z",
      "fulfilledDateTime": "2021-04-14T00:22:58.5276552Z",
      "downloadUri": "https://contoso.com/df-erm-reports/Last quarter's group reviews April 2021-22be232e-a93d-42a3-8ac5-313cfd29a0eb.csv?sv=2015-04-05&ss=b&srt=o&sp=rl&st=2021-04-15T00:22:58.5276552Z&se=2021-03-23T19:41:38.0000000Z&spr=https&sig=84rlGCIgU4ToMn%2FFLncBXq95O8a8RsFlwQY1Knl%2Fo%2FI%3D",
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
  ]
}
```
