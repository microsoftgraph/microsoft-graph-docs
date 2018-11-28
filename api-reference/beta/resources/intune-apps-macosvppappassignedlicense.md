# macOsVppAppAssignedLicense resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

MacOS Volume Purchase Program license assignment. This class does not support Create, Delete, or Update.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOsVppAppAssignedLicenses](../api/intune-apps-macosvppappassignedlicense-list.md)|[macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md) collection|List properties and relationships of the [macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md) objects.|
|[Get macOsVppAppAssignedLicense](../api/intune-apps-macosvppappassignedlicense-get.md)|[macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md)|Read properties and relationships of the [macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md) object.|
|[Create macOsVppAppAssignedLicense](../api/intune-apps-macosvppappassignedlicense-create.md)|[macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md)|Create a new [macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md) object.|
|[Delete macOsVppAppAssignedLicense](../api/intune-apps-macosvppappassignedlicense-delete.md)|None|Deletes a [macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md).|
|[Update macOsVppAppAssignedLicense](../api/intune-apps-macosvppappassignedlicense-update.md)|[macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md)|Update the properties of a [macOsVppAppAssignedLicense](../resources/intune-apps-macosvppappassignedlicense.md) object.|

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
  "@odata.type": "microsoft.graph.macOsVppAppAssignedLicense"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOsVppAppAssignedLicense",
  "id": "String (identifier)",
  "userEmailAddress": "String",
  "userId": "String",
  "userName": "String",
  "userPrincipalName": "String"
}
```











