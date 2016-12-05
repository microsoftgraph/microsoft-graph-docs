# telecomExpenseManagementPartner resource type

telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service. Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List telecomExpenseManagementPartners](../api/intune_tem_telecomExpenseManagementPartner_list.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md) collection|List properties and relationships of the [telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md) objects.|
|[Get telecomExpenseManagementPartner](../api/intune_tem_telecomExpenseManagementPartner_get.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md)|Read properties and relationships of the [telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md) object.|
|[Create telecomExpenseManagementPartner](../api/intune_tem_telecomExpenseManagementPartner_create.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md)|Create a new [telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md) object.|
|[Delete telecomExpenseManagementPartner](../api/intune_tem_telecomExpenseManagementPartner_delete.md)|None|Deletes a [telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md).|
|[Update telecomExpenseManagementPartner](../api/intune_tem_telecomExpenseManagementPartner_update.md)|[telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md)|Update the properties of a [telecomExpenseManagementPartner](../resources/intune_tem_telecomExpenseManagementPartner.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the TEM partner.|
|displayName|String|Display name of the TEM partner.|
|url|String|URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.|
|appAuthorized|Boolean|Whether the partner's AAD app has been authorized to access Intune.|
|enabled|Boolean|Whether Intune's connection to the TEM service is currently enabled or disabled.|
|lastConnectionDateTime|DateTimeOffset|Timestamp of the last request sent to Intune by the TEM partner.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.telecomExpenseManagementPartner"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.telecomExpenseManagementPartner",
  "id": "String (identifier)",
  "displayName": "String",
  "url": "String",
  "appAuthorized": true,
  "enabled": true,
  "lastConnectionDateTime": "String (timestamp)"
}
```


