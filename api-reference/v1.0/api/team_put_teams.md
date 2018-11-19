# Create team



Create a new [team](../resources/team.md) under a [group](../resources/group.md).

In order to create a team, the group must have a least one owner.

If the group was created less than 15 minutes ago, it's possible for the Create team call to fail with a 404 error code due to replication delays. 
The recommended pattern is to retry the Create team call three times, with a 10 second delay between calls.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /groups/{id}/team
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

In the request body, supply a JSON representation of a [team](../resources/team.md) object.

## Response

If successful, this method should return a `201 Created` response code and a [team](../resources/team.md) object in the response body.

## Example

#### Request

The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "create_team"
}-->
```http
PUT https://graph.microsoft.com/v1.0/groups/{id}/team
Content-type: application/json

{  
  "memberSettings": {
    "allowCreateUpdateChannels": true
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "strict"
  }
}
```

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 401

{
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true    
  },
  "guestSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true 
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true    
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "strict",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Team",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## See also

- [Creating a group with a team](../../../concepts/teams-create-group-and-team.md)
