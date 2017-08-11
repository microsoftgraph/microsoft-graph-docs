# Send device command

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This API enables Project Rome capabilities to command a device associated with a Microsoft account. After doing a GET call on `me/devices`, pass in the ID of the device to issue a command to your device. Two types of commands are supported: LaunchURI and AppServices. If you're using LaunchURI, specify the *type* and *payload* parameters. For an AppService call, specify the 
*type*, *payload*, *packageFamilyName*, and *appServiceName* parameters.

## Prerequisites

The following scope is required to execute this API: *Device.Command*

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
## Command properties 

|**Name**|**Type**|**Description**|
|:----|:------|:------|
|payload | microsoft.graph.json| Payload to send to an app service or to launch a URI on a device. |
|responsePayload | microsoft.graph.json| Payload returned from target device. |
|postBackURI | String | Post back URI to send subsequent notifications of updates. |
|packageFamilyName | String | Windows Package Family Name of application. |
|appServiceName | String | Name of app service defined by the target application. Required if launching an app service. |
|type| String | LaunchURI or AppService. |
|id| String | The ID of a command that has been sent to the device. |
|actionStatus | String | The [status](get_device_command_status.md) of a command. |
|error| String| Any errors associated with the request from the target application. |

## Launch URI example

Here is an example of a LaunchURI request; it will launch a URI or an application on the target device. To launch a URI or an app, issue a POST using the ID of the device (obtained from doing a GET call on `me/devices`). Set the *Type* parameters to *LaunchURI* and provide a URI value such as http://bing.com.

##### Request

<!-- {
  "blockType": "request",
  "name": "post_command"
}-->

```http

POST me/devices/{id}/commands
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8

{ "Type" : "LaunchUri", "Payload" : {"uri":"http://bing.com"}}

```

##### Response 

Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.commandobject",
  "isCollection": true
} -->

```http
HTTP/1.1 201 OK

{
  "id": "0158355AD4D680CC4E2994CC009EFFD7337D1B...",
  "Status": "requesting",
  "Type": null,
  "AppServiceName": null,
  "PackageFamilyName": null,
  "Error": null,
  "PermissionTicket": null,
  "PostBackUri": null,
  "Payload": {
    "uri": "http://bing.com"
  }
}

```


## App service example

Here is an example of querying an app service on a device. To use an app service you must do a POST call using the id of the device (obtained from doing a GET call on `me/devices`). To use the following example, you must install the [Rome app](https://aka.ms/romanapp) on your target device.

Several additional properties must be set in the call. *Type* must be set to *AppService*, *AppServiceName* must be set to the name of the app service defined in the application, *PackageFamilyName* must be set to the package family name defined in the app manifest, and *Payload* holds the keys and values for the service you are calling within the target application.

##### Request

<!-- {
  "blockType": "request",
  "name": "post_command"
}-->

```http

POST me/devices/{id}/commands
Authorization: Bearer Eaeou....
Content-Type: application/json; charset=utf-8

{ "Type" : "AppService", "AppServiceName" : "com.microsoft.test.cdppingpongservice", "PackageFamilyName" : "5085ShawnHenry.RomanTestApp_jsjw7knzsgcce", "Payload" : {"Type":"Toast","Title":"Hello","Subtitle":"World!"} }

```

##### Response

Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.commandobject",
  "isCollection": true
} -->


```http

HTTP/1.1 201 OK

{
  "id": "0158355AD4D680CC4E2994CC009EFFD7EADA8307E96FF1C8D19B..",
  "Status": "requesting",
  "Type": null,
  "AppServiceName": "com.microsoft.test.cdppingpongservice",
  "PackageFamilyName": "5085ShawnHenry.RomanTestApp_jsjw7knzsgcce",
  "Error": null,
  "PermissionTicket": null,
  "PostBackUri": null,
  "Payload": {
    "Type": "Toast",
    "Title": "Hello",
    "Subtitle": "World!"
  }
}

```
