# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_onboarding_deviceManagement_get.md)|[deviceManagement](../resources/intune_onboarding_deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_onboarding_deviceManagement.md) object.|
|[Update deviceManagement](../api/intune_onboarding_deviceManagement_update.md)|[deviceManagement](../resources/intune_onboarding_deviceManagement.md)|Update the properties of a [deviceManagement](../resources/intune_onboarding_deviceManagement.md) object.|
|[List remoteActionAudits](../api/intune_onboarding_deviceManagement_list_remoteActionAudit.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) collection|Get the remoteActionAudits from the remoteActionAudits navigation property.|
|[Create remoteActionAudit](../api/intune_onboarding_deviceManagement_create_remoteActionAudit.md)|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md)|Create a new [remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) by posting to the remoteActionAudits collection.|
|[List deviceCategories](../api/intune_onboarding_deviceManagement_list_deviceCategory.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md) collection|Get the deviceCategories from the deviceCategories navigation property.|
|[Create deviceCategory](../api/intune_onboarding_deviceManagement_create_deviceCategory.md)|[deviceCategory](../resources/intune_onboarding_deviceCategory.md)|Create a new [deviceCategory](../resources/intune_onboarding_deviceCategory.md) by posting to the deviceCategories collection.|
|[List deviceManagementExchangeConnectors](../api/intune_onboarding_deviceManagement_list_deviceManagementExchangeConnector.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) collection|Get the deviceManagementExchangeConnectors from the exchangeConnectors navigation property.|
|[Create deviceManagementExchangeConnector](../api/intune_onboarding_deviceManagement_create_deviceManagementExchangeConnector.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md)|Create a new [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) by posting to the exchangeConnectors collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|remoteActionAudits|[remoteActionAudit](../resources/intune_onboarding_remoteActionAudit.md) collection|The list of device remote action audits with the tenant.|
|deviceCategories|[deviceCategory](../resources/intune_onboarding_deviceCategory.md) collection|The list of device categories with the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) collection|The list of Exchange Connectors configured by the tenant.|

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



