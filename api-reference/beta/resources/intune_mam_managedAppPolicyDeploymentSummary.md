# managedAppPolicyDeploymentSummary resource type

The ManagedAppEntity is the base entity type for all other entity types under app management workflow.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get managedAppPolicyDeploymentSummary](../api/intune_mam_managedAppPolicyDeploymentSummary_get.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Read properties and relationships of the [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) object.|
|[Update managedAppPolicyDeploymentSummary](../api/intune_mam_managedAppPolicyDeploymentSummary_update.md)|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md)|Update the properties of a [managedAppPolicyDeploymentSummary](../resources/intune_mam_managedAppPolicyDeploymentSummary.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Not yet documented|
|configurationDeployedUserCount|Int32|Not yet documented|
|lastRefreshTime|DateTimeOffset|Not yet documented|
|configurationDeploymentSummaryPerApp|[managedAppPolicyDeploymentSummaryPerApp](../resources/intune_mam_managedAppPolicyDeploymentSummaryPerApp.md) collection|Not yet documented|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppPolicyDeploymentSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppPolicyDeploymentSummary",
  "displayName": "String",
  "configurationDeployedUserCount": 1024,
  "lastRefreshTime": "String (timestamp)",
  "configurationDeploymentSummaryPerApp": [
    {
      "@odata.type": "microsoft.graph.managedAppPolicyDeploymentSummaryPerApp",
      "mobileAppIdentifier": {
        "@odata.type": "microsoft.graph.mobileAppIdentifier"
      },
      "configurationAppliedUserCount": 1024
    }
  ],
  "id": "String (identifier)",
  "version": "String"
}
```



