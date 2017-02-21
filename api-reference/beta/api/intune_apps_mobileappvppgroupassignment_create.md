# Create mobileAppVppGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /mobileAppGroupAssignments/
POST /deviceAppManagement/mobileApps/{mobileAppId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a mobileAppVppGroupAssignment object.
The following table shows the properties that are required when you create a mobileAppVppGroupAssignment.

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|
|id|String|Key of the entity. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|



## Response
If successful, this method returns a `201 Created` response code and a [mobileAppVppGroupAssignment](../resources/intune_apps_mobileappvppgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/mobileAppGroupAssignments/
Content-type: application/json
Content-length: 182

{
  "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "installIntent": "notApplicable",
  "useDeviceLicensing": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 231

{
  "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "89a8674a-674a-89a8-4a67-a8894a67a889",
  "installIntent": "notApplicable",
  "useDeviceLicensing": true
}
```



