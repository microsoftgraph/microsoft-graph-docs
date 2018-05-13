# enrollmentTroubleshootingEvent resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Event representing an enrollment failure.

Inherits from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List enrollmentTroubleshootingEvents](../api/intune_troubleshooting_enrollmenttroubleshootingevent_list.md)|[enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md) collection|List properties and relationships of the [enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md) objects.|
|[Get enrollmentTroubleshootingEvent](../api/intune_troubleshooting_enrollmenttroubleshootingevent_get.md)|[enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md)|Read properties and relationships of the [enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md) object.|
|[Create enrollmentTroubleshootingEvent](../api/intune_troubleshooting_enrollmenttroubleshootingevent_create.md)|[enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md)|Create a new [enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md) object.|
|[Delete enrollmentTroubleshootingEvent](../api/intune_troubleshooting_enrollmenttroubleshootingevent_delete.md)|None|Deletes a [enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md).|
|[Update enrollmentTroubleshootingEvent](../api/intune_troubleshooting_enrollmenttroubleshootingevent_update.md)|[enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md)|Update the properties of a [enrollmentTroubleshootingEvent](../resources/intune_troubleshooting_enrollmenttroubleshootingevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|eventDateTime|DateTimeOffset|Time when the event occurred . Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|correlationId|String|Id used for tracing the failure in the service. Inherited from [deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md)|
|managedDeviceIdentifier|String|Device identifier created or collected by Intune.|
|operatingSystem|String|Operating System.|
|osVersion|String|OS Version.|
|userId|String|Identifier for the user that tried to enroll the device.|
|deviceId|String|Azure AD device identifier.|
|enrollmentType|deviceEnrollmentType|Type of the enrollment. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`.|
|failureCategory|deviceEnrollmentFailureReason|Highlevel failure category. Possible values are: `unknown`, `authentication`, `authorization`, `accountValidation`, `userValidation`, `deviceNotSupported`, `inMaintenance`, `badRequest`, `featureNotSupported`, `enrollmentRestrictionsEnforced`, `clientDisconnected`.|
|failureReason|String|Detailed failure reason.|

### deviceEnrollmentFailureReason values

| Value
|:-------------
| unknown
| authentication
| authorization
| accountValidation
| userValidation
| deviceNotSupported
| inMaintenance
| badRequest
| featureNotSupported
| enrollmentRestrictionsEnforced
| clientDisconnected

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.deviceManagementTroubleshootingEvent",
  "@odata.type": "microsoft.graph.enrollmentTroubleshootingEvent"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.enrollmentTroubleshootingEvent",
  "id": "String (identifier)",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "managedDeviceIdentifier": "String",
  "operatingSystem": "String",
  "osVersion": "String",
  "userId": "String",
  "deviceId": "String",
  "enrollmentType": "String",
  "failureCategory": "String",
  "failureReason": "String"
}
```



