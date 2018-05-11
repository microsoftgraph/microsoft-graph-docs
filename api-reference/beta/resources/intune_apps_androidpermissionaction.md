# androidPermissionAction resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Mapping between an Android app permission and the action Android should take when that permission is requested.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|permission|String|Android permission string, defined in the official Android documentation.  Example 'android.permission.READ_CONTACTS'.|
|action|[androidPermissionActionType](../resources/intune_apps_androidpermissionactiontype.md)|Type of Android permission action. Possible values are: `prompt`, `autoGrant`, `autoDeny`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidPermissionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidPermissionAction",
  "permission": "String",
  "action": "String"
}
```



