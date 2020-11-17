---
title: "Update continuousAccessEvaluationPolicy"
description: "Update the properties of a continuousAccessEvaluationPolicy object."
author: "jerrysai"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update continuousAccessEvaluationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                    |
|:--------------------------------------|:---------------------------------------------------------------|
|Delegated (work or school account)     | Policy.Read.All, Policy.ReadWrite.ConditionalAccess and Application.Read.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Policy.Read.All, Policy.ReadWrite.ConditionalAccess and Application.Read.All |

> [!NOTE]
> This API has a [known issue](/graph/known-issues#permissions) related to permissions.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/continuousAccessEvaluationPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|groups|String collection|The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty.|
|isEnabled|Boolean| `true` to indicate whether continuous access evaluation should be performed; otherwise `false`. |
|users|String collection|The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty.|


## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_continuousaccessevaluationpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/continuousAccessEvaluationPolicy
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.continuousAccessEvaluationPolicy",
  "users": [ "88139f01-1f8d-4c06-ad74-a2544cee9aee" ],
  "groups": [ "9972fb3f-7a40-49f5-85f6-129d9dfbd47a", "ea178055-4713-4d9a-a06c-ff17466b7e77"]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-continuousaccessevaluationpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-continuousaccessevaluationpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-continuousaccessevaluationpolicy-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-continuousaccessevaluationpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```
