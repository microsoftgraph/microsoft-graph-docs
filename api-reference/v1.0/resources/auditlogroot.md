---
title: "auditLogRoot resource type"
description: "Contains different types of audit logs. This resources returns a singleton auditLog resource. It doesn't contain any usable properties."
author: "dhanyahk"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# auditLogRoot resource type

Namespace: microsoft.graph

Contains different types of audit logs. This resources returns a singleton auditLog resource. It doesn't contain any usable properties.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List directoryAudits](../api/directoryaudit-list.md) | [directoryAudit](directoryaudit.md) |List the directory audit items in the collection and their properties.|
|[Get directoryAudit](../api/directoryaudit-get.md) | [directoryAudit](directoryaudit.md) |Get a specific directory audit item and its properties.|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties

None.

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|directoryAudits|[directoryAudit](directoryaudit.md) collection| Read-only. Nullable.|
|signIns|[signIn](signin.md) collection| Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.auditLogRoot"
}-->

```json
{
}
```

## Example


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_auditLogs"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/auditLogs
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-auditlogs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-auditlogs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-auditlogs-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-auditlogs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.auditLogRoot"
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
  "description": "auditLogRoot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

