---
title: Create taskDefinition
description: Create a new task definition.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Create taskDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new task definition.

For details about how to use this API to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintTaskDefinition.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /print/taskDefinitions
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-type  | application/json. Required.|

## Request body
In the request body, supply a JSON representation of [printTaskDefinition](../resources/printtaskdefinition.md) object.

The [printTaskDefinition](../resources/printtaskdefinition.md)'s **id** and **createdBy.appId** properties are set automatically upon resource creation.

## Response
If successful, this method returns a `201 Created` response code and a [printTaskDefinition](../resources/printtaskdefinition.md) object in the response body.
## Example
### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "print_create_taskdefinition"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/print/taskDefinitions
Content-type: application/json
Content-length: 122

{
  "displayName": "Test TaskDefinitionName",
  "createdBy": {
    "displayName": "Requesting App Display Name"
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/print-create-taskdefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/print-create-taskdefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/print-create-taskdefinition-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/print-create-taskdefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printTaskDefinition"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 322

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/taskDefinitions/$entity",
  "id": "fab143fd-ee61-4358-8558-2c7dee953982",
  "displayName": "Test TaskDefinitionName",
  "createdBy": {
    "appId": "815f204f-c791-4ee6-9098-614ecdb003f6",
    "displayName": "Requesting App Display Name"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create taskDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


