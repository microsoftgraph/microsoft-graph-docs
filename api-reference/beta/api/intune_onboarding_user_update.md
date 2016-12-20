# Update user
Update the properties of a [user](../resources/intune_onboarding_user.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementManagedDevices.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /users/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [user](../resources/intune_onboarding_user.md) object.
The following table shows the properties that are required when you create a [user](../resources/intune_onboarding_user.md).

|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the user.|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|



### Response
If successful, this method returns a `200 OK` response code and an updated [user](../resources/intune_onboarding_user.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json
Content-length: 35

{
  "deviceEnrollmentLimit": 21
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 127

{
  "@odata.type": "#microsoft.graph.user",
  "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3",
  "deviceEnrollmentLimit": 21
}
```



