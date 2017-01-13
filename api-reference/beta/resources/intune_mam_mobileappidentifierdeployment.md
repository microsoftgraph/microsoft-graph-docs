# mobileAppIdentifierDeployment resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

The identifier for the deployment an app.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppIdentifierDeployments](../api/intune_mam_mobileappidentifierdeployment_list.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) collection|List properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) objects.|
|[Get mobileAppIdentifierDeployment](../api/intune_mam_mobileappidentifierdeployment_get.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md)|Read properties and relationships of the [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.|
|[Create mobileAppIdentifierDeployment](../api/intune_mam_mobileappidentifierdeployment_create.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md)|Create a new [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.|
|[Delete mobileAppIdentifierDeployment](../api/intune_mam_mobileappidentifierdeployment_delete.md)|None|Deletes a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md).|
|[Update mobileAppIdentifierDeployment](../api/intune_mam_mobileappidentifierdeployment_update.md)|[mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md)|Update the properties of a [mobileAppIdentifierDeployment](../resources/intune_mam_mobileappidentifierdeployment.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The identifier for an app with it's OS Type.|
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



