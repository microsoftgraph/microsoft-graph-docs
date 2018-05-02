# deviceManagementExchangeConnector resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Entity which represents a connection to an Exchange environment.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementExchangeConnectors](../api/intune_onboarding_devicemanagementexchangeconnector_list.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|List properties and relationships of the [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) objects.|
|[Get deviceManagementExchangeConnector](../api/intune_onboarding_devicemanagementexchangeconnector_get.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md)|Read properties and relationships of the [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[Create deviceManagementExchangeConnector](../api/intune_onboarding_devicemanagementexchangeconnector_create.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md)|Create a new [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[Delete deviceManagementExchangeConnector](../api/intune_onboarding_devicemanagementexchangeconnector_delete.md)|None|Deletes a [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md).|
|[Update deviceManagementExchangeConnector](../api/intune_onboarding_devicemanagementexchangeconnector_update.md)|[deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md)|Update the properties of a [deviceManagementExchangeConnector](../resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[sync action](../api/intune_onboarding_devicemanagementexchangeconnector_sync.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|lastSyncDateTime|DateTimeOffset|Last sync time for the Exchange Connector|
|status|[deviceManagementExchangeConnectorStatus](../resources/intune_onboarding_devicemanagementexchangeconnectorstatus.md)|Exchange Connector Status. Possible values are: `none`, `connectionPending`, `connected`, `disconnected`.|
|primarySmtpAddress|String|Email address used to configure the Service To Service Exchange Connector.|
|serverName|String|The name of the server hosting the Exchange Connector.|
|exchangeConnectorType|[deviceManagementExchangeConnectorType](../resources/intune_onboarding_devicemanagementexchangeconnectortype.md)|The type of Exchange Connector Configured. Possible values are: `onPremises`, `hosted`, `serviceToService`, `dedicated`.|
|version|String|The version of the ExchangeConnectorAgent|
|exchangeAlias|String|An alias assigned to the Exchange server|
|exchangeOrganization|String|Exchange Organization to the Exchange server|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeConnector",
  "id": "String (identifier)",
  "lastSyncDateTime": "String (timestamp)",
  "status": "String",
  "primarySmtpAddress": "String",
  "serverName": "String",
  "exchangeConnectorType": "String",
  "version": "String",
  "exchangeAlias": "String",
  "exchangeOrganization": "String"
}
```



