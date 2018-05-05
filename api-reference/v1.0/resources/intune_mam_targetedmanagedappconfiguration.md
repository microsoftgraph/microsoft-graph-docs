# targetedManagedAppConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Configuration used to deliver a set of custom settings as-is to all users in the targeted security group

Inherits from [managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List targetedManagedAppConfigurations](../api/intune_mam_targetedmanagedappconfiguration_list.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) collection|List properties and relationships of the [targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) objects.|
|[Get targetedManagedAppConfiguration](../api/intune_mam_targetedmanagedappconfiguration_get.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md)|Read properties and relationships of the [targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[Create targetedManagedAppConfiguration](../api/intune_mam_targetedmanagedappconfiguration_create.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md)|Create a new [targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[Delete targetedManagedAppConfiguration](../api/intune_mam_targetedmanagedappconfiguration_delete.md)|None|Deletes a [targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md).|
|[Update targetedManagedAppConfiguration](../api/intune_mam_targetedmanagedappconfiguration_update.md)|[targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md)|Update the properties of a [targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) object.|
|[assign action](../api/intune_mam_targetedmanagedappconfiguration_assign.md)|None|Not yet documented|
|[targetApps action](../api/intune_mam_targetedmanagedappconfiguration_targetapps.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|customSettings|[keyValuePair](../resources/intune_mam_keyvaluepair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service Inherited from [managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md)|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|isAssigned|Boolean|Indicates if the policy is deployed to any inclusion groups or not.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|apps|[managedMobileApp](../resources/intune_mam_managedmobileapp.md) collection|List of apps to which the policy is deployed.|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune_mam_managedapppolicydeploymentsummary.md)|Navigation property to deployment summary of the configuration.|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune_mam_targetedmanagedapppolicyassignment.md) collection|Navigation property to list of inclusion and exclusion groups to which the policy is deployed.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppConfiguration",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "version": "String",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "deployedAppCount": 1024,
  "isAssigned": true
}
```



