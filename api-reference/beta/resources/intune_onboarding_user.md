# user resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List users](../api/intune_onboarding_user_list.md)|[user](../resources/intune_onboarding_user.md) collection|List properties and relationships of the [user](../resources/intune_onboarding_user.md) objects.|
|[Get user](../api/intune_onboarding_user_get.md)|[user](../resources/intune_onboarding_user.md)|Read properties and relationships of the [user](../resources/intune_onboarding_user.md) object.|
|[Create user](../api/intune_onboarding_user_create.md)|[user](../resources/intune_onboarding_user.md)|Create a new [user](../resources/intune_onboarding_user.md) object.|
|[Delete user](../api/intune_onboarding_user_delete.md)|None|Deletes a [user](../resources/intune_onboarding_user.md).|
|[Update user](../api/intune_onboarding_user_update.md)|[user](../resources/intune_onboarding_user.md)|Update the properties of a [user](../resources/intune_onboarding_user.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the user.|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)",
  "deviceEnrollmentLimit": 1024
}
```



