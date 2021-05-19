---
title: "accessReviewHistoryDefinition: generateDownloadUri"
description: "Generate a URI that can be used to retrieve review history data."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewHistoryDefinition: generateDownloadUri

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Generate a URI that can be used to retrieve review history data for the associated [accessReviewHistoryDefinition](../resources/accessReviewHistoryDefinition.md). This URI is valid for one day and can be retrieved by fetching the **downloadUri** property from the associated [accessReviewHistoryDefinition](../resources/accessReviewHistoryDefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

The signed-in user must also be the creator of the associated review history definition, a Global Admin directory role member, or a Global Reader directory role member to generate the link.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/historyDefinitions/{definition-id}/generateDownloadUri()
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewhistorydefinition_generatedownloaduri"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions/b2cb022f-b7e1-40f3-9854-c65a40861c38/generateDownloadUri
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewhistorydefinition-generatedownloaduri-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewhistorydefinition-generatedownloaduri-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/accessreviewhistorydefinition-generatedownloaduri-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewhistorydefinition-generatedownloaduri-java-snippets.md)]
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
HTTP/1.1 200 OK
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
```
