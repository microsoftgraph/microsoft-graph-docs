# List user devices

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get a list of user devices that support Project Rome capabilities. This includes the ability to launch an app, or message or send data to an application. After you do a GET call on me/devices, pass in the ID of the device to [send a command](send_device_command.md) to your device.

## Prerequisites

The following scope is required to execute this API: *Device.Read*

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET me/devices
```

## Request headers


| Header |Value
|:----|:------|
|Authorization| Bearer {token}. Required. |
|Accept | application/json |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a 200 response code and the user device properties in the response body.

```http
HTTP/1.1 200 OK
```

```json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#devices",
  "value": [
    {
      "name": "name",
      "id": "id",
      "status": "status",
      "platform": "platform",
      "kind": "formFactor",
      "image": "image",
      "model": "model",
      "manufacturer": "manufacturer",
    }
  ]
}
```

## User device properties

|**Name**|**Type**|**Description R/O**|
|:----|:------|:------|
|name| String | Friendly name of a device|
|id| String| ID of a device|
|status | String| Device is online or offline|
|commands | contained navigation Collection(graph.microsoft.command) | Set of commands sent to this device|
|platform |String|Platform of device|
|kind| String| Form factor of device|
|image| String| Location to icon image of device|
|model| String| Model of device|
|manufacturer| String| Manufacturer of device|

## Example
This example will return the list of devices for a user. To command a device using `me/devices/{id}/command`, you will need to get the ID of the device that is returned.

### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_devices"
}-->


```http
GET me/devices
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8
```

### Response

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK

{
  "value": [
    {
    "id": "6841b3db-2b55-467b-ad84-79a41a4ef665",
    "Name": "JimSurface",
    "Manufacturer": "Microsoft Corporation",
    "Model": "Surface Book",
    "Kind": "Tablet",
    "Status": "Unknown",
    "Platform": "Windows"
    }
  ]
}
```



