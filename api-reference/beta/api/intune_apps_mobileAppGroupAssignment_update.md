# Update mobileAppGroupAssignment
Update the properties of a [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/<id>/groupAssignments/<id>
PATCH /mobileAppGroupAssignments/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) object.
The following table shows the properties that are required when you create a [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md).

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>/groupAssignments/<id>
Content-type: application/json
Content-length: 85

{
  "targetGroupId": "Target Group Id value",
  "installIntent": "notApplicable"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 197

{
  "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "ce4d1a28-1a28-ce4d-281a-4dce281a4dce",
  "installIntent": "notApplicable"
}
```



