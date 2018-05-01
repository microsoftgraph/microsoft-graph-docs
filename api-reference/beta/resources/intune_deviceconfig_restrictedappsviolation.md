# restrictedAppsViolation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Violation of restricted apps configuration profile per device per user
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List restrictedAppsViolations](../api/intune_deviceconfig_restrictedappsviolation_list.md)|[restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) collection|List properties and relationships of the [restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) objects.|
|[Get restrictedAppsViolation](../api/intune_deviceconfig_restrictedappsviolation_get.md)|[restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md)|Read properties and relationships of the [restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) object.|
|[Create restrictedAppsViolation](../api/intune_deviceconfig_restrictedappsviolation_create.md)|[restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md)|Create a new [restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) object.|
|[Delete restrictedAppsViolation](../api/intune_deviceconfig_restrictedappsviolation_delete.md)|None|Deletes a [restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md).|
|[Update restrictedAppsViolation](../api/intune_deviceconfig_restrictedappsviolation_update.md)|[restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md)|Update the properties of a [restrictedAppsViolation](../resources/intune_deviceconfig_restrictedappsviolation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the object. Composed from accountId, deviceId, policyId and userId|
|userId|String|User unique identifier, must be Guid|
|userName|String|User name|
|managedDeviceId|String|Managed device unique identifier, must be Guid|
|deviceName|String|Device name|
|deviceConfigurationId|String|Device configuration profile unique identifier, must be Guid|
|deviceConfigurationName|String|Device configuration profile name|
|platformType|[policyPlatformType](../resources/intune_deviceconfig_policyplatformtype.md)|Platform type. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `all`.|
|restrictedAppsState|[restrictedAppsState](../resources/intune_deviceconfig_restrictedappsstate.md)|Restricted apps state. Possible values are: `prohibitedApps`, `notApprovedApps`.|
|restrictedApps|[managedDeviceReportedApp](../resources/intune_deviceconfig_manageddevicereportedapp.md) collection|List of violated restricted apps|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restrictedAppsViolation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restrictedAppsViolation",
  "id": "String (identifier)",
  "userId": "String",
  "userName": "String",
  "managedDeviceId": "String",
  "deviceName": "String",
  "deviceConfigurationId": "String",
  "deviceConfigurationName": "String",
  "platformType": "String",
  "restrictedAppsState": "String",
  "restrictedApps": [
    {
      "@odata.type": "microsoft.graph.managedDeviceReportedApp",
      "appId": "String"
    }
  ]
}
```



