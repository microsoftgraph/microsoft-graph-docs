# Update extensionproperty

Update the properties of extensionproperty object.
## Prerequisites
One of the following **permissions** is required to execute this API: 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/{id}/extensionProperties/{id}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String|            |
|dataType|String|Specifies the type of the directory extension property being added.   Supported types are: Integer, LargeInteger, DateTime (must be specified in ISO 8601 - DateTime is stored in UTC), Binary, Boolean, and String.|
|isSyncedFromOnPremises|Boolean|Indicates whether the extension property is synced from the on premises directory.                            **Notes**: not nullable.            |
|name|String|Specifies the display name for the directory extension property.                            **Notes**: not nullable.            |
|targetObjects|String|The directory objects to which the directory extension property is being added.  Supported directory entities that can be extended are: “User”, “Group”, “organization”, “Device”, “Application” and “ServicePrincipal”                            **Notes**: not nullable.            |

## Response
If successful, this method returns a `200 OK` response code and updated [extensionProperty](../resources/extensionproperty.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_extensionproperty"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/{id}/extensionProperties/{id}
Content-type: application/json
Content-length: 188

{
  "appDisplayName": "appDisplayName-value",
  "name": "name-value",
  "dataType": "dataType-value",
  "isSyncedFromOnPremises": true,
  "targetObjects": [
    "targetObjects-value"
  ]
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.extensionproperty"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 208

{
  "appDisplayName": "appDisplayName-value",
  "name": "name-value",
  "dataType": "dataType-value",
  "isSyncedFromOnPremises": true,
  "targetObjects": [
    "targetObjects-value"
  ],
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update extensionproperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->