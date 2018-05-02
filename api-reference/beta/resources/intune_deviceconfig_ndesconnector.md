# ndesConnector resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Entity which represents an OnPrem Ndes connector.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List ndesConnectors](../api/intune_deviceconfig_ndesconnector_list.md)|[ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) collection|List properties and relationships of the [ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) objects.|
|[Get ndesConnector](../api/intune_deviceconfig_ndesconnector_get.md)|[ndesConnector](../resources/intune_deviceconfig_ndesconnector.md)|Read properties and relationships of the [ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) object.|
|[Create ndesConnector](../api/intune_deviceconfig_ndesconnector_create.md)|[ndesConnector](../resources/intune_deviceconfig_ndesconnector.md)|Create a new [ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) object.|
|[Delete ndesConnector](../api/intune_deviceconfig_ndesconnector_delete.md)|None|Deletes a [ndesConnector](../resources/intune_deviceconfig_ndesconnector.md).|
|[Update ndesConnector](../api/intune_deviceconfig_ndesconnector_update.md)|[ndesConnector](../resources/intune_deviceconfig_ndesconnector.md)|Update the properties of a [ndesConnector](../resources/intune_deviceconfig_ndesconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the NDES Connector.|
|lastConnectionDateTime|DateTimeOffset|Last connection time for the Ndes Connector|
|state|[ndesConnectorState](../resources/intune_deviceconfig_ndesconnectorstate.md)|Ndes Connector Status. Possible values are: `none`, `active`, `inactive`.|
|displayName|String|The friendly name of the Ndes Connector.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ndesConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ndesConnector",
  "id": "String (identifier)",
  "lastConnectionDateTime": "String (timestamp)",
  "state": "String",
  "displayName": "String"
}
```



