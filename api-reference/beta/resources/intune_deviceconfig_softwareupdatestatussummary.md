# softwareUpdateStatusSummary resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get softwareUpdateStatusSummary](../api/intune_deviceconfig_softwareupdatestatussummary_get.md)|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|Read properties and relationships of the [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object.|
|[Update softwareUpdateStatusSummary](../api/intune_deviceconfig_softwareupdatestatussummary_update.md)|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|Update the properties of a [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|displayName|String|The name of the policy.|
|compliantDeviceCount|Int32|Number of compliant devices.|
|nonCompliantDeviceCount|Int32|Number of non compliant devices.|
|remediatedDeviceCount|Int32|Number of remediated devices.|
|errorDeviceCount|Int32|Number of devices had error.|
|unknownDeviceCount|Int32|Number of unknown devices.|
|conflictDeviceCount|Int32|Number of conflict devices.|
|notApplicableDeviceCount|Int32|Number of not applicable devices.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.softwareUpdateStatusSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.softwareUpdateStatusSummary",
  "id": "String (identifier)",
  "displayName": "String",
  "compliantDeviceCount": 1024,
  "nonCompliantDeviceCount": 1024,
  "remediatedDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "unknownDeviceCount": 1024,
  "conflictDeviceCount": 1024,
  "notApplicableDeviceCount": 1024
}
```



