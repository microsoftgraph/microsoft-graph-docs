# managedAppStatus resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents app protection and configuration status for the organization.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppStatuses](../api/intune_mam_managedappstatus_list.md)|[managedAppStatus](../resources/intune_mam_managedappstatus.md) collection|List properties and relationships of the [managedAppStatus](../resources/intune_mam_managedappstatus.md) objects.|
|[Get managedAppStatus](../api/intune_mam_managedappstatus_get.md)|[managedAppStatus](../resources/intune_mam_managedappstatus.md)|Read properties and relationships of the [managedAppStatus](../resources/intune_mam_managedappstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Friendly name of the status report.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppStatus"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppStatus",
  "displayName": "String",
  "id": "String (identifier)",
  "version": "String"
}
```








