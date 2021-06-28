---
title: "deviceManagementExchangeConnector resource type"
description: "Entity which represents a connection to an Exchange environment."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementExchangeConnector resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity which represents a connection to an Exchange environment.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementExchangeConnectors](../api/intune-onboarding-devicemanagementexchangeconnector-list.md)|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) collection|List properties and relationships of the [deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) objects.|
|[Get deviceManagementExchangeConnector](../api/intune-onboarding-devicemanagementexchangeconnector-get.md)|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md)|Read properties and relationships of the [deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) object.|
|[Create deviceManagementExchangeConnector](../api/intune-onboarding-devicemanagementexchangeconnector-create.md)|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md)|Create a new [deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) object.|
|[Delete deviceManagementExchangeConnector](../api/intune-onboarding-devicemanagementexchangeconnector-delete.md)|None|Deletes a [deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md).|
|[Update deviceManagementExchangeConnector](../api/intune-onboarding-devicemanagementexchangeconnector-update.md)|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md)|Update the properties of a [deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) object.|
|[sync action](../api/intune-onboarding-devicemanagementexchangeconnector-sync.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|lastSyncDateTime|DateTimeOffset|Last sync time for the Exchange Connector|
|status|[deviceManagementExchangeConnectorStatus](../resources/intune-onboarding-devicemanagementexchangeconnectorstatus.md)|Exchange Connector Status. Possible values are: `none`, `connectionPending`, `connected`, `disconnected`.|
|primarySmtpAddress|String|Email address used to configure the Service To Service Exchange Connector.|
|serverName|String|The name of the Exchange server.|
|connectorServerName|String|The name of the server hosting the Exchange Connector.|
|exchangeConnectorType|[deviceManagementExchangeConnectorType](../resources/intune-onboarding-devicemanagementexchangeconnectortype.md)|The type of Exchange Connector Configured. Possible values are: `onPremises`, `hosted`, `serviceToService`, `dedicated`.|
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
  "connectorServerName": "String",
  "exchangeConnectorType": "String",
  "version": "String",
  "exchangeAlias": "String",
  "exchangeOrganization": "String"
}
```




