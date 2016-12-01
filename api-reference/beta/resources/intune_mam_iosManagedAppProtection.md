# iosManagedAppProtection resource type

Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on an iOS device

Inherits from [targetedManagedAppProtection](../resources/intune_mam_targetedManagedAppProtection.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosManagedAppProtections](../api/intune_mam_iosManagedAppProtection_list.md)|[iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md) collection|List properties and relationships of the [iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md) objects.|
|[Get iosManagedAppProtection](../api/intune_mam_iosManagedAppProtection_get.md)|[iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md)|Read properties and relationships of the [iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md) object.|
|[Create iosManagedAppProtection](../api/intune_mam_iosManagedAppProtection_create.md)|[iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md)|Create a new [iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md) object.|
|[Delete iosManagedAppProtection](../api/intune_mam_iosManagedAppProtection_delete.md)|None|Deletes a [iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md).|
|[Update iosManagedAppProtection](../api/intune_mam_iosManagedAppProtection_update.md)|[iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md)|Update the properties of a [iosManagedAppProtection](../resources/intune_mam_iosManagedAppProtection.md) object.|
|[List mobileAppIdentifierDeployments](../api/intune_mam_iosManagedAppProtection_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_iosManagedAppProtection_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|
|[List directoryObjects](../api/intune_mam_iosManagedAppProtection_list_directoryObject.md)|[directoryObject](../resources/intune_mam_directoryObject.md) collection|Get the directoryObjects from the targetedSecurityGroups navigation property.|

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
|targetedSecurityGroupsCount|Int32|The number of groups to which the configuration is deployed. Read only property. Inherited from [targetedManagedAppProtection](../resources/intune_mam_targetedManagedAppProtection.md)|
|targetedSecurityGroupIds|String collection|List of security group IDs to which the configuration is deployed Inherited from [targetedManagedAppProtection](../resources/intune_mam_targetedManagedAppProtection.md)|
|appDataEncryptionType|String|Type of encryption which should be used for data in a managed app. Possible values are: `useDeviceSettings`, `afterDeviceRestart`, `whenDeviceLockedExceptOpenFiles`, `whenDeviceLocked`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List of apps to which the policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Navigation property to deployment summary of the configuration. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|targetedSecurityGroups|[directoryObject](../resources/intune_mam_directoryObject.md) collection|Navigation property to list of security groups to which the configuration is deployed Inherited from [targetedManagedAppProtection](../resources/intune_mam_targetedManagedAppProtection.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosManagedAppProtection"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosManagedAppProtection",
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
  "targetedSecurityGroupsCount": 1024,
  "targetedSecurityGroupIds": [
    "String"
  ],
  "appDataEncryptionType": "String"
}
```


