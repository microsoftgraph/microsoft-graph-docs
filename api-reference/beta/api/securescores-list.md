---
title: "List secureScores"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Normal
---

# List secureScores

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
  "truncated": false,
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
            "currentScore": 12,
            "enabledServices": ["Skype"],
            "licensedUserCount": 12,
            "maxScore": 45,
            "id": "id.value",            
            "azureTenantId": "azureTenantId.value",
            "averageComparativeScores": [
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 12
                },
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 12
                },
                {
                    "@odata.type":"microsoft.graph.averageComparativeScores",
                    "basis": "basis.value",
                    "averageScore": 12
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


<!-- {
  "type": "#page.annotation",
  "description": "List secureScores",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
