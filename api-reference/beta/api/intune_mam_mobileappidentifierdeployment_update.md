# Update mobileAppIdentifierDeployment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/managedAppPolicies/{managedAppPolicyId}/mobileAppIdentifierDeployments/{mobileAppIdentifierDeploymentId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.
The following table shows the properties that are required when you create a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md).

|Property|Type|Description|
|---|---|---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The identifier for an app with it's OS Type.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/managedAppPolicies/{managedAppPolicyId}/mobileAppIdentifierDeployments/{mobileAppIdentifierDeploymentId}
Content-type: application/json
Content-length: 126

{
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
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



