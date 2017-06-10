# Update appleVolumePurchaseProgramToken

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/{mobileAppId}/microsoft.graph.iosVppApp/vppToken/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md) object.
The following table shows the properties that are required when you create a [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md).

|Property|Type|Description|
|---|---|---|
|id|String|This is automatically generated when the appleVolumePurchaseProgramToken is created. It is the Key of the entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}/microsoft.graph.iosVppApp/vppToken/
Content-type: application/json
Content-length: 2

{}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 122

{
  "@odata.type": "#microsoft.graph.appleVolumePurchaseProgramToken",
  "id": "7284da05-da05-7284-05da-847205da8472"
}
```



