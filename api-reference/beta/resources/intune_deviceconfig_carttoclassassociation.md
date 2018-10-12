# cartToClassAssociation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

CartToClassAssociation for associating device carts with classrooms.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List cartToClassAssociations](../api/intune_deviceconfig_carttoclassassociation_list.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|List properties and relationships of the [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) objects.|
|[Get cartToClassAssociation](../api/intune_deviceconfig_carttoclassassociation_get.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md)|Read properties and relationships of the [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object.|
|[Create cartToClassAssociation](../api/intune_deviceconfig_carttoclassassociation_create.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md)|Create a new [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object.|
|[Delete cartToClassAssociation](../api/intune_deviceconfig_carttoclassassociation_delete.md)|None|Deletes a [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md).|
|[Update cartToClassAssociation](../api/intune_deviceconfig_carttoclassassociation_update.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md)|Update the properties of a [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|version|Int32|Version of the CartToClassAssociation.|
|displayName|String|Admin provided name of the device configuration.|
|description|String|Admin provided description of the CartToClassAssociation.|
|deviceCartIds|String collection|Identifiers of device carts to be associated with classes.|
|classroomIds|String collection|Identifiers of classrooms to be associated with device carts.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cartToClassAssociation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cartToClassAssociation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": 1024,
  "displayName": "String",
  "description": "String",
  "deviceCartIds": [
    "String"
  ],
  "classroomIds": [
    "String"
  ]
}
```



