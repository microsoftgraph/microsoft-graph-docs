# managedAppConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Configuration used to deliver a set of custom settings as-is to apps for users to whom the configuration is scoped

Inherits from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppConfigurations](../api/intune_mam_managedappconfiguration_list.md)|[managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md) collection|List properties and relationships of the [managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md) objects.|
|[Get managedAppConfiguration](../api/intune_mam_managedappconfiguration_get.md)|[managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md)|Read properties and relationships of the [managedAppConfiguration](../resources/intune_mam_managedappconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune_mam_managedapppolicy.md)|
|customSettings|[keyValuePair](../resources/intune_shared_keyvaluepair.md) collection|A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppConfiguration",
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
  ]
}
```



