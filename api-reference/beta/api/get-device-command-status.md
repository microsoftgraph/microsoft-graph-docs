---
title: "Get device command status"
description: "Get the status of a command on a device. For the  full list of status codes, see List of actionStatus."
localization_priority: Normal
doc_type: apiPageType
author: "ailae"
ms.prod: ""
---

# Get device command status

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of a command on a device. For the  full list of status codes, see [List of actionStatus](#list-of-actionstatus).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Device.Command    |
|Application | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET me/devices/{id}/commands/{id}
```

## Request headers

| Header |Value
|:----|:------|
|Authorization| Bearer {token}. Required. |
|Accept | application/json |

## Response
<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 200 OK
```
<!-- { "blockType": "ignored" } -->

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

In this example, you will need the ID of the device and the ID of the command that has been issued to a device. The device ID is returned when issuing a GET call to `/me/devices`, and the command ID is returned when doing a POST call on `/me/devices/{id}/command`.

#### Request

The following example shows the request.

<!-- {
  "blockType": "ignored",
  "name": "get_command"
} -->
```http
GET me/devices/{id}/commands/{id}
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "ignored",
  "truncated": false,
  "@odata.type": "microsoft.graph.command",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK

{
  "value":
  {
    "id": "0158355AD4D680CC4E2994CC009EFFD7337D1335FCA6ED266…",
    "status": "completed",
    "type": null,
    "appServiceName": null,
    "packageFamilyName": null,
    "error": null,
    "permissionTicket": null,
    "postBackUri": null,
    "payload": null
  }
}
```


## Get command payload

Get a response payload for a specific action on a device. The response payload is used when querying an app service to carry data back.


### Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Device.Command    |
|Application | Not supported. |

### HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET me/devices/{id}/command/{id}/responsePayload
```

### Request headers

| Header |Value
|:----|:------|
|Authorization| Bearer {token}. Required. |
|Accept | application/json |

### Response
<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 200 OK
```
<!-- { "blockType": "ignored" } -->

```json
{
  "@odata.context": "https://graph.microsoft.com/devices/$metadata#microsoft.graph.PayloadResponse",
  "MsIgnoredParameter":0,
  "CreationDate":"date-time",
  "Type":"Ok"
}
```

### Example

In this example, you will need the ID of the device and the ID of the command that has been issued to a device. The device ID is returned when issuing a GET call on `/me/devices`, and the command ID is returned when doing a POST call on `/me/devices/{id}/command`.

#### Request

The following example shows the request.

<!-- {
  "blockType": "ignored",
  "name": "get_command_payload"
} -->
```http
GET me/devices/{id}/commands/{id}
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "ignored",
  "truncated": false,
  "@odata.type": "microsoft.graph.command",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK

{
  "@odata.context": "https://graph.microsoft.com/devices/$metadata#microsoft.graph.PayloadResponse",
  "MsIgnoredParameter":0,
  "CreationDate":"04/27/2017",
  "Type":"Ok"
}
```


