# Get command

Get the status of a command on a device. For the  full list of status codes, see **List of actionStatus**.

## Prerequisites

The following scope is required to execute this API: Device.Command

## HTTP Request

<!-- { "blockType": "ignored" } -->

```http
GET me/devices/{id}/commands/{id}
```

## Request Headers



| Header |Value
|:----|:------|
|Authorization| Bearer <token>. Required. |
|Accept | application/json |


## Response

```http
HTTP/1.1 200 OK
```

```json

  {
    "id": "0",
    "status": "requesting",
    "type": "null",
    "appServiceName": "null",
    "packageFamilyName": "null",
    "error": "null",
    "responsepayload": "null",
    "payload": "null",
    "permissionTicket": "null",
    "postBackUri": "null"
  }
  ```

## List of actionStatus

- requesting, // Command has been created and is waiting to be processed
- sentToTarget, // Command has been sent to the target device
- executing, // Target device acknowledged receipt of the command and is executing it
- completed, // Command execution completed
- failedToSend, // Service failed to send command to target device
- executionFailed, // Command execution failed
- commandDropped, // Command dropped by client if device is in ConnectedStandby state
- cancel, // Cancel the command
- cancelling, // Cancelling the command
- canceled, // Command has been cancelled
- retry, // Service is retrying to send command to target
- expired, // Command processing exceeded expiry time
- error, // Internal error while processing the command
- custom // Custom status

## Example
In this example you will need the ID of the device and the ID of the command that has been issued to a device. The device ID is returned when issuing a GET call to `/me/devices`, and the command ID is returned when doing a POST call on `/me/devices/{id}/command`.

### Request 
<!-- {
  "blockType": "request",
  "name": "get_command"
}-->

```http

GET me/devices/{id}/commands/{id}
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8


```

### Response

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.commandobject",
  "isCollection": true
} -->

```http

HTTP/1.1 200 OK

{
  "id": "0158355AD4D680CC4E2994CC009EFFD7337D1335FCA6ED266…",
  "Status": "completed",
  "Type": null,
  "AppServiceName": null,
  "PackageFamilyName": null,
  "Error": null,
  "PermissionTicket": null,
  "PostBackUri": null,
  "Payload": null
}

```



# Get Command Payload

Get a response payload for a specific action on a device. The response payload is used when querying an app service to carry data back.


## Prerequisites

The following scope is required to execute this API: Device.Command

## HTTP Request

```http

GET me/beta/devices/{id}/command/{id}/responsePayload

```

## Request Headers


| Header |Value
|:----|:------|
|Authorization| Bearer <token>. Required. |
|Accept | application/json |


## Response

```http

HTTP/1.1 200 OK

```

```json

{"@odata.context": "https://graph.microsoft.com/devices/$metadata#microsoft.graph.PayloadResponse",
"MsIgnoredParameter":0,"CreationDate":"date-time","Type":"Ok"}

```

## Example
In this example you will need the id of the device and the ID of the command that has been issued to a device. The device ID is returned when issuing a GET call on `/me/devices`, and the command ID is returned when doing a POST call on `/me/devices/{id}/command.

### Request

<!-- {
  "blockType": "request",
  "name": "get_command"
}-->
```http

GET me/devices/{id}/commands/{id}
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8

```

### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.commandobject",
  "isCollection": true
} -->
```http

HTTP/1.1 200 OK


{"@odata.context": "https://graph.microsoft.com/devices/$metadata#microsoft.graph.PayloadResponse",
"MsIgnoredParameter":0,"CreationDate":"04/27/2017","Type":"Ok"}

```