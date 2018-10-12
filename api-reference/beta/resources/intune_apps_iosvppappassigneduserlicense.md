# iosVppAppAssignedUserLicense resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

iOS Volume Purchase Program user license assignment. This class does not support Create, Delete, or Update.

Inherits from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppAppAssignedUserLicenses](../api/intune_apps_iosvppappassigneduserlicense_list.md)|[iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md) collection|List properties and relationships of the [iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md) objects.|
|[Get iosVppAppAssignedUserLicense](../api/intune_apps_iosvppappassigneduserlicense_get.md)|[iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md)|Read properties and relationships of the [iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md) object.|
|[Create iosVppAppAssignedUserLicense](../api/intune_apps_iosvppappassigneduserlicense_create.md)|[iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md)|Create a new [iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md) object.|
|[Delete iosVppAppAssignedUserLicense](../api/intune_apps_iosvppappassigneduserlicense_delete.md)|None|Deletes a [iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md).|
|[Update iosVppAppAssignedUserLicense](../api/intune_apps_iosvppappassigneduserlicense_update.md)|[iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md)|Update the properties of a [iosVppAppAssignedUserLicense](../resources/intune_apps_iosvppappassigneduserlicense.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userEmailAddress|String|The user email address. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userId|String|The user ID. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userName|String|The user name. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|
|userPrincipalName|String|The user principal name. Inherited from [iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md)|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppAppAssignedUserLicense"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppAppAssignedUserLicense",
  "id": "String (identifier)",
  "userEmailAddress": "String",
  "userId": "String",
  "userName": "String",
  "userPrincipalName": "String"
}
```



