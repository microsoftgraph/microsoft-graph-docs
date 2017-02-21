# appReportingOverviewStatus resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Class for reporting status of all mobile apps.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get appReportingOverviewStatus](../api/intune_apps_appreportingoverviewstatus_get.md)|[appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md)|Read properties and relationships of the [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object.|
|[Update appReportingOverviewStatus](../api/intune_apps_appreportingoverviewstatus_update.md)|[appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md)|Update the properties of a [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|applicationCount|Int64|Number of device failures across all apps.|
|failedApplicationCount|Int64|Number of users with failed devices across all apps.|
|appInstallFailures|[appInstallationFailure](../resources/intune_apps_appinstallationfailure.md) collection|Individual status of app installation failures.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appReportingOverviewStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.appReportingOverviewStatus",
  "id": "String (identifier)",
  "applicationCount": 1024,
  "failedApplicationCount": 1024,
  "appInstallFailures": [
    {
      "@odata.type": "microsoft.graph.appInstallationFailure",
      "applicationId": "String",
      "appName": "String",
      "platformId": 1024,
      "userFailures": 1024,
      "deviceFailures": 1024
    }
  ]
}
```



