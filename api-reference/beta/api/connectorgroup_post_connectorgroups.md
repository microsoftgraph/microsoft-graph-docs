# Create connectorGroup

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Use this API to create a new connectorGroup.
## Prerequisites
The following **scopes** are required to execute this API: *Directory.ReadWrite.All Or Directory.AccessAsUser.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /connectorGroups

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. Requried|

## Request body
In the request body, supply a JSON representation of [connectorGroup](../resources/connectorgroup.md) object.

## Response

If successful, this method returns `201, Created` response code and [connectorGroup](../resources/connectorgroup.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_connectorgroup_from_connectorgroups"
}-->
```http
POST https://graph.microsoft.com/{ver}/connectorGroups
Content-type: application/json
Content-length: 99

{
  "name": "name-value",
  "connectorGroupType": "connectorGroupType-value",
  "isDefault": false
}
```
In the request body, supply a JSON representation of [connectorGroup](../resources/connectorgroup.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connectorGroup"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 119

{
  "id": "id-value",
  "name": "name-value",
  "connectorGroupType": "connectorGroupType-value",
  "isDefault": false
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create connectorGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
