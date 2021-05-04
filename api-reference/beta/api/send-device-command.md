---
title: "Send device command"
description: "This API enables Project Rome capabilities to command a device associated with a Microsoft account. After doing a GET call on `me/devices`, pass in the ID of the device to issue a command to your device. Two types of commands are supported: LaunchURI and AppServices. If you're using LaunchURI, specify the *type* and *payload* parameters. For an AppService call, specify the "
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
author: "ailae"
---

# Send device command

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API enables Project Rome capabilities to command a device associated with a Microsoft account. After doing a GET call on `me/devices`, pass in the ID of the device to issue a command to your device. Two types of commands are supported: LaunchURI and AppServices. If you're using LaunchURI, specify the *type* and *payload* parameters. For an AppService call, specify the
*type*, *payload*, *packageFamilyName*, and *appServiceName* parameters.

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
POST me/devices/{id}/commands
```

## Request headers


| Header |Value
|:----|:------|
|Authorization| Bearer {token}. Required. |
|Accept | application/json |

## Request body

In the request body, supply a JSON representation of the command properties.

```json
{
  "type": "appService",
  "payload": "payload-JSON",
  "packageFamilyName": "packageFamilyName",
  "appServiceName": "appServiceName",
  "postbackURI": "postbackURI"
}
```

## Response

```http
HTTP/1.1 201 OK
```

```json
{
  "id": "0",
  "status": "requesting",
  "type": "appService",
  "appServiceName": "appServiceName",
  "packageFamilyName": "packageFamilyName",
  "error": "null",
  "responsePayload": "null",
  "payload": "payload-JSON",
  "permissionTicket": "null",
  "postBackUri": "postbackURI"
}
```
### Command properties

|**Name**|**Type**|**Description**|
|:----|:------|:------|
|payload | microsoft.graph.json| Payload to send to an app service or to launch a URI on a device. |
|responsePayload | microsoft.graph.json| Payload returned from target device. |
|postBackURI | String | Post back URI to send subsequent notifications of updates. |
|packageFamilyName | String | Windows Package Family Name of application. |
|appServiceName | String | Name of app service defined by the target application. Required if launching an app service. |
|type| String | LaunchURI or AppService. |
|id| String | The ID of a command that has been sent to the device. |
|actionStatus | String | The [status](get-device-command-status.md) of a command. |
|error| String| Any errors associated with the request from the target application. |

## Examples

### Example 1: Launch URI

The following is an example of a LaunchURI request; it will launch a URI or an application on the target device. To launch a URI or an app, issue a POST using the ID of the device (obtained from doing a GET call on `me/devices`). Set the *Type* parameters to *LaunchURI* and provide a URI value such as https://bing.com.

#### Request

<!-- {
  "blockType": "ignored",
  "name": "post_command"
} -->

```http

POST me/devices/{id}/commands
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8

{ "type" : "LaunchUri", "payload" : {"uri":"https://bing.com"}}

```
#### Response

<!-- {
  "blockType": "ignored",
  "truncated": false,
  "@odata.type": "microsoft.graph.command",
  "isCollection": true
} -->

```http
HTTP/1.1 201 OK

{
  "id": "0158355AD4D680CC4E2994CC009EFFD7337D1B...",
  "status": "requesting",
  "type": null,
  "appServiceName": null,
  "packageFamilyName": null,
  "error": null,
  "permissionTicket": null,
  "postBackUri": null,
  "payload": {
    "uri": "https://bing.com"
  }
}

```


### Example 2: App service

The following example shows how to query an app service on a device. To use an app service, you must do a POST call using the ID of the device (obtained from doing a GET call on `me/devices`). To use the following example, you must install the [Rome app](https://aka.ms/romanapp) on your target device.

Several additional properties must be set in the call. *Type* must be set to *AppService*, *AppServiceName* must be set to the name of the app service defined in the application, *PackageFamilyName* must be set to the package family name defined in the app manifest, and *Payload* holds the keys and values for the service you are calling within the target application.

#### Request

<!-- {
  "blockType": "ignored",
  "name": "post_command_2"
} -->

```http

POST me/devices/{id}/commands
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8

{
  "type" : "AppService",
  "appServiceName" : "com.microsoft.test.cdppingpongservice",
  "packageFamilyName" : "5085ShawnHenry.RomanTestApp_jsjw7knzsgcce",
  "payload" : {
    "Type":"Toast","Title":"Hello","Subtitle":"World!"}
  }
```

#### Response

<!-- {
  "blockType": "ignored",
  "truncated": false,
  "@odata.type": "microsoft.graph.command",
  "isCollection": true
} -->

```http
HTTP/1.1 201 OK

{
  "id": "0158355AD4D680CC4E2994CC009EFFD7EADA8307E96FF1C8D19B..",
  "status": "requesting",
  "type": null,
  "appServiceName": "com.microsoft.randomnumbergenerator",
  "packageFamilyName": "Microsoft.SDKSamples.AppServicesProvider.CS_8wekyb3d8bbwe",
  "error": null,
  "permissionTicket": null,
  "postBackUri": null,
  "payload": {
    "Type": "Toast",
    "Title": "Hello",
    "Subtitle": "World!"
  }
}
```


