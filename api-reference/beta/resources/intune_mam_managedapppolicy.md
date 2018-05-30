# managedAppPolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The ManagedAppPolicy resource represents a base type for platform specific policies.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppPolicies](../api/intune_mam_managedapppolicy_list.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|List properties and relationships of the [managedAppPolicy](../resources/intune_mam_managedapppolicy.md) objects.|
|[Get managedAppPolicy](../api/intune_mam_managedapppolicy_get.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|Read properties and relationships of the [managedAppPolicy](../resources/intune_mam_managedapppolicy.md) object.|
|[targetApps action](../api/intune_mam_managedapppolicy_targetapps.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name.|
|description|String|The policy's description.|
|createdDateTime|DateTimeOffset|The date and time the policy was created.|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppPolicy",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "version": "String"
}
```



