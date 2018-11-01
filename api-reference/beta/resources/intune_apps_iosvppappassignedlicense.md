---
apiDocType: resourcePageType
---
# iosVppAppAssignedLicense resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

iOS Volume Purchase Program license assignment. This class does not support Create, Delete, or Update.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppAppAssignedLicenses](../api/intune_apps_iosvppappassignedlicense_list.md)|[iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) collection|List properties and relationships of the [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) objects.|
|[Get iosVppAppAssignedLicense](../api/intune_apps_iosvppappassignedlicense_get.md)|[iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|Read properties and relationships of the [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) object.|
|[Create iosVppAppAssignedLicense](../api/intune_apps_iosvppappassignedlicense_create.md)|[iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|Create a new [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) object.|
|[Delete iosVppAppAssignedLicense](../api/intune_apps_iosvppappassignedlicense_delete.md)|None|Deletes a [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md).|
|[Update iosVppAppAssignedLicense](../api/intune_apps_iosvppappassignedlicense_update.md)|[iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|Update the properties of a [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userEmailAddress|String|The user email address.|
|userId|String|The user ID.|
|userName|String|The user name.|
|userPrincipalName|String|The user principal name.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppAppAssignedLicense"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppAppAssignedLicense",
  "id": "String (identifier)",
  "userEmailAddress": "String",
  "userId": "String",
  "userName": "String",
  "userPrincipalName": "String"
}
```





