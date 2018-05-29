# certificateConnectorSetting resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Certificate connector settings.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|Int32|Certificate connector status|
|certExpiryTime|DateTimeOffset|Certificate expire time|
|enrollmentError|String|Certificate connector enrollment error|
|lastConnectorConnectionTime|DateTimeOffset|Last time certificate connector connected|
|connectorVersion|String|Version of certificate connector|
|lastUploadVersion|Int64|Version of last uploaded certificate connector|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateConnectorSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateConnectorSetting",
  "status": 1024,
  "certExpiryTime": "String (timestamp)",
  "enrollmentError": "String",
  "lastConnectorConnectionTime": "String (timestamp)",
  "connectorVersion": "String",
  "lastUploadVersion": 1024
}
```



