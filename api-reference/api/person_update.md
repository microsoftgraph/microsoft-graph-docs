# Update person

Update the properties of person object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/people/<id>
PATCH /users/<id>/people/<id>
PATCH /drive/root/createdByUser/people/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|birthday|string||
|companyName|string||
|department|string||
|displayName|string||
|emailAddresses|rankedEmailAddress||
|givenName|string||
|isFavorite|boolean||
|mailboxType|string||
|officeLocation|string||
|personNotes|string||
|personType|string||
|phones|phone||
|postalAddresses|location||
|profession|string||
|sources|personDataSource||
|surname|string||
|title|string||
|webSites|webSite||
|yomiCompany|string||

### Response
If successful, this method returns a `200 OK` response code and updated [person](../resources/person.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_person"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/people/<id>
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
##### Response
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
  "description": "Update person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->