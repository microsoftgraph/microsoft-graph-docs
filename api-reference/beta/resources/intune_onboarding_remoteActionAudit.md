# remoteActionAudit resource type

Report of remote actions initiated on the devices belonging to a certain tenant.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List remoteActionAudits](../api/intune_onboarding_remoteActionAudit_list.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) collection|List properties and relationships of the [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) objects.|
|[Get remoteActionAudit](../api/intune_onboarding_remoteActionAudit_get.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md)|Read properties and relationships of the [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) object.|
|[Create remoteActionAudit](../api/intune_onboarding_remoteActionAudit_create.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md)|Create a new [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) object.|
|[Delete remoteActionAudit](../api/intune_onboarding_remoteActionAudit_delete.md)|None|Deletes a [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md).|
|[Update remoteActionAudit](../api/intune_onboarding_remoteActionAudit_update.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md)|Update the properties of a [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|User who initiated the device action, format is UPN.|
|action|String|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.remoteActionAudit"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.remoteActionAudit",
  "id": "String (identifier)",
  "deviceDisplayName": "String",
  "userName": "String",
  "action": "String",
  "requestDateTime": "String (timestamp)"
}
```


