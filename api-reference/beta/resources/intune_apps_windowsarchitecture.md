# windowsArchitecture resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for Windows architecture.
## Properties
|Property|Type|Description|
|---|---|---|
|x86|Boolean|Whether or not the X86 Windows architecture type is supported.|
|x64|Boolean|Whether or not the X64 Windows architecture type is supported.|
|arm|Boolean|Whether or not the Arm Windows architecture type is supported.|
|neutral|Boolean|Whether or not the Neutral Windows architecture type is supported.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsArchitecture"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsArchitecture",
  "x86": true,
  "x64": true,
  "arm": true,
  "neutral": true
}
```



