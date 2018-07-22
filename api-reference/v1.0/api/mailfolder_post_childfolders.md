# Create MailFolder

Use this API to create a new child mailfolder.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
|Delegated (work or school account) | Mail.ReadWrite    |
|Delegated (personal Microsoft account) | Mail.ReadWrite    |
|Application | Mail.ReadWrite |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/mailFolders/{id}/childFolders
POST /users/{id | userPrincipalName}/mailFolders/{id}/childFolders
```

Specify the parent folder in the query URL as a folder ID, or a well-known folder name. For a list of supported well-known folder names, see [mailFolder resource type](../resources/mailfolder.md#well-known-folder-names).

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | `Bearer {token}`. Required. |
| Content-Type | `application/json`. Required. |

## Request body

In the request body, provide a JSON object with the following parameters. **displayName** is the only writable property for a
[mailFolder](../resources/mailfolder.md) object.

| Parameter | Type | Description |
|:----------|:-----|:------------|
|displayName|String|The display name of the new folder.|

## Response

If successful, this method returns `201 Created` response code and a [mailFolder](../resources/mailfolder.md) resource in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_mailfolder_from_mailfolder"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/mailFolders/{id}/childFolders
Content-type: application/json
Content-length: 159

{
  "displayName": "displayName-value",
}
```

##### Response
Here is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailFolder"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 179

{
  "displayName": "displayName-value",
  "parentFolderId": "parentFolderId-value",
  "childFolderCount": 99,
  "unreadItemCount": 99,
  "totalItemCount": 99,
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
