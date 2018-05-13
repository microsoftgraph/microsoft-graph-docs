# deviceGeoLocation resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device location
## Properties
|Property|Type|Description|
|:---|:---|:---|
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
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceGeoLocation"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceGeoLocation",
  "lastCollectedDateTime": "String (timestamp)",
  "altitude": 1024.13,
  "latitude": 26.13246,
  "longitude": 24.34616,
  "horizontalAccuracy": 2.9,
  "verticalAccuracy": 1.25,
  "heading": 36.3,
  "speed": 705.9

}
```



