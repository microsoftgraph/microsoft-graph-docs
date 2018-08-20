# mobileAppContent resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains content properties for a specific app version. Each mobileAppContent can have multiple mobileAppContentFile.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppContents](../api/intune_apps_mobileappcontent_list.md)|[mobileAppContent](../resources/intune_apps_mobileappcontent.md) collection|List properties and relationships of the [mobileAppContent](../resources/intune_apps_mobileappcontent.md) objects.|
|[Get mobileAppContent](../api/intune_apps_mobileappcontent_get.md)|[mobileAppContent](../resources/intune_apps_mobileappcontent.md)|Read properties and relationships of the [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object.|
|[Create mobileAppContent](../api/intune_apps_mobileappcontent_create.md)|[mobileAppContent](../resources/intune_apps_mobileappcontent.md)|Create a new [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object.|
|[Delete mobileAppContent](../api/intune_apps_mobileappcontent_delete.md)|None|Deletes a [mobileAppContent](../resources/intune_apps_mobileappcontent.md).|
|[Update mobileAppContent](../api/intune_apps_mobileappcontent_update.md)|[mobileAppContent](../resources/intune_apps_mobileappcontent.md)|Update the properties of a [mobileAppContent](../resources/intune_apps_mobileappcontent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The app content version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|files|[mobileAppContentFile](../resources/intune_apps_mobileappcontentfile.md) collection|The list of files for this app content version.|

## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.mobileAppContent"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppContent",
  "id": "String (identifier)"
}
```



