# user: delta

[Delta query](../../../concepts/delta_query_overview.md) enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. To discover changes to users, perform a request using the *delta* function. See [Using Delta Query](../../../concepts/delta_query_overview.md) for details.

### Prerequisites

[Permissions](../../../authorization/permission_scopes.md) required to perform delta query for users can be one of the following: 
*User.Read; User.ReadWrite; User.ReadBasic.All; User.Read.All; User.ReadWrite.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*

## Known Limitations

Tracking changes to relationships on Users, Groups, Organizational Contacts, and Administrative Units is only supported within the specific resource class for which changes are being tracked. For example, if a client is tracking changes on *groups* and has selected the *members* relationship, the client will only receive membership updates in the delta query response if those members are also *groups*. In other words, tracking group membership for users is not yet supported. The Microsoft Graph team understands that this is a high priority scenario and an update is targeted to be delivered in March 2017.

### HTTP request

To begin tracking changes, you make a request including the delta function on the users resource. 

<!-- { "blockType": "ignored" } -->
```http
GET /users/delta
```

### Query parameters

Tracking changes in messages incurs a round of one or more **delta** function calls. If you use any query parameter 
(other than `$deltatoken` and `$skiptoken`), you must specify 
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters 
into the token portion of the `nextLink` or `deltaLink` URL provided in the response. 
You only need to specify any desired query parameters once upfront. 
In subsequent requests, simply copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already 
includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `deltaLink` URL of the previous **delta** function call for the same message collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same message collection. |

### Optional query parameters

This method supports OData Query Parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 
- Delta query support `$select`, `$top`, and `$expand` for messages. 
- There is limited support for `$filter` and `$orderby`:
  * The only supported `$filter` expresssions are `$filter=receivedDateTime+ge+{value}` 
  or `$filter=receivedDateTime+gt+{value}`.
  * The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include
  an `$orderby` expression, the return order is not guaranteed. 
- There is no support for `$search`.

### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |

### Request body
Do not supply a request body for this method.

### Response

If successful, this method returns `200, OK` response code and [user](../resources/user.md) collection object in the response body. The response will also include a nextLink URL or a deltaLink URL. 

- If a nextLink URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

- If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.

See:
- [Using Delta Query](../../../concepts/delta_query_overview.md) for more details
- [Get incremental changes for users](../../../concepts/delta_query_users.md) for an example requests.

### Example
##### Request
<!-- {
  "blockType": "request",
  "name": "user_delta"
}-->
```http
GET https://graph.microsoft.com/beta/users/delta
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- { 
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true 
} --> 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "businessPhones": [
          "businessPhones-value"
      ],
      "displayName": "displayName-value",
      "givenName": "givenName-value",
      "jobTitle": "jobTitle-value",
      "mail": "mail-value",
      "mobilePhone": "mobilePhone-value",
      "officeLocation": "officeLocation-value",
      "preferredLanguage": "preferredLanguage-value",
      "surname": "surname-value",
      "userPrincipalName": "userPrincipalName-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->