# managedAppPolicy resource type

The ManagedAppPolicy resource represents a base type for platform specific policies.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAppPolicies](../api/intune_mam_managedAppPolicy_list.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|List properties and relationships of the [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) objects.|
|[Get managedAppPolicy](../api/intune_mam_managedAppPolicy_get.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md)|Read properties and relationships of the [managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) object.|
|[updateMobileAppIdentifierDeployments action](../api/intune_mam_managedAppPolicy_updateMobileAppIdentifierDeployments.md)|None|Not yet documented|
|[List mobileAppIdentifierDeployments](../api/intune_mam_managedAppPolicy_list_mobileAppIdentifierDeployment.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|Get the mobileAppIdentifierDeployments from the mobileAppIdentifierDeployments navigation property.|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_managedAppPolicy_get_managedAppPolicyDeploymentSummary.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Get the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) from the deploymentSummary navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Policy display name.|
|description|String|The policy's description.|
|lastModifiedTime|DateTimeOffset|Last time the policy was modified.|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileAppIdentifierDeployments|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List of apps to which the policy is deployed.|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Navigation property to deployment summary of the configuration.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppPolicy"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppPolicy",
  "displayName": "String",
  "description": "String",
  "lastModifiedTime": "String (timestamp)",
  "deployedAppCount": 1024,
  "id": "String (identifier)",
  "version": "String"
}
```



