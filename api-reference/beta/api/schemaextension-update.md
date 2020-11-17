---
title: "Update schemaExtension"
description: "Update properties in the definition of the specified schemaExtension."
localization_priority: Normal
author: "dkershaw10"
doc_type: apiPageType
ms.prod: "extensions"
---

# Update schemaExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties in the definition of the specified [schemaExtension](../resources/schemaextension.md).

The update applies to all the resources that are included in the **targetTypes** property of the extension. These resources are among the 
[supporting resource types](/graph/extensibility-overview#supported-resources).

Only the app that created a schema extension (owner app) can make additive updates to the extension when the extension is in the **InDevelopment** or **Available** status. 
That means the app cannot remove custom properties or target resource types from the definition. The app can, however, change the description of the extension.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> [!NOTE]
> Additionally for the delegated flow, the signed-in user can only update schemaExtensions they own (where the **owner** property of the schemaExtension is the `appId` of an application the signed-in user owns).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /schemaExtensions/{id}
```

## Optional request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-Type   | application/json |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|properties|[extensionSchemaProperty](../resources/extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition. Only additive changes are permitted. |
|status|String|The lifecycle state of the schema extension. The initial state upon creation is **InDevelopment**. Possible states transitions are from **InDevelopment** to **Available** and **Available** to **Deprecated**.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to.  Only additive changes are permitted.|

## Response

If successful, this method returns a `204 No Content` response code.

## Example

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_schemaextension"
}-->
```http
PATCH https://graph.microsoft.com/beta/schemaExtensions/{id}
Content-type: application/json
Content-length: 201

{
  "properties": [
    {
      "name":"new-name-value",
      "type":"new-type-value"
    },
    {
      "name":"additional-name-value",
      "type":"additional-type-value"
    }
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-schemaextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-schemaextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-schemaextension-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-schemaextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->

```http
HTTP/1.1 204 No Content
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update schemaextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


