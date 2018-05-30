# managedAppOperation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an operation applied against an app registration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppOperations](../api/intune_mam_managedappoperation_list.md)|[managedAppOperation](../resources/intune_mam_managedappoperation.md) collection|List properties and relationships of the [managedAppOperation](../resources/intune_mam_managedappoperation.md) objects.|
|[Get managedAppOperation](../api/intune_mam_managedappoperation_get.md)|[managedAppOperation](../resources/intune_mam_managedappoperation.md)|Read properties and relationships of the [managedAppOperation](../resources/intune_mam_managedappoperation.md) object.|
|[Create managedAppOperation](../api/intune_mam_managedappoperation_create.md)|[managedAppOperation](../resources/intune_mam_managedappoperation.md)|Create a new [managedAppOperation](../resources/intune_mam_managedappoperation.md) object.|
|[Delete managedAppOperation](../api/intune_mam_managedappoperation_delete.md)|None|Deletes a [managedAppOperation](../resources/intune_mam_managedappoperation.md).|
|[Update managedAppOperation](../api/intune_mam_managedappoperation_update.md)|[managedAppOperation](../resources/intune_mam_managedappoperation.md)|Update the properties of a [managedAppOperation](../resources/intune_mam_managedappoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The operation name.|
|lastModifiedDateTime|DateTimeOffset|The last time the app operation was modified.|
|state|String|The current state of the operation|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppOperation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppOperation",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "id": "String (identifier)",
  "version": "String"
}
```



