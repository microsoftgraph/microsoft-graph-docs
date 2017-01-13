# Get mdmAppConfigGroupAssignment> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.
Read properties and relationships of the [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /appConfigurationGroupAssignments/{id}
GET /iosMobileAppConfigurations/{id}/groupAssignments/{id}
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/appConfigurationGroupAssignments/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 240

{
  "value": {
    "@odata.type": "#microsoft.intune_apps_graph.mdmAppConfigGroupAssignment",
    "appConfiguration": "App Configuration value",
    "targetGroupId": "Target Group Id value",
    "id": "347b9b52-9b52-347b-529b-7b34529b7b34"
  }
}
```



