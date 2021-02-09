---
title: "educationRoot resource type"
description: "The `/education` namespace exposes functionality that is specific to the education sector. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationRoot resource type

Namespace: microsoft.graph

The `/education` namespace exposes functionality that is specific to the education sector. 
Some objects in the `/education` namespace can be found in other parts of Microsoft Graph (for example, [users](user.md)). The education namespace provides education-specific properties and features on these objects.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create educationClass](../api/educationroot-post-classes.md) |[educationClass](educationclass.md)| Create a new **educationClass** by posting to the classes collection.|
|[List classes](../api/educationroot-list-classes.md) |[educationClass](educationclass.md) collection| Get an **educationClass** object collection.|
|[Create educationSchool](../api/educationroot-post-schools.md) |[educationSchool](educationschool.md)| Create a new **educationSchool** by posting to the schools collection.|
|[List schools](../api/educationroot-list-schools.md) |[educationSchool](educationschool.md) collection| Get an **educationSchool** object collection.|
|[Create educationUser](../api/educationroot-post-users.md) |[educationUser](educationuser.md)| Create a new **educationUser** by posting to the users collection.|
|[List users](../api/educationroot-list-users.md) |[educationUser](educationuser.md) collection| Get an **educationUser** object collection.|

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


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_education"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-education-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-education-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-education-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-education-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


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
  "tocPath": "",
  "suppressions": [
  ]
}-->

