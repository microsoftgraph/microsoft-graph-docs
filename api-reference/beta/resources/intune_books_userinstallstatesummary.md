# userInstallStateSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the installation state summary for a user.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userInstallStateSummaries](../api/intune_books_userinstallstatesummary_list.md)|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) collection|List properties and relationships of the [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) objects.|
|[Get userInstallStateSummary](../api/intune_books_userinstallstatesummary_get.md)|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md)|Read properties and relationships of the [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) object.|
|[Create userInstallStateSummary](../api/intune_books_userinstallstatesummary_create.md)|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md)|Create a new [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) object.|
|[Delete userInstallStateSummary](../api/intune_books_userinstallstatesummary_delete.md)|None|Deletes a [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md).|
|[Update userInstallStateSummary](../api/intune_books_userinstallstatesummary_update.md)|[userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md)|Update the properties of a [userInstallStateSummary](../resources/intune_books_userinstallstatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userName|String|User name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceStates|[deviceInstallState](../resources/intune_books_deviceinstallstate.md) collection|The install state of the eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userInstallStateSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userInstallStateSummary",
  "id": "String (identifier)",
  "userName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```



