# Update user
Update the properties of a [user](../resources/intune_mam_user.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
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
In the request body, supply a JSON representation of a [user](../resources/intune_mam_user.md) object.
The following table shows the properties that are required when you create a [user](../resources/intune_mam_user.md).

|Property|Type|Description|
|---|---|---|
|id|String|The user identifier.|



### Response
If successful, this method returns a `200 OK` response code and an updated [user](../resources/intune_mam_user.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json
Content-length: 2

{}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 95

{
  "@odata.type": "#microsoft.graph.user",
  "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3"
}
```



