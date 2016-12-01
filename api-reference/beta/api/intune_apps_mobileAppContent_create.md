# Create mobileAppContent
Create a new [mobileAppContent](../resources/intune_apps_mobileAppContent.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST ** Entity URI for microsoft.management.services.api.mobileAppContent not found
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a mobileAppContent object.
The following table shows the properties that are required when you create a mobileAppContent.

|Property|Type|Description|
|---|---|---|
|id|String|The app content version.|



### Response
If successful, this method returns a `201 Created` response code and a [mobileAppContent](../resources/intune_apps_mobileAppContent.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta** Entity URI for microsoft.management.services.api.mobileAppContent not found
Content-type: application/json
Content-length: 58

{
  "@odata.type": "#microsoft.graph.mobileAppContent"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 107

{
  "@odata.type": "#microsoft.graph.mobileAppContent",
  "id": "fe0bb9a9-b9a9-fe0b-a9b9-0bfea9b90bfe"
}
```



