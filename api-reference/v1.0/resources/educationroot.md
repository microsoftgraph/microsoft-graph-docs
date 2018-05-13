# educationRoot resource type

The `/education` namespace exposes functionality that is specific to the education sector. 
Some objects in the `/education` namespace can be found in other parts of Microsoft Graph (for example, [users](user.md)). The education namespace provides education-specific properties and features on these objects.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create educationClass](../api/educationroot_post_classes.md) |[educationClass](educationclass.md)| Create a new **educationClass** by posting to the classes collection.|
|[List classes](../api/educationroot_list_classes.md) |[educationClass](educationclass.md) collection| Get an **educationClass** object collection.|
|[Create educationSchool](../api/educationroot_post_schools.md) |[educationSchool](educationschool.md)| Create a new **educationSchool** by posting to the schools collection.|
|[List schools](../api/educationroot_list_schools.md) |[educationSchool](educationschool.md) collection| Get an **educationSchool** object collection.|
|[Create educationUser](../api/educationroot_post_users.md) |[educationUser](educationuser.md)| Create a new **educationUser** by posting to the users collection.|
|[List users](../api/educationroot_list_users.md) |[educationUser](educationuser.md) collection| Get an **educationUser** object collection.|

## Properties
None.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|classes|[educationClass](educationclass.md) collection| Read-only. Nullable.|
|me|[educationUser](educationuser.md)| Read-only. Nullable.|
|schools|[educationSchool](educationschool.md) collection| Read-only. Nullable.|
|users|[educationUser](educationuser.md) collection| Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.educationRoot"
}-->

```json
{
}
```

<!-- {
  "blockType": "request",
  "name": "get_education"
}-->
```http
GET https://graph.microsoft.com/v1.0/education
```

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationRoot"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationRoot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->