# managedAppConfiguration resource type

Configuration used to deliver a set of custom settings as-is to apps for users to whom the configuration is scoped

Inherits from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAppConfigurations](../api/intune_mam_managedAppConfiguration_list.md)|[managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md) collection|List properties and relationships of the [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md) objects.|
|[Get managedAppConfiguration](../api/intune_mam_managedAppConfiguration_get.md)|[managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md)|Read properties and relationships of the [managedAppConfiguration](../resources/intune_mam_managedAppConfiguration.md) object.|
|[List mobileAppIdentifierDeployments](../api/intune_mam_managedAppConfiguration_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_managedAppConfiguration_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|
|customSettings|[keyValuePair](../resources/intune_mam_keyValuePair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service|

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
  "@odata.type": "microsoft.graph.managedAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppConfiguration",
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


