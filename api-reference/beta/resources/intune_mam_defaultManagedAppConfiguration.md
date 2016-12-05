# defaultManagedAppConfiguration resource type

Configuration used to deliver a set of custom settings as-is to all users not targeted by a TargetedManagedAppConfiguration type configuration

Inherits from [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List defaultManagedAppConfigurations](../api/intune_mam_defaultManagedAppConfiguration_list.md)|[defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) collection|List properties and relationships of the [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) objects.|
|[Get defaultManagedAppConfiguration](../api/intune_mam_defaultManagedAppConfiguration_get.md)|[defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md)|Read properties and relationships of the [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) object.|
|[Create defaultManagedAppConfiguration](../api/intune_mam_defaultManagedAppConfiguration_create.md)|[defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md)|Create a new [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) object.|
|[Delete defaultManagedAppConfiguration](../api/intune_mam_defaultManagedAppConfiguration_delete.md)|None|Deletes a [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md).|
|[Update defaultManagedAppConfiguration](../api/intune_mam_defaultManagedAppConfiguration_update.md)|[defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md)|Update the properties of a [defaultManagedAppConfiguration](../resources/intune_mam_defaultManagedAppConfiguration.md) object.|
|[List mobileAppIdentifierDeployments](../api/intune_mam_defaultManagedAppConfiguration_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_defaultManagedAppConfiguration_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|customSettings|[keyValuePair](../resources/intune_mam_keyValuePair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List of apps to which the policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Navigation property to deployment summary of the configuration. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultManagedAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.defaultManagedAppConfiguration",
  "displayName": "String",
  "description": "String",
  "lastModifiedTime": "String (timestamp)",
  "deployedAppCount": 1024,
  "id": "String (identifier)",
  "version": "String",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ]
}
```


