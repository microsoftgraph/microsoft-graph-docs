# Update deviceManagement

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceManagement](../resources/intune_devicefe_devicemanagement.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceManagement](../resources/intune_devicefe_devicemanagement.md) object.
The following table shows the properties that are required when you create a [deviceManagement](../resources/intune_devicefe_devicemanagement.md).

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|subscriptionState|String|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune_devicefe_devicemanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-type: application/json
Content-length: 37

{
  "subscriptionState": "active"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 141

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "0b283420-3420-0b28-2034-280b2034280b",
  "subscriptionState": "active"
}
```



