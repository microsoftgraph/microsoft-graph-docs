# Update mobileAppContent
Update the properties of a [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/<id>/contentVersions/<id>
PATCH /deviceAppManagement/mobileApps/<id>/microsoft.graph.mobileLobApp/contentVersions/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object.
The following table shows the properties that are required when you create a [mobileAppContent](../resources/intune_apps_mobileappcontent.md).

|Property|Type|Description|
|---|---|---|
|id|String|The app content version.|



### Response
If successful, this method returns a `200 OK` response code and an updated [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>/contentVersions/<id>
Content-type: application/json
Content-length: 2

{}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 107

{
  "@odata.type": "#microsoft.graph.mobileAppContent",
  "id": "fe0bb9a9-b9a9-fe0b-a9b9-0bfea9b90bfe"
}
```



