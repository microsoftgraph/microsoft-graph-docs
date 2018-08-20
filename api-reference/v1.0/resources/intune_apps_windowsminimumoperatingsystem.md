# windowsMinimumOperatingSystem resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The minimum operating system required for a Windows mobile app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Windows version 8.0 or later.|
|v8_1|Boolean|Windows version 8.1 or later.|
|v10_0|Boolean|Windows version 10.0 or later.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsMinimumOperatingSystem",
  "v8_0": true,
  "v8_1": true,
  "v10_0": true
}
```



