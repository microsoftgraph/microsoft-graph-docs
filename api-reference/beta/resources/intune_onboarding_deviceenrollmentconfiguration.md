# deviceEnrollmentConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceEnrollmentConfigurations](../api/intune_onboarding_deviceenrollmentconfiguration_list.md)|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) collection|List properties and relationships of the [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) objects.|
|[Get deviceEnrollmentConfiguration](../api/intune_onboarding_deviceenrollmentconfiguration_get.md)|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md)|Read properties and relationships of the [deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) object.|
|[setPriority action](../api/intune_onboarding_deviceenrollmentconfiguration_setpriority.md)|None|Not yet documented|
|[assign action](../api/intune_onboarding_deviceenrollmentconfiguration_assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|displayName|String|Not yet documented|
|description|String|Not yet documented|
|priority|Int32|Not yet documented|
|createdDateTime|DateTimeOffset|Not yet documented|
|lastModifiedDateTime|DateTimeOffset|Not yet documented|
|version|Int32|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[enrollmentConfigurationAssignment](../resources/intune_onboarding_enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceEnrollmentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "priority": 1024,
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": 1024
}
```



