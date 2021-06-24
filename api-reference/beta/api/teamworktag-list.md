---
title: "List teamworkTags"
description: "Get a list of the teamworkTag objects and their properties."
author: "anniecolonna"
localization_priority: Normal
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamworkTags
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tags](../resources/teamworktag.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkTag.Read.All, TeamworkTag.ReadWrite.All|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[teamworkTag](../resources/teamworktag.md) collection|Tags assigned to a team.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-Id}/tags
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkTag](../resources/teamworktag.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamworktag"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkTag)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "@odata.type": "#microsoft.graph.teamworkTag",
        "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==",
        "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
        "displayName": "Finance",
        "description": "Finance Team for Mach 8 Project",
        "memberCount": 2,
        "tagType": "standard"
    },
    {
        "@odata.type": "#microsoft.graph.teamworkTag",
        "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyNlYjY1M2Y5Mi04MzczLTRkZTYtYmZlYy01YjRkMjE2YjZhZGUjIzk3ZjYyMzQ0LTU3ZGMtNDA5Yy04OGFkLWM0YWYxNDE1OGZmNQ==",
        "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
        "displayName": "Legal",
        "description": "Legal experts, ask us your legal questions",
        "memberCount": 4,
        "tagType": "standard"
    }
  ]
}
```

