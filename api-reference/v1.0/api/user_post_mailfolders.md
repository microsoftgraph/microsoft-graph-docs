# Create MailFolder

Use this API to create a new mail folder.
## Prerequisites
One of the following **scopes** is required to execute this API:
*Mail.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/mailFolders
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters. **displayName** is the only writable property for a 
[MailFolder](../resources/mailfolder.md) object.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|parentFolderId|String|The folder ID of the parent folder, or the `Inbox`, `Drafts`, `SentItems`, or `DeletedItems` well-known folder name.|
|displayName|String|The display name of the new folder.|

## Response
If successful, this method returns `201, Created` response code and [MailFolder](../resources/mailfolder.md) object in the response body.

## Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_mailfolder_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/mailFolders

{
  "parentFolderId": "Inbox",
  "displayName": "displayName-value"
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailFolder"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
{
  "displayName": "displayName-value",
  "parentFolderId": "parentFolderId-value",
  "childFolderCount": 0,
  "unreadItemCount": 0,
  "totalItemCount": 0,
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create MailFolder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
