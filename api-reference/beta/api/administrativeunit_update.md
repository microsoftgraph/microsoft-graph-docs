# Update administrativeunit

Update the properties of an [administrativeUnit](../resources/administrativeunit.md) object.
## Prerequisites
The following **scopes** are required to execute this API: *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /administrativeUnits/{id}
```
## Optional request headers
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <token>. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string|Description for the administrative unit.|
|displayName|string|Display name for the administrative unit.|
|visibility|string|Visibility for the administrative unit. If not set then the default is "public". Can be set to "HiddenMembership", which hides the membership from non-members.|

Since the **administrativeUnit** resource supports [extensions](../../../concepts/extensibility_overview.md), you can use the `PATCH` operation to 
add, update, or delete your own app-specific data in custom properties of an extension in an existing **administrativeUnit** instance.

## Response
If successful, this method returns a `200 OK` response code and updated [administrativeUnit](../resources/administrativeunit.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_administrativeunit"
}-->
```http
PATCH https://graph.microsoft.com/beta/administrativeUnits/{id}
Content-type: application/json
Content-length: 114

{
  "displayName": "displayName-value",
  "description": "description-value",
  "visibility": "visibility-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.administrativeunit"
} -->
```http
HTTP/1.1 204 No content
```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions (preview)](../../../concepts/extensibility_open_users.md)
<!--
- [Add custom data to groups using schema extensions (preview)](../../../concepts/extensibility_schema_groups.md)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update administrativeunit",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->