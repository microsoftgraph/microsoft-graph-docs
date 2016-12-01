# mobileAppIdentifierDeployment resource type

The identifier for the deployment an app.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppIdentifierDeployments](../api/intune_mam_mobileAppIdentifierDeployment_list.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) collection|List properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) objects.|
|[Get mobileAppIdentifierDeployment](../api/intune_mam_mobileAppIdentifierDeployment_get.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md)|Read properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) object.|
|[Create mobileAppIdentifierDeployment](../api/intune_mam_mobileAppIdentifierDeployment_create.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md)|Create a new [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) object.|
|[Delete mobileAppIdentifierDeployment](../api/intune_mam_mobileAppIdentifierDeployment_delete.md)|None|Deletes a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md).|
|[Update mobileAppIdentifierDeployment](../api/intune_mam_mobileAppIdentifierDeployment_update.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md)|Update the properties of a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileAppIdentifierDeployment.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileAppIdentifier.md)|The identifier for an app with it's OS Type.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppIdentifierDeployment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppIdentifierDeployment",
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "id": "String (identifier)",
  "version": "String"
}
```


