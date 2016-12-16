# group: delta

[Delta query](../../../concepts/delta_query_overview.md) enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. To discover changes to groups, perform a request using the *delta* function. See [Using Delta Query](../../../concepts/delta_query_overview.md) for details.

## Prerequisites

[Permissions](../../../authorization/permission_scopes.md) required to perform delta query for groups can be either of the following: *Group.Read.All* or *Group.ReadWrite.All*

## Known Limitations

Tracking changes to relationships on Users, Groups, Organizational Contacts, and Administrative Units is only supported within the specific resource class for which changes are being tracked. For example, if a client is tracking changes on *groups* and has selected the *members* relationship, the client will only receive membership updates in the delta query response if those members are also *groups*. In other words, tracking group membership for users is not yet supported. The Microsoft Graph team understands that this is a high priority scenario and an update is targeted to be delivered in January 2017.

### HTTP request

To begin tracking changes, you make a request including the delta function on the groups resource. 

<!-- { "blockType": "ignored" } -->
```http
GET /groups/delta
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |

### Request body
Do not supply a request body for this method.

### Response

If successful, this method returns `200, OK` response code and [group](../resources/group.md) collection object in the response body. The response will also include a state token which is either a nextLink URL or a deltaLink URL.

- If a nextLink URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

- If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.

See:
- [Using Delta Query](../../../concepts/delta_query_overview.md) for more details
- [Get incremental changes for groups](../../../concepts/delta_query_groups.md) for an example requests.
    
### Example
##### Request
<!-- {
  "blockType": "request",
  "name": "group_delta"
}-->
```http
GET https://graph.microsoft.com/beta/groups/delta
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups","@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvY1FSSc_",
  "value":[
    {
      "classification": "classification-value",
      "createdDateTime":"datetime-value",
      "description":"Test group 1",
      "displayName":"TestGroup1",
      "groupTypes": [
        "groupTypes-value"
      ],
      "mail": "mail-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->