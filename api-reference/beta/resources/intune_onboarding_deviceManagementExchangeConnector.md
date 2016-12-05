# deviceManagementExchangeConnector resource type

Entity which represents a connection to an Exchange environment.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceManagementExchangeConnectors](../api/intune_onboarding_deviceManagementExchangeConnector_list.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) collection|List properties and relationships of the [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) objects.|
|[Get deviceManagementExchangeConnector](../api/intune_onboarding_deviceManagementExchangeConnector_get.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md)|Read properties and relationships of the [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) object.|
|[Create deviceManagementExchangeConnector](../api/intune_onboarding_deviceManagementExchangeConnector_create.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md)|Create a new [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) object.|
|[Delete deviceManagementExchangeConnector](../api/intune_onboarding_deviceManagementExchangeConnector_delete.md)|None|Deletes a [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md).|
|[Update deviceManagementExchangeConnector](../api/intune_onboarding_deviceManagementExchangeConnector_update.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md)|Update the properties of a [deviceManagementExchangeConnector](../resources/intune_onboarding_deviceManagementExchangeConnector.md) object.|
|[sync action](../api/intune_onboarding_deviceManagementExchangeConnector_sync.md)|None|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|lastSyncDateTime|DateTimeOffset|Last sync time for the Exchange Connector|
|status|String|Exchange Connector Status Possible values are: `connectionPending`, `connected`, `disconnected`, `none`.|
|primarySmtpAddress|String|Email address used to configure the Service To Service Exchange Connector.|
|serverName|String|The name of the server hosting the Exchange Connector.|
|exchangeConnectorType|String|The type of Exchange Connector Configured. Possible values are: `onPremises`, `hosted`, `serviceToService`, `dedicated`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeConnector"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeConnector",
  "id": "String (identifier)",
  "lastSyncDateTime": "String (timestamp)",
  "status": "String",
  "primarySmtpAddress": "String",
  "serverName": "String",
  "exchangeConnectorType": "String"
}
```



