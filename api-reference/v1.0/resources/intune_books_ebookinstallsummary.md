# eBookInstallSummary resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the installation summary of a book for a device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get eBookInstallSummary](../api/intune_books_ebookinstallsummary_get.md)|[eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md)|Read properties and relationships of the [eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md) object.|
|[Update eBookInstallSummary](../api/intune_books_ebookinstallsummary_update.md)|[eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md)|Update the properties of a [eBookInstallSummary](../resources/intune_books_ebookinstallsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|installedDeviceCount|Int32|Number of Devices that have successfully installed this book.|
|failedDeviceCount|Int32|Number of Devices that have failed to install this book.|
|notInstalledDeviceCount|Int32|Number of Devices that does not have this book installed.|
|installedUserCount|Int32|Number of Users whose devices have all succeeded to install this book.|
|failedUserCount|Int32|Number of Users that have 1 or more device that failed to install this book.|
|notInstalledUserCount|Int32|Number of Users that did not install this book.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.eBookInstallSummary"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.eBookInstallSummary",
  "id": "String (identifier)",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024,
  "installedUserCount": 1024,
  "failedUserCount": 1024,
  "notInstalledUserCount": 1024
}
```



