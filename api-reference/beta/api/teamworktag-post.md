---
title: "Create teamworkTag"
description: "Create a new teamworkTag object."
author: "anniecolonna"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create teamworkTag
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a standard [tag](../resources/teamworktag.md) for members in the team. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkTag.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{team-Id}/tags
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkTag](../resources/teamworktag.md) object.

The following table shows the properties that are required when you create the [teamworkTag](../resources/teamworktag.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the tag. The value cannot be more than 40 characters.|
|members| [teamworkTagMember](../resources/teamworktagmember.md) collection |Members of the team to add to the tag. Set the user identifier property of each member. Members count should not be more than 25.|



## Response

If successful, this method returns a `201 Created` response code and a [teamworkTag](../resources/teamworktag.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_teamworktag_from"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags
Content-Type: application/json

{
  "displayName": "Finance",
  "members":[
	{
		"userId":"92f6952f-61ca-4a94-8910-508a240bc167"
	},
	{
		"userId":"085d800c-b86b-4bfc-a857-9371ad1caf29"
	}
  ]
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkTag"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkTag",
  "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==",
  "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
  "displayName": "Financee",
  "memberCount": 2,
  "tagType": "standard"
}
```

