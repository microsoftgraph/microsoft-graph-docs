---
title: "Get userConsentRequest"
description: "Read the properties and relationships of a userConsentRequest object."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Get userConsentRequest

Namespace: microsoft.graph

Read the properties and relationships of a [userConsentRequest](../resources/userconsentrequest.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ConsentRequest.Read.All, ConsentRequest.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/appConsent/appConsentRequests/{appconsentrequest-id}/userConsentRequests/{userconsentrequest-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userConsentRequest](../resources/userconsentrequest.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_userconsentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/appConsent/appConsentRequests/ee245379-e3bb-4944-a997-24115f0b8b5e/userConsentRequests/acef2660-d194-4943-b927-4fe4fb5cb7e3
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-userconsentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-userconsentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-userconsentrequest-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-userconsentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userConsentRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/appConsent/appConsentRequests('ee245379-e3bb-4944-a997-24115f0b8b5e')/userConsentRequests",
  "id": "acef2660-d194-4943-b927-4fe4fb5cb7e3",
  "reason": "I need access",
  "status": "Completed",
  "createdDateTime": "2019-10-18T19:07:19.7374554Z",
  "createdBy": {
    "user": {
      "id": "db60ab61-caea-4889-a824-98de31ef31b5",
      "displayName": "Alex Wilber",
      "userPrincipalName": "AlexW@contoso.com",
      "mail": "AlexW@contoso.com"
    }
  },
  "approval@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/appConsent/appConsentRequests('ee245379-e3bb-4944-a997-24115f0b8b5e')/userConsentRequests('acef2660-d194-4943-b927-4fe4fb5cb7e3')/approval/$entity",
  "approval": {
    "id": "acef2660-d194-4943-b927-4fe4fb5cb7e3",
    "stages@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/appConsent/appConsentRequests('ee245379-e3bb-4944-a997-24115f0b8b5e')/userConsentRequests('acef2660-d194-4943-b927-4fe4fb5cb7e3')/approval/stages",
    "stages": [
      {
        "id": "f5a4ca4a-1316-4872-8112-993c55dab51e",
        "displayName": null,
        "reviewedDateTime": "2019-10-19T04:12:09.633Z",
        "reviewResult": "Approve",
        "status": "Completed",
        "assignedToMe": true,
        "justification": "Admin consent granted.",
        "reviewedBy": {
          "id": "00000001-0000-0000-c000-000000000000",
          "displayName": "",
          "userPrincipalName": "",
          "mail": ""
        }
      }
    ]
  },
  "approvalId": "acef2660-d194-4943-b927-4fe4fb5cb7e3",
  "completedDateTime": null,
  "customData": null
}
```
