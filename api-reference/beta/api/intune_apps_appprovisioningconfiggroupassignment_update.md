# Update appProvisioningConfigGroupAssignment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /appProvisioningConfigurationGroupAssignments/{appProvisioningConfigurationGroupAssignmentsId}
PATCH /deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/groupAssignments/{appProvisioningConfigGroupAssignmentId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object.
The following table shows the properties that are required when you create a [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md).

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mdm app configuration to.|
|id|String|Key of the entity.|

## Response

If successful, this method returns a `200 OK` response code and an updated [appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/appProvisioningConfigurationGroupAssignments/{appProvisioningConfigurationGroupAssignmentsId}
Content-type: application/json
Content-length: 48

{
  "targetGroupId": "Target Group Id value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 172

{
  "@odata.type": "#microsoft.graph.appProvisioningConfigGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "9f68a8a7-a8a7-9f68-a7a8-689fa7a8689f"
}
```



