# Update rangefill

Update the properties of rangefill object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              | 
|:--------------------|:---------------------------------------------------------| 
|Delegated (work or school account) | Files.ReadWrite    | 
|Delegated (personal Microsoft account) | Not supported.    | 
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /workbook/names(<name>)/range/format/fill
PATCH /workbook/worksheets/{id|name}/range(<address>)/format/fill
PATCH /workbook/tables/{id|name}/columns/{id|name}/range/format/fill
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {token}. Required. |


## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange")|

## Response

If successful, this method returns a `200 OK` response code and updated [RangeFill](../resources/rangefill.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_rangefill"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/names(<name>)/range/format/fill
Content-type: application/json
Content-length: 28

{
  "color": "color-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.rangeFill"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 28

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update rangefill",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->