# Update notebook

Update the properties of notebook object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/notes/notebooks/<id>
PATCH /users/<id>/notes/notebooks/<id>
PATCH /groups/<id>/notes/notebooks/<id>
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
|createdBy|string|The user who created the notebook.|
|createdByIdentity|oneNoteIdentitySet|The user who created the notebook.|
|createdTime|dateTimeOffset|The date and time when the notebook was created.|
|isDefault|boolean|Indicates whether this is the user's default notebook.|
|isShared|boolean|Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner.|
|lastModifiedBy|string|The user who last modified the notebook.|
|lastModifiedByIdentity|oneNoteIdentitySet|The user who last modified the notebook.|
|lastModifiedTime|dateTimeOffset|The date and time when the notebook was last modified.|
|links|notebookLinks|The value of oneNoteClientURL can be used to open the notebook using the OneNote native client app if it's installed. The value of oneNoteWebURL can be used to open the web-browser based OneNote Online client.|
|name|string|The name of the notebook.|
|sectionGroupsUrl|string|The URL for the sectionGroups navigation property, which returns all the section groups in the notebook.|
|sectionsUrl|string|The URL for the sections navigation property, which returns all the sections in the notebook.|
|self|string|The endpoint where you can get details about the notebook.|
|userRole|string|One of three values: Owner, Contributor, or Reader. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Possible values are: `Owner`, `Contributor`, `Reader`, `None`.|

### Response
If successful, this method returns a `200 OK` response code and updated [notebook](../resources/notebook.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_notebook"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/notes/notebooks/<id>
Content-type: application/json
Content-length: 295

{
  "isDefault": true,
  "userRole": "userRole-value",
  "isShared": true,
  "sectionsUrl": "sectionsUrl-value",
  "sectionGroupsUrl": "sectionGroupsUrl-value",
  "links": {
    "oneNoteClientUrl": {
      "href": "href-value"
    },
    "oneNoteWebUrl": {
      "href": "href-value"
    }
  }
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notebook"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 295

{
  "isDefault": true,
  "userRole": "userRole-value",
  "isShared": true,
  "sectionsUrl": "sectionsUrl-value",
  "sectionGroupsUrl": "sectionGroupsUrl-value",
  "links": {
    "oneNoteClientUrl": {
      "href": "href-value"
    },
    "oneNoteWebUrl": {
      "href": "href-value"
    }
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update notebook",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->