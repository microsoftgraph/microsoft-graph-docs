# Update defaultManagedAppConfiguration

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedAppPolicies/{managedAppPoliciesId}
PATCH /managedAppRegistrations/{managedAppRegistrationsId}/appliedPolicies/{managedAppPolicyId}
PATCH /managedAppRegistrations/{managedAppRegistrationsId}/intendedPolicies/{managedAppPolicyId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md) object.
The following table shows the properties that are required when you create a [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md).

|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|customSettings|[keyValuePair](../resources/intune_mam_keyvaluepair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md)|



## Response
If successful, this method returns a `200 OK` response code and an updated [defaultManagedAppConfiguration](../resources/intune_mam_defaultmanagedappconfiguration.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedAppPolicies/{managedAppPoliciesId}
Content-type: application/json
Content-length: 355

{
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 0,
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

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 473

{
  "@odata.type": "#microsoft.graph.defaultManagedAppConfiguration",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 0,
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



