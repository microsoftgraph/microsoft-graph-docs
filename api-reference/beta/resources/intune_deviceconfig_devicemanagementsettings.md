# deviceManagementSettings resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

**TODO: Documentation is missing please add the `\[ODataDescription()\]` and/or `\[ODataLongDescription()\]` attributes.**
## Properties
|Property|Type|Description|
|---|---|---|
|windowsCommercialId|String|Not yet documented|
|windowsCommercialIdLastModifiedTime|DateTimeOffset|Not yet documented|
|deviceComplianceCheckinThresholdDays|Int32|Not yet documented|
|isScheduledActionEnabled|Boolean|Not yet documented|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementSettings"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettings",
  "windowsCommercialId": "String",
  "windowsCommercialIdLastModifiedTime": "String (timestamp)",
  "deviceComplianceCheckinThresholdDays": 1024,
  "isScheduledActionEnabled": true
}
```



