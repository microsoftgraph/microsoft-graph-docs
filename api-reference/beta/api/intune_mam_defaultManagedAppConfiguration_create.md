# Create defaultManagedAppConfiguration
Create a new [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppPolicies/<id>
POST /managedAppRegistrations/<id>/appliedPolicies/<id>
POST /managedAppRegistrations/<id>/intendedPolicies/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a defaultManagedAppConfiguration object.
The following table shows the properties that are required when you create a defaultManagedAppConfiguration.

|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|customSettings|[keyValuePair](../resources/intune_mam_keyValuePair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md)|



### Response
If successful, this method returns a `201 Created` response code and a [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppPolicies/<id>
Content-type: application/json
Content-length: 425

{
  "@odata.type": "#microsoft.graph.defaultManagedAppConfiguration",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 16,
  "version": "Version value",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 474

{
  "@odata.type": "#microsoft.graph.defaultManagedAppConfiguration",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 16,
  "id": "6f83d45c-d45c-6f83-5cd4-836f5cd4836f",
  "version": "Version value",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ]
}
```



