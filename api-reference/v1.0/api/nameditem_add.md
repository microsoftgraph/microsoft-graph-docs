# Add Named Item

Adds a new name to the collection of the given scope using the user's locale for the formula.

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite
  * Sites.Read.All
  
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/names/add
POST /workbook/worksheets({id|name})/names/add

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|


## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The name of the named item.|
|reference|string|The formula or the range that the name will refer to.|
|comment|string|The comment associated with the named item|

## Response
If successful, this method returns `200, OK` response code and [NamedItem](../resources/NamedItem.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "NamedItemcollection_add"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/names/add
Content-type: application/json
Content-length: 54

{
  "name": "myRange",
  "reference": "=A10+B10",
  "comment": "Comment for the named item"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.namedItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 109

{
  "name": "myRange",
  "comment": "Sample range",
  "scope": "Workbook",
  "type": "String",
  "visible": true,
  "value": "=A10+B10"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "NamedItemCollection: add",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
