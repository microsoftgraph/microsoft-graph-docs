# targetedManagedAppConfiguration resource type

Configuration used to deliver a set of custom settings as-is to all users in the targeted security group

Inherits from [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List targetedManagedAppConfigurations](../api/intune_mam_targetedManagedAppConfiguration_list.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md) collection|List properties and relationships of the [targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md) objects.|
|[Get targetedManagedAppConfiguration](../api/intune_mam_targetedManagedAppConfiguration_get.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md)|Read properties and relationships of the [targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md) object.|
|[Create targetedManagedAppConfiguration](../api/intune_mam_targetedManagedAppConfiguration_create.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md)|Create a new [targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md) object.|
|[Delete targetedManagedAppConfiguration](../api/intune_mam_targetedManagedAppConfiguration_delete.md)|None|Deletes a [targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md).|
|[Update targetedManagedAppConfiguration](../api/intune_mam_targetedManagedAppConfiguration_update.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md)|Update the properties of a [targetedManagedAppConfiguration](../resources/intune_mam_targetedManagedAppConfiguration.md) object.|
|[List mobileAppIdentifierDeployments](../api/intune_mam_targetedManagedAppConfiguration_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_targetedManagedAppConfiguration_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|
|[List directoryObjects](../api/intune_mam_targetedManagedAppConfiguration_list_directoryObject.md)|[directoryObject](../resources/intune_mam_directoryObject.md) collection|Get the directoryObjects from the targetedSecurityGroups navigation property.|

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
|numberOfTargetedSecurityGroups|Int32|Number of groups to which the configuration is deployed.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List of apps to which the policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Navigation property to deployment summary of the configuration. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|targetedSecurityGroups|[directoryObject](../resources/intune_mam_directoryObject.md) collection|Navigation property to list of security groups to which the configuration is deployed.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppConfiguration",
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
  ],
  "numberOfTargetedSecurityGroups": 1024
}
```


