# adminConsent resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Admin consent information.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|shareAPNSData|[adminConsentState](../resources/intune_devices_adminconsentstate.md)|The admin consent state of sharing user and device data to Apple. Possible values are: `notConfigured`, `granted`, `notGranted`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminConsent",
  "shareAPNSData": "String"
}
```



