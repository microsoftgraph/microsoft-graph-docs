# resourceOperation resource type

This defines an operation or action that can be performed on an Intune resource (or entity).  Common operations are Read, Delete, Update or Create.  These operations provide basic management of the underlying Intune resource itself.  In some cases, an Intune resource can have operations that are used by the resource to take action in combination with other resources.  For example, the Assign operation is used to assign a MobileApp resource to an AAD security group.  Resource operations cannot be modified for built-in roles.This defines an operation or action that can be performed on an Intune resource (or entity).  Common operations are Get, List, Delete, Update or Create.  These operations provide basic management of the underlying Intune resource itself.  In some cases, an Intune resource can have operations that are used by the resource to take action in combination with other resources.  For example, the "Assign" operation is used to assign a MobileApp resource to an AAD security group.  Resource operations cannot be modified for built-in roles.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List resourceOperations](../api/intune_rbac_resourceOperation_list.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md) collection|List properties and relationships of the [resourceOperation](../resources/intune_rbac_resourceOperation.md) objects.|
|[Get resourceOperation](../api/intune_rbac_resourceOperation_get.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md)|Read properties and relationships of the [resourceOperation](../resources/intune_rbac_resourceOperation.md) object.|
|[Create resourceOperation](../api/intune_rbac_resourceOperation_create.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md)|Create a new [resourceOperation](../resources/intune_rbac_resourceOperation.md) object.|
|[Delete resourceOperation](../api/intune_rbac_resourceOperation_delete.md)|None|Deletes a [resourceOperation](../resources/intune_rbac_resourceOperation.md).|
|[Update resourceOperation](../api/intune_rbac_resourceOperation_update.md)|[resourceOperation](../resources/intune_rbac_resourceOperation.md)|Update the properties of a [resourceOperation](../resources/intune_rbac_resourceOperation.md) object.|
|[getEffectivePermissions function](../api/intune_rbac_resourceOperation_getEffectivePermissions.md)|String collection|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the Resource Operation. Read-only, automatically generated.|
|resourceName|String|Name of the Resource this operation is performed on.|
|actionName|String|Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.|
|description|String|Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceOperation"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.resourceOperation",
  "id": "String (identifier)",
  "resourceName": "String",
  "actionName": "String",
  "description": "String"
}
```



