---
title: "Create program"
description: "In the Azure AD access reviews feature, create a new program object."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "markwahl-msft"
---

# Create program

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](../resources/accessreviews-root.md) feature, create a new [program](../resources/program.md) object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | ProgramControl.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

The signed in user must also be in a directory role that permits them to create a program.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /programs
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
In the request body, supply a JSON representation of a [program](../resources/program.md) object.

The following table shows the properties that are required when you create a program.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `displayName`               |`String`                              |  The name of the program.                   |
| `description`               |`String`                              |  The description of the program.           |


## Response
If successful, this method returns a `201, Created` response code and [program](../resources/program.md) object in the response body.

## Example
##### Request
In the request body, supply a JSON representation of the [program](../resources/program.md) object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_program_from_programs"
}-->
```http
POST https://graph.microsoft.com/beta/programs
Content-type: application/json

{
    "displayName": "testprogram3",
    "description": "test description"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-program-from-programs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-program-from-programs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-program-from-programs-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-program-from-programs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.program"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
    "displayName": "testprogram3",
    "description": "test description"
}
```

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List programs](program-list.md) |	[program](../resources/program.md) collection|	Get a collection of all the programs.|
|[List programControls of a program](program-listcontrols.md) |		[programControl](../resources/programcontrol.md) collection|	Get a collection of the controls of a program.|
|[Update program](program-update.md) |	[program](../resources/program.md)|	Update a program.|
|[Create programControl](programcontrol-create.md) |		[programControl](../resources/programcontrol.md)	|	Add a programControl to a program.|

<!--
{
  "type": "#page.annotation",
  "description": "Create program",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


