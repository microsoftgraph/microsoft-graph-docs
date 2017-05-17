# Update managedDevice

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [managedDevice](../resources/intune_endpointprotection_manageddevice.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

**TODO: Determine scopes **
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedDevices/{managedDevicesId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [managedDevice](../resources/intune_endpointprotection_manageddevice.md) object.
The following table shows the properties that are required when you create a [managedDevice](../resources/intune_endpointprotection_manageddevice.md).

|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|



## Response
If successful, this method returns a `200 OK` response code and an updated [managedDevice](../resources/intune_endpointprotection_manageddevice.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedDevices/{managedDevicesId}
Content-type: application/json
Content-length: 2

{}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 104

{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "705c034c-034c-705c-4c03-5c704c035c70"
}
```



