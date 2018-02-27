# educationSchool resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A school. The **educationSchool** resource currently corresponds to an [administrativeUnit](administrativeunit.md) resource and shares the same ID.  

This resource is a subtype of [educationOrganization](educationorganization.md).




## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/educationschool_get.md) | [educationSchool](educationschool.md) |Read properties and relationships of an **educationSchool** object.|
|[Add class](../api/educationschool_post_classes.md) |[educationClass](educationclass.md)| Add a new **educationClass** for the school by posting to the classes navigation property.|
|[List classes](../api/educationschool_list_classes.md) |[educationClass](educationclass.md) collection| Get the **educationClass** object collection.|
|[Remove class](../api/educationschool_delete_classes.md) |[educationClass](educationclass.md)| Remove an **educationClass** from the school through the classes navigation property.|
|[Add user](../api/educationschool_post_users.md) |[educationUser](educationuser.md)| Add a new **educationUser** for the school by posting to the **users** navigation property.|
|[List users](../api/educationschool_list_users.md) |[educationUser](educationuser.md) collection| Get the **educationUser** object collection.|
|[Remove user](../api/educationschool_delete_users.md) |[educationUser](educationuser.md)| Remove an **educationUser** from the school through the **users** navigation property.|
|[Get administrativeUnit](../api/educationschool_get_administrativeunit.md) |[administrativeUnit](administrativeunit.md)| Get the **administrativeUnit** that corresponds to this **educationSchool**.|
|[Update](../api/educationschool_update.md) | [educationSchool](educationschool.md)	|Update an **educationSchool** object. |
|[Delete](../api/educationschool_delete.md) | None |Delete an **educationSchool** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|GUID of this school.|
|displayName| String| Display name of the school.| 
|description| String | Description of the school.| 
|status| string| Read-Only. Possible values are: `inactive`, `active`, `expired`, `deleteable`.|
|externalSource| string| Read-Only.  Possible values are: `sis`, `manual`, `unknownFutureValue`.|
|principalEmail| String| Email address of the principal.|
|principalName| String | Name of the principal.|
|externalPrincipalId| String | ID of principal in syncing system. |
|highestGrade|String| Highest grade taught. |
|lowestGrade|String| Lowest grade taught. |
|schoolNumber|String| School Number.|
|externalId|String| ID of school in syncing system. |
|phone|String| Phone number of school. |
|fax|String| Fax number of school. |
|address|[physicalAddress](physicaladdress.md)| Address of the school.|
|createdBy|[identitySet](identityset.md)|Entity who created the school.|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|classes|[educationClass](educationclass.md) collection| Classes taught at the school. Nullable.|
|users|[educationUser](educationuser.md) collection| Users in the school. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSchool"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "externalSource": "String",
  "principalEmail": "String",
  "principalName": "String",
  "externalPrincipalId": "String",
  "highestGrade": "String",
  "lowestGrade": "String",
  "schoolNumber": "String",
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "externalId": "String",
  "fax": "String",
  "phone": "String",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSchool resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
