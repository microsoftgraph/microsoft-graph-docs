# deviceEnrollmentPlatformRestrictions resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Platform specific enrollment restrictions
## Properties
|Property|Type|Description|
|---|---|---|
|platformBlocked|Boolean|Block the platform from enrolling|
|personalDeviceEnrollmentBlocked|Boolean|Block personally owned devices from enrolling|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictions"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentPlatformRestrictions",
  "platformBlocked": true,
  "personalDeviceEnrollmentBlocked": true
}
```



