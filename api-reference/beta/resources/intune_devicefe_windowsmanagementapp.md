# windowsManagementApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows management app entity.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get windowsManagementApp](../api/intune_devicefe_windowsmanagementapp_get.md)|[windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md)|Read properties and relationships of the [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md) object.|
|[Update windowsManagementApp](../api/intune_devicefe_windowsmanagementapp_update.md)|[windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md)|Update the properties of a [windowsManagementApp](../resources/intune_devicefe_windowsmanagementapp.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the Windows management app|
|onboardingStatus|String|Windows management app onboarding status. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|deployedVersion|String|Windows management app deployed version.|
|lastModifiedTime|DateTimeOffset|Windows management app last modified time.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagementApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "id": "String (identifier)",
  "onboardingStatus": "String",
  "deployedVersion": "String",
  "lastModifiedTime": "String (timestamp)"
}
```



