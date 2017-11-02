# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_enrollment_devicemanagement_get.md)|[deviceManagement](../resources/intune_enrollment_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_enrollment_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_enrollment_devicemanagement_update.md)|[deviceManagement](../resources/intune_enrollment_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_enrollment_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|windowsAutopilotSettings|[windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md)|The Windows autopilot account settings.|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/intune_enrollment_windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/intune_enrollment_windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "maximumDepTokens": 1024
}
```



