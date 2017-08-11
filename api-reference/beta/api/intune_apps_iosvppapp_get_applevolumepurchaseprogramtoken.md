# Get appleVolumePurchaseProgramToken

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md) from the vppToken navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/mobileApps/{mobileAppId}/microsoft.graph.iosVppApp/vppToken/
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

If successful, this method returns a `200 OK` response code and [appleVolumePurchaseProgramToken](../resources/intune_apps_applevolumepurchaseprogramtoken.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}/microsoft.graph.iosVppApp/vppToken/
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 145

{
  "value": {
    "@odata.type": "#microsoft.graph.appleVolumePurchaseProgramToken",
    "id": "7284da05-da05-7284-05da-847205da8472"
  }
}
```



