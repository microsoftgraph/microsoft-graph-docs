# Create mobileAppIdentifierDeployment
Create a new [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppPolicies/{id}/mobileAppIdentifierDeployments/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a mobileAppIdentifierDeployment object.
The following table shows the properties that are required when you create a mobileAppIdentifierDeployment.

|Property|Type|Description|
|---|---|---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The identifier for an app with it's OS Type.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|



### Response
If successful, this method returns a `201 Created` response code and a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppPolicies/{id}/mobileAppIdentifierDeployments/{id}
Content-type: application/json
Content-length: 194

{
  "@odata.type": "#microsoft.graph.mobileAppIdentifierDeployment",
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "version": "Version value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 243

{
  "@odata.type": "#microsoft.graph.mobileAppIdentifierDeployment",
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "id": "5a77f582-f582-5a77-82f5-775a82f5775a",
  "version": "Version value"
}
```



