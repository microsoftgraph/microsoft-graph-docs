# managedMobileApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The identifier for the deployment an app.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedMobileApps](../api/intune-mam-managedmobileapp-list.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md) collection|List properties and relationships of the [managedMobileApp](../resources/intune-mam-managedmobileapp.md) objects.|
|[Get managedMobileApp](../api/intune-mam-managedmobileapp-get.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Read properties and relationships of the [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|
|[Create managedMobileApp](../api/intune-mam-managedmobileapp-create.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Create a new [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|
|[Delete managedMobileApp](../api/intune-mam-managedmobileapp-delete.md)|None|Deletes a [managedMobileApp](../resources/intune-mam-managedmobileapp.md).|
|[Update managedMobileApp](../api/intune-mam-managedmobileapp-update.md)|[managedMobileApp](../resources/intune-mam-managedmobileapp.md)|Update the properties of a [managedMobileApp](../resources/intune-mam-managedmobileapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mobileAppIdentifier|[mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)|The identifier for an app with it's operating system type.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedMobileApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedMobileApp",
  "mobileAppIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "id": "String (identifier)",
  "version": "String"
}
```





