﻿# Get cartToClassAssociation

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Read properties and relationships of the [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/cartToClassAssociations/{cartToClassAssociationId}
```

## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/cartToClassAssociations/{cartToClassAssociationId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 488

{
  "value": {
    "@odata.type": "#microsoft.graph.cartToClassAssociation",
    "id": "9bdc58dd-58dd-9bdc-dd58-dc9bdd58dc9b",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "version": 7,
    "displayName": "Display Name value",
    "description": "Description value",
    "deviceCartIds": [
      "Device Cart Ids value"
    ],
    "classroomIds": [
      "Classroom Ids value"
    ]
  }
}
```



