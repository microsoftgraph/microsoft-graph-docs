# Update sectiongroup

Update the properties of sectiongroup object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/notes/sectionGroups/<id>
PATCH /users/<id>/notes/sectionGroups/<id>
PATCH /groups/<id>/notes/sectionGroups/<id>
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
|createdBy|string|The user who created the section group.|
|createdByIdentity|oneNoteIdentitySet|The user who created the section group.|
|createdTime|dateTimeOffset|The date and time when the section group was created.|
|lastModifiedBy|string|The user who last modified the section group.|
|lastModifiedByIdentity|oneNoteIdentitySet|The user who last modified the section group.|
|lastModifiedTime|dateTimeOffset|The date and time when the section group was last modified.|
|name|string|The name of the section group.|
|sectionGroupsUrl|string|The URL for the sectionGroups navigation property, which returns all the section groups in the section group.|
|sectionsUrl|string|The URL for the sections navigation property, which returns all the sections in the section group.|
|self|string|The endpoint where you can get details about the section group.|

### Response
If successful, this method returns a `200 OK` response code and updated [sectionGroup](../resources/sectiongroup.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_sectiongroup"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/notes/sectionGroups/<id>
Content-type: application/json
Content-length: 305

{
  "sectionsUrl": "sectionsUrl-value",
  "sectionGroupsUrl": "sectionGroupsUrl-value",
  "name": "name-value",
  "createdBy": "createdBy-value",
  "createdByIdentity": {
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedBy": "lastModifiedBy-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sectiongroup"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 305

{
  "sectionsUrl": "sectionsUrl-value",
  "sectionGroupsUrl": "sectionGroupsUrl-value",
  "name": "name-value",
  "createdBy": "createdBy-value",
  "createdByIdentity": {
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedBy": "lastModifiedBy-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update sectiongroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->