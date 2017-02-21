# remoteActionAudit resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Report of remote actions initiated on the devices belonging to a certain tenant.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List remoteActionAudits](../api/intune_onboarding_remoteactionaudit_list.md)|[remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) collection|List properties and relationships of the [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) objects.|
|[Get remoteActionAudit](../api/intune_onboarding_remoteactionaudit_get.md)|[remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md)|Read properties and relationships of the [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object.|
|[Create remoteActionAudit](../api/intune_onboarding_remoteactionaudit_create.md)|[remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md)|Create a new [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object.|
|[Delete remoteActionAudit](../api/intune_onboarding_remoteactionaudit_delete.md)|None|Deletes a [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md).|
|[Update remoteActionAudit](../api/intune_onboarding_remoteactionaudit_update.md)|[remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md)|Update the properties of a [remoteActionAudit](../resources/intune_onboarding_remoteactionaudit.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|User who initiated the device action, format is UPN.|
|action|String|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|

## Relationships
None
## JSON Representation
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



