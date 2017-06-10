# Create appProvisioningConfigGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /appProvisioningConfigurationGroupAssignments/
POST /deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a appProvisioningConfigGroupAssignment object.
The following table shows the properties that are required when you create a appProvisioningConfigGroupAssignment.

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|



## Response
If successful, this method returns a `201 Created` response code and a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/appProvisioningConfigurationGroupAssignments/
Content-type: application/json
Content-length: 123

{
  "@odata.type": "#microsoft.graph.appProvisioningConfigGroupAssignment",
  "targetGroupId": "Target Group Id value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 172

{
  "@odata.type": "#microsoft.graph.appProvisioningConfigGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "9f68a8a7-a8a7-9f68-a7a8-689fa7a8689f"
}
```



