# targetResource resource type
Indicates a collection of  target resource types associated with the audit activity. Each target resource type will inherit the properties outlined below from this resource.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Indicates the display name of the resources outlined under Target Resource Types below.|
|id|String|Indicates the Unique Id of the resource (For example: UserId, AppId, RoleId.).|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Indicates name, old value and new value of each attribute that changed. This is applicable for any "Update" activities|

### Target Resource Types

The target resource type varies according to the underlying resource:

|Resource Name| Reference|
|-------------|----------|
Device|[targetResourceDevice](targetresourcedevice.md)
Directory|[targetResourceDirectory](targetresourcedirectory.md]
Group|[targetResourceGroup](targetresourcegroup.md)
Policy|[targetResourcePolicy](targetresourcepolicy.md)
Role|[targetResourceRole](targetresourcerole.md)
Service Principal|[targetResourceServicePrincipal](targetresourceserviceprincipal.md)
User|[targetResourceUser](targetresourceuser.md)
Other|[targetResourceOther](targetresourceother.md)

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResource"
}-->

```json
{
  "displayName": "String",
  "id": "String",
  "modifiedProperties": [{"@odata.type": "microsoft.graph.modifiedProperty"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->