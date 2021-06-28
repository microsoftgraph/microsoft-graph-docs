---
title: "Get team"
description: "Read the properties and relationships of a team object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get team
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [team](../resources/team.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}
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

If successful, this method returns a `200 OK` response code and a [team](../resources/team.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_team"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/{teamsId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.team",
    "id": "b11ef646-f646-b11e-46f6-1eb146f61eb1",
    "createdDateTime": "String (timestamp)",
    "displayName": "String",
    "description": "String",
    "internalId": "String",
    "classification": "String",
    "specialization": "String",
    "visibility": "String",
    "webUrl": "String",
    "memberSettings": {
      "@odata.type": "microsoft.graph.teamMemberSettings"
    },
    "guestSettings": {
      "@odata.type": "microsoft.graph.teamGuestSettings"
    },
    "messagingSettings": {
      "@odata.type": "microsoft.graph.teamMessagingSettings"
    },
    "funSettings": {
      "@odata.type": "microsoft.graph.teamFunSettings"
    },
    "discoverySettings": {
      "@odata.type": "microsoft.graph.teamDiscoverySettings"
    },
    "isArchived": "Boolean",
    "isMembershipLimitedToOwners": "Boolean"
  }
}
```

