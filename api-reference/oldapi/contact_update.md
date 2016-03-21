# Update contact

Update the properties of contact object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/contacts/<id>
PATCH /users/<id>/contacts/<id>
PATCH /me/contactFolders/<id>/contacts/<id>
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
|assistantName|string||
|birthday|dateTimeOffset||
|businessAddress|physicalAddress||
|businessHomePage|string||
|businessPhones|string||
|categories|string||
|changeKey|string||
|children|string||
|companyName|string||
|createdDateTime|dateTimeOffset||
|department|string||
|displayName|string||
|emailAddresses|emailAddress||
|fileAs|string||
|flag|followupFlag||
|generation|string||
|givenName|string||
|homeAddress|physicalAddress||
|homePhones|string||
|imAddresses|string||
|initials|string||
|jobTitle|string||
|lastModifiedDateTime|dateTimeOffset||
|manager|string||
|middleName|string||
|mobilePhone|string||
|nickName|string||
|officeLocation|string||
|otherAddress|physicalAddress||
|parentFolderId|string||
|personalNotes|string||
|profession|string||
|spouseName|string||
|surname|string||
|title|string||
|yomiCompanyName|string||
|yomiGivenName|string||
|yomiSurname|string||

### Response
If successful, this method returns a `200 OK` response code and updated [contact](../resources/contact.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_contact"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/contacts/<id>
Content-type: application/json
Content-length: 210

{
  "parentFolderId": "parentFolderId-value",
  "birthday": "datetime-value",
  "fileAs": "fileAs-value",
  "displayName": "displayName-value",
  "givenName": "givenName-value",
  "initials": "initials-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contact"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 210

{
  "parentFolderId": "parentFolderId-value",
  "birthday": "datetime-value",
  "fileAs": "fileAs-value",
  "displayName": "displayName-value",
  "givenName": "givenName-value",
  "initials": "initials-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update contact",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->