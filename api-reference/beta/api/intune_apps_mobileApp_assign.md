# assign action
Not yet documented
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/mobileApps/<id>/assign
POST /deviceAppManagement/mobileApps/<id>/userStatuses/<id>/app//assign
POST /deviceAppManagement/mobileApps/<id>/deviceStatuses/<id>/app//assign
POST /deviceAppManagement/mobileApps/<id>/groupAssignments/<id>/app//assign
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|mobileAppGroupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|** TODO: Add parameter description **|



### Response
If successful, this action returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>/assign

Content-type: application/json
Content-length: 266

{
  "mobileAppGroupAssignments": [
    {
      "@odata.type": "#microsoft.graph.mobileAppGroupAssignment",
      "targetGroupId": "Target Group Id value",
      "id": "ce4d1a28-1a28-ce4d-281a-4dce281a4dce",
      "installIntent": "notApplicable"
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



