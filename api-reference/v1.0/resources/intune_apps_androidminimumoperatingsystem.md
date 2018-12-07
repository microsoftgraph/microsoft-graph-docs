# androidMinimumOperatingSystem resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the minimum operating system required for an Android mobile app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|v4_0|Boolean|Version 4.0 or later.|
|v4_0_3|Boolean|Version 4.0.3 or later.|
|v4_1|Boolean|Version 4.1 or later.|
|v4_2|Boolean|Version 4.2 or later.|
|v4_3|Boolean|Version 4.3 or later.|
|v4_4|Boolean|Version 4.4 or later.|
|v5_0|Boolean|Version 5.0 or later.|
|v5_1|Boolean|Version 5.1 or later.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidMinimumOperatingSystem",
  "v4_0": true,
  "v4_0_3": true,
  "v4_1": true,
  "v4_2": true,
  "v4_3": true,
  "v4_4": true,
  "v5_0": true,
  "v5_1": true
}
```



