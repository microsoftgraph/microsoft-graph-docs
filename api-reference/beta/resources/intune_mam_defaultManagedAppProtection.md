# defaultManagedAppProtection resource type

Policy used to configure detailed management settings for a specified set of apps for all users not targeted by a TargetedManagedAppProtection Policy

Inherits from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List defaultManagedAppProtections](../api/intune_mam_defaultManagedAppProtection_list.md)|[defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md) collection|List properties and relationships of the [defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md) objects.|
|[Get defaultManagedAppProtection](../api/intune_mam_defaultManagedAppProtection_get.md)|[defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md)|Read properties and relationships of the [defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md) object.|
|[Create defaultManagedAppProtection](../api/intune_mam_defaultManagedAppProtection_create.md)|[defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md)|Create a new [defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md) object.|
|[Delete defaultManagedAppProtection](../api/intune_mam_defaultManagedAppProtection_delete.md)|None|Deletes a [defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md).|
|[Update defaultManagedAppProtection](../api/intune_mam_defaultManagedAppProtection_update.md)|[defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md)|Update the properties of a [defaultManagedAppProtection](../resources/intune_mam_defaultManagedAppProtection.md) object.|
|[List mobileAppIdentifierDeployments](../api/intune_mam_defaultManagedAppProtection_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_defaultManagedAppProtection_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|periodOfflineBeforeAccessCheck|Duration|The period after which access is checked when the device is not connected to the internet. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|periodOnlineBeforeAccessCheck|Duration|The period after which access is checked when the device is connected to the internet. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|allowedInboundDataTransferSources|String|Sources from which data is allowed to be transferred. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md) Possible values are: `allApps`, `managedApps`, `none`.|
|allowedOutboundDataTransferDestinations|String|Destinations to which data is allowed to be transferred. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md) Possible values are: `allApps`, `managedApps`, `none`.|
|organizationalCredentialsRequired|Boolean|Indicates whether organizational credentials are required for app use. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|allowedOutboundClipboardSharingLevel|String|The level to which the clipboard may be shared between apps on the managed device. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md) Possible values are: `allApps`, `managedAppsWithPasteIn`, `managedApps`, `blocked`.|
|dataBackupBlocked|Boolean|Indicates whether the backup of a managed app's data is blocked. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|deviceComplianceRequired|Boolean|Indicates whether device compliance is required. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|managedBrowserToOpenLinksRequired|Boolean|Indicates whether internet links should be opened in the managed browser app. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|saveAsBlocked|Boolean|Indicates whether users may use the "Save As" menu item to save a copy of protected files. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|pinRequired|Boolean|Indicates whether an app-level pin is required. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|maximumPinRetries|Int32|Maximum number of incorrect pin retry attempts before the managed app is wiped. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|simplePinBlocked|Boolean|Indicates whether simplePin is blocked. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|minimumPinLength|Int32|Minimum pin length required for an app-level pin if PinRequired is set to True Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|pinCharacterSet|String|Character set which may be used for an app-level pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md) Possible values are: `any`, `numeric`, `alphanumeric`, `alphanumericAndSymbol`.|
|allowedDataStorageLocations|String collection|Data storage locations where a user may store managed data. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|contactSyncBlocked|Boolean|Indicates whether contacts can be synced to the user's device. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|printBlocked|Boolean|Indicates whether printing is allowed from managed apps. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|fingerprintBlocked|Boolean|Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune_mam_managedAppProtection.md)|
|appDataEncryptionType|String|Type of encryption which should be used for data in a managed app. (iOS Only) Possible values are: `useDeviceSettings`, `afterDeviceRestart`, `whenDeviceLockedExceptOpenFiles`, `whenDeviceLocked`.|
|screenCaptureBlocked|Boolean|Indicates whether screen capture is blocked.|
|encryptAppData|Boolean|Indicates whether managed-app data should be encrypted. (Android only)|
|customSettings|[keyValuePair](../resources/intune_mam_keyValuePair.md) collection|A set of string key and string value pairs to be sent to the affected users, unalterned by this service|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List of apps to which the policy is deployed. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md)|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Navigation property to deployment summary of the configuration. Inherited from [managedAppPolicy](intune_mam_managedAppPolicy.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultManagedAppProtection"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.defaultManagedAppProtection",
  "displayName": "String",
  "description": "String",
  "lastModifiedTime": "String (timestamp)",
  "deployedAppCount": 1024,
  "id": "String (identifier)",
  "version": "String",
  "periodOfflineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "periodOnlineBeforeAccessCheck": "<Unknown Primitive Type Edm.Duration>",
  "allowedInboundDataTransferSources": "String",
  "allowedOutboundDataTransferDestinations": "String",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "String",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "<Unknown Primitive Type Edm.Duration>",
  "pinRequired": true,
  "maximumPinRetries": 1024,
  "simplePinBlocked": true,
  "minimumPinLength": 1024,
  "pinCharacterSet": "String",
  "allowedDataStorageLocations": [
    "String"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "appDataEncryptionType": "String",
  "screenCaptureBlocked": true,
  "encryptAppData": true,
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ]
}
```


