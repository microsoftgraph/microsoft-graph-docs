# sideLoadingKey resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

SideLoadingKey entity is required for Windows 8 and 8.1 devices to intall Line Of Business Apps for a tenant.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List sideLoadingKeies](../api/intune_onboarding_sideloadingkey_list.md)|[sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) collection|List properties and relationships of the [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) objects.|
|[Get sideLoadingKey](../api/intune_onboarding_sideloadingkey_get.md)|[sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md)|Read properties and relationships of the [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.|
|[Create sideLoadingKey](../api/intune_onboarding_sideloadingkey_create.md)|[sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md)|Create a new [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.|
|[Delete sideLoadingKey](../api/intune_onboarding_sideloadingkey_delete.md)|None|Deletes a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md).|
|[Update sideLoadingKey](../api/intune_onboarding_sideloadingkey_update.md)|[sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md)|Update the properties of a [sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Side Loading Key Unique Id.|
|value|String|Side Loading Key Value, it is 5x5 value, seperated by hiphens.|
|displayName|String|Side Loading Key Name displayed to the ITPro Admins.|
|description|String|Side Loading Key description displayed to the ITPro Admins..|
|totalActivation|Int32|Side Loading Key Total Activation displayed to the ITPro Admins.|
|lastUpdatedDateTime|String|Side Loading Key Last Updated Date displayed to the ITPro Admins.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sideLoadingKey"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sideLoadingKey",
  "id": "String (identifier)",
  "value": "String",
  "displayName": "String",
  "description": "String",
  "totalActivation": 1024,
  "lastUpdatedDateTime": "String"
}
```



