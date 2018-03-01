# deviceGeoLocation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device location
## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastCollectedDateTimeUtc|DateTimeOffset|Time at which location was recorded, relative to UTC|
|lastCollectedDateTime|DateTimeOffset|Time at which location was recorded, relative to UTC|
|longitude|Double|Longitude coordinate of the device's location|
|latitude|Double|Latitude coordinate of the device's location|
|altitude|Double|Altitude, given in meters above sea level|
|horizontalAccuracy|Double|Accuracy of longitude and latitude in meters|
|verticalAccuracy|Double|Accuracy of altitude in meters|
|heading|Double|Heading in degrees from true north|
|speed|Double|Speed the device is traveling in meters per second|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceGeoLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceGeoLocation",
  "lastCollectedDateTimeUtc": "String (timestamp)",
  "lastCollectedDateTime": "String (timestamp)",
  "longitude": "<Unknown Primitive Type Edm.Double>",
  "latitude": "<Unknown Primitive Type Edm.Double>",
  "altitude": "<Unknown Primitive Type Edm.Double>",
  "horizontalAccuracy": "<Unknown Primitive Type Edm.Double>",
  "verticalAccuracy": "<Unknown Primitive Type Edm.Double>",
  "heading": "<Unknown Primitive Type Edm.Double>",
  "speed": "<Unknown Primitive Type Edm.Double>"
}
```



