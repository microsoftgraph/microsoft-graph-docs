# Update androidManagedAppProtection
Update the properties of a [androidManagedAppProtection](../resources/intune_mam_androidManagedAppProtection.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedAppPolicies/<id>
PATCH /managedAppRegistrations/<id>/appliedPolicies/<id>
PATCH /managedAppRegistrations/<id>/intendedPolicies/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [androidManagedAppProtection](../resources/intune_mam_androidManagedAppProtection.md) object.
The following table shows the properties that are required when you create a [androidManagedAppProtection](../resources/intune_mam_androidManagedAppProtection.md).

|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|description|String|The policy's description. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|id|String|Key of the entity. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|version|String|Version of the entity. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md).|
|periodOfflineBeforeAccessCheck|Duration|The period after which access is checked when the device is not connected to the internet. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|periodOnlineBeforeAccessCheck|Duration|The period after which access is checked when the device is connected to the internet. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|allowedInboundDataTransferSources|String|Sources from which data is allowed to be transferred. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md). Possible values are: `allApps`, `managedApps`, `none`.|
|allowedOutboundDataTransferDestinations|String|Destinations to which data is allowed to be transferred. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md). Possible values are: `allApps`, `managedApps`, `none`.|
|organizationalCredentialsRequired|Boolean|Indicates whether organizational credentials are required for app use. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|allowedOutboundClipboardSharingLevel|String|The level to which the clipboard may be shared between apps on the managed device. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md). Possible values are: `allApps`, `managedAppsWithPasteIn`, `managedApps`, `blocked`.|
|dataBackupBlocked|Boolean|Indicates whether the backup of a managed app's data is blocked. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|deviceComplianceRequired|Boolean|Indicates whether device compliance is required. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|managedBrowserToOpenLinksRequired|Boolean|Indicates whether internet links should be opened in the managed browser app. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|saveAsBlocked|Boolean|Indicates whether users may use the "Save As" menu item to save a copy of protected files. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|pinRequired|Boolean|Indicates whether an app-level pin is required. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|maximumPinRetries|Int32|Maximum number of incorrect pin retry attempts before the managed app is wiped. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|simplePinBlocked|Boolean|Indicates whether simplePin is blocked. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|minimumPinLength|Int32|Minimum pin length required for an app-level pin if PinRequired is set to True Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|pinCharacterSet|String|Character set which may be used for an app-level pin if PinRequired is set to True. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md). Possible values are: `any`, `numeric`, `alphanumeric`, `alphanumericAndSymbol`.|
|allowedDataStorageLocations|String collection|Data storage locations where a user may store managed data. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|contactSyncBlocked|Boolean|Indicates whether contacts can be synced to the user's device. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|printBlocked|Boolean|Indicates whether printing is allowed from managed apps. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|fingerprintBlocked|Boolean|Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True. Inherited from [managedAppProtection](intune_mam_managedAppProtection.md).|
|targetedSecurityGroupsCount|Int32|The number of groups to which the configuration is deployed. Read only property. Inherited from [targetedManagedAppProtection](intune_mam_targetedManagedAppProtection.md).|
|targetedSecurityGroupIds|String collection|List of security group IDs to which the configuration is deployed Inherited from [targetedManagedAppProtection](intune_mam_targetedManagedAppProtection.md).|
|screenCaptureBlocked|Boolean|Indicates whether a managed user can take screen captures of managed apps|
|encryptAppData|Boolean|Indicates whether application data for managed apps should be encrypted|



### Response
If successful, this method returns a `200 OK` response code and an updated [androidManagedAppProtection](../resources/intune_mam_androidManagedAppProtection.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedAppPolicies/<id>
Content-type: application/json
Content-length: 1272

{
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 16,
  "version": "Version value",
  "periodOfflineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "periodOnlineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "allowedInboundDataTransferSources": "managedApps",
  "allowedOutboundDataTransferDestinations": "managedApps",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "<Unknown Primitive Type Edm.Duration>",
  "pinRequired": true,
  "maximumPinRetries": 17,
  "simplePinBlocked": true,
  "minimumPinLength": 16,
  "pinCharacterSet": "numeric",
  "allowedDataStorageLocations": [
    "sharePoint"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "targetedSecurityGroupsCount": 27,
  "targetedSecurityGroupIds": [
    "Targeted Security Group Ids value"
  ],
  "screenCaptureBlocked": true,
  "encryptAppData": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1387

{
  "@odata.type": "#microsoft.graph.androidManagedAppProtection",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedTime": "2017-01-01T00:03:18.5958204-08:00",
  "deployedAppCount": 16,
  "id": "cf517ced-7ced-cf51-ed7c-51cfed7c51cf",
  "version": "Version value",
  "periodOfflineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "periodOnlineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "allowedInboundDataTransferSources": "managedApps",
  "allowedOutboundDataTransferDestinations": "managedApps",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "<Unknown Primitive Type Edm.Duration>",
  "pinRequired": true,
  "maximumPinRetries": 17,
  "simplePinBlocked": true,
  "minimumPinLength": 16,
  "pinCharacterSet": "numeric",
  "allowedDataStorageLocations": [
    "sharePoint"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "targetedSecurityGroupsCount": 27,
  "targetedSecurityGroupIds": [
    "Targeted Security Group Ids value"
  ],
  "screenCaptureBlocked": true,
  "encryptAppData": true
}
```



