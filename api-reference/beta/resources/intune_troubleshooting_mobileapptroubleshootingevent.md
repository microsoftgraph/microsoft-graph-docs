# mobileAppTroubleshootingEvent resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Event representing a users device application install status.

Inherits from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppTroubleshootingEvents](../api/intune_troubleshooting_mobileapptroubleshootingevent_list.md)|[mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md) collection|List properties and relationships of the [mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md) objects.|
|[Get mobileAppTroubleshootingEvent](../api/intune_troubleshooting_mobileapptroubleshootingevent_get.md)|[mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md)|Read properties and relationships of the [mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md) object.|
|[Create mobileAppTroubleshootingEvent](../api/intune_troubleshooting_mobileapptroubleshootingevent_create.md)|[mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md)|Create a new [mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md) object.|
|[Delete mobileAppTroubleshootingEvent](../api/intune_troubleshooting_mobileapptroubleshootingevent_delete.md)|None|Deletes a [mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md).|
|[Update mobileAppTroubleshootingEvent](../api/intune_troubleshooting_mobileapptroubleshootingevent_update.md)|[mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md)|Update the properties of a [mobileAppTroubleshootingEvent](../resources/intune_troubleshooting_mobileapptroubleshootingevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|eventDateTime|DateTimeOffset|Time when the event occurred . Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|correlationId|String|Id used for tracing the failure in the service. Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|managedDeviceIdentifier|String|Device identifier created or collected by Intune.|
|userId|String|Identifier for the user that tried to enroll the device.|
|applicationId|String|Intune application identifier.|
|history|[mobileAppTroubleshootingHistoryItem](../resources/intune_troubleshooting_mobileapptroubleshootinghistoryitem.md) collection|Intune Mobile Application Troubleshooting History Item|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppTroubleshootingEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent",
  "id": "String (identifier)",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "managedDeviceIdentifier": "String",
  "userId": "String",
  "applicationId": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.mobileAppTroubleshootingHistoryItem",
      "occurrenceDateTime": "String (timestamp)"
    }
  ]
}
```



