# deviceCategory resource type

Device categories provides a way to organize your devices. Using device categories, company administrators can define their own categories that make sense to their company. These categories can then be applied to a device in the Intune Azure console or selected by a user during device enrollment. You can filter reports and create dynamic Azure Active Directory device groups based on device categories.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCategories](../api/intune_onboarding_deviceCategory_list.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md) collection|List properties and relationships of the [deviceCategory](../resources/intune_onboarding_deviceCategory.md) objects.|
|[Get deviceCategory](../api/intune_onboarding_deviceCategory_get.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune_onboarding_deviceCategory.md) object.|
|[Create deviceCategory](../api/intune_onboarding_deviceCategory_create.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md)|Create a new [deviceCategory](../resources/intune_onboarding_deviceCategory.md) object.|
|[Delete deviceCategory](../api/intune_onboarding_deviceCategory_delete.md)|None|Deletes a [deviceCategory](../resources/intune_onboarding_deviceCategory.md).|
|[Update deviceCategory](../api/intune_onboarding_deviceCategory_update.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md)|Update the properties of a [deviceCategory](../resources/intune_onboarding_deviceCategory.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier for the device category. Read-only.|
|displayName|String|Display name for the device category.|
|description|String|Optional description for the device category.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCategory"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```


