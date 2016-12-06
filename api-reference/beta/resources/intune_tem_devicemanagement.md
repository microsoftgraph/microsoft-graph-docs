# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_tem_devicemanagement_get.md)|[deviceManagement](../resources/intune_tem_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_tem_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_tem_devicemanagement_update.md)|[deviceManagement](../resources/intune_tem_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_tem_devicemanagement.md) object.|
|[List telecomExpenseManagementPartners](../api/intune_tem_devicemanagement_list_telecomexpensemanagementpartner.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md) collection|Get the telecomExpenseManagementPartners from the telecomExpenseManagementPartners navigation property.|
|[Create telecomExpenseManagementPartner](../api/intune_tem_devicemanagement_create_telecomexpensemanagementpartner.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md)|Create a new [telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md) by posting to the telecomExpenseManagementPartners collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/intune_tem_telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



