# deviceAppManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](../api/intune_apps_deviceappmanagement_get.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_apps_deviceappmanagement_update.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[List mobileApps](../api/intune_apps_deviceappmanagement_list_mobileapp.md)|[mobileApp](../resources/intune_apps_mobileapp.md) collection|Get the mobileApps from the mobileApps navigation property.|
|[Create mobileApp](../api/intune_apps_deviceappmanagement_create_mobileapp.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Create a new [mobileApp](../resources/intune_apps_mobileapp.md) by posting to the mobileApps collection.|
|[List mobileAppCategories](../api/intune_apps_deviceappmanagement_list_mobileappcategory.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|Get the mobileAppCategories from the mobileAppCategories navigation property.|
|[Create mobileAppCategory](../api/intune_apps_deviceappmanagement_create_mobileappcategory.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md)|Create a new [mobileAppCategory](../resources/intune_apps_mobileappcategory.md) by posting to the mobileAppCategories collection.|
|[Get appReportingOverviewStatus](../api/intune_apps_deviceappmanagement_get_appreportingoverviewstatus.md)|[appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md)|Get the [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) from the appReportingOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileApps|[mobileApp](../resources/intune_apps_mobileapp.md) collection|The mobile apps.|
|mobileAppCategories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The mobile app categories.|
|appReportingOverview|[appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md)|The mobile app reporting.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```



