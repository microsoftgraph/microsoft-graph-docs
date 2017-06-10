# Create managedAppPolicy

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [managedAppPolicy](../resources/intune_mam_managedapppolicy.md) by posting to the managedAppPolicies collection.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppPolicies/
POST /deviceAppManagement/managedAppPolicies/
POST /deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/appliedPolicies/
POST /deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/intendedPolicies/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a managedAppPolicy object.
The following table shows the properties that are required when you create a managedAppPolicy.

|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name.|
|description|String|The policy's description.|
|createdDateTime|DateTimeOffset|The date and time the policy was created.|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified.|
|lastModifiedTime|DateTimeOffset|DEPRECATED: Last time the policy was modified.|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|



## Response
If successful, this method returns a `201 Created` response code and a [managedAppPolicy](../resources/intune_mam_managedapppolicy.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppPolicies/
Content-type: application/json
Content-length: 318

{
  "@odata.type": "#microsoft.graph.managedAppPolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 0,
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 426

{
  "@odata.type": "#microsoft.graph.managedAppPolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 0,
  "id": "3c7b9675-9675-3c7b-7596-7b3c75967b3c",
  "version": "Version value"
}
```



