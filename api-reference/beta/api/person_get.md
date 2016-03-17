# Get person

Retrieve the properties and relationships of a person object.
### Prerequisites
The following **scopes** are required to execute this API: *People.Read*; *People.ReadWrite*
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/people/<id>
GET /users/<id>/people/<id>
GET /drive/root/createdByUser/people/<id>
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$count|none|The count of related entities can be requested by specifying the $count query option.|
|$expand|string|Comma-separated list of relationships to expand and include in the response. See relationships table of [person](../resources/person.md) object for supported names. |
|$select|string|Comma-separated list of properties to include in the response.|

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [person](../resources/person.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_person"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/people/<id>
```
##### Response
Results are ordered by their relevance, which is determined by the criteria specified in the request and ranked based on multiple communication, collaboration, and business relationships.

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 196

{
  "displayName": "displayName-value",
  "givenName": "givenName-value",
  "surname": "surname-value",
  "birthday": "birthday-value",
  "personNotes": "personNotes-value",
  "isFavorite": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->