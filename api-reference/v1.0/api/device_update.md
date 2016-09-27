# Update device

Update the properties of a registered device.

## Prerequisites
One of the following **scopes** is required to execute this API: *Directory.AccessAsUser.All* or *Device.ReadWrite.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /devices/<id>
```
> Note: The "id" in the request is the "id" property of the device, not the "deviceId" property.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, supply the values for the [device](../resources/device.md) properties that should be updated.
## Response
If successful, this method returns a `204 No Content` response code.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_device"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/devices/<id>
Content-type: application/json

{
  "accountEnabled": true
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
} -->
```http
HTTP/1.1 204 No Content
```
