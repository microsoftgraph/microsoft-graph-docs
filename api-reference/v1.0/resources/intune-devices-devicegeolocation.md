---
title: "deviceGeoLocation resource type"
description: "Device location"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceGeoLocation resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceGeoLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceGeoLocation",
  "lastCollectedDateTime": "String (timestamp)",
  "longitude": "4.2",
  "latitude": "4.2",
  "altitude": "4.2",
  "horizontalAccuracy": "4.2",
  "verticalAccuracy": "4.2",
  "heading": "4.2",
  "speed": "4.2"
}
```




