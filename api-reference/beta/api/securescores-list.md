---
title: "List secureScores"
description: "Retrieve the properties and relationships of a secureScores object."
localization_priority: Normal
---

# List secureScores

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [secureScores](../resources/securescores.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All.   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/secureScores
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a **secureScores** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "securescores_list"
}-->

```http
GET https://graph.microsoft.com/beta/security/secureScores?$top=1
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.secureScore"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "activeUserCount": 12,
            "createdDate": "createdDateTime.value",
            "currentScore": 12.4566633444,
            "enabledServices": ["Skype"],
            "licensedUserCount": 12,
            "maxScore": 45.2324443,
            "id": "id.value",            
            "azureTenantId": "azureTenantId.value",
            "averageComparativeScores": [
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 34.2324443
                },
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 34.2324443
                },
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 34.2324443
                }
            ],
            "controlScores": [
                {
                    "@odata.type":"microsoft.graph.controlScores",
                    "controlCategory": "controlCategory.value",
                    "controlName": "controlName.value",
                    "description": "description.value",
                    "score": "score.value",
                    "total": "total.value",
                    "count": "count.value"
                }
            ]
        }
    ]
}

```


<!--
{
  "type": "#page.annotation",
  "description": "List secureScores",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/securescores-list.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
