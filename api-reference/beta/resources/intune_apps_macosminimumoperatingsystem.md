# macOSMinimumOperatingSystem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The minimum operating system required for a MacOS app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|v10_7|Boolean|Mac OS 10.7 or later.|
|v10_8|Boolean|Mac OS 10.8 or later.|
|v10_9|Boolean|Mac OS 10.9 or later.|
|v10_10|Boolean|Mac OS 10.10 or later.|
|v10_11|Boolean|Mac OS 10.11 or later.|
|v10_12|Boolean|Mac OS 10.12 or later.|
|v10_13|Boolean|Mac OS 10.13 or later.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSMinimumOperatingSystem",
  "v10_7": true,
  "v10_8": true,
  "v10_9": true,
  "v10_10": true,
  "v10_11": true,
  "v10_12": true,
  "v10_13": true
}
```



