---
title: "Update a connectedOrganization object"
description: "Update a connectedOrganization object."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update connectedOrganization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [connectedOrganization](../resources/connectedorganization.md) object to change one or more of its properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/connectedOrganizations/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [connectedOrganization](../resources/connectedorganization.md) object.

The following table shows the properties that are required when you update the [connectedOrganization](../resources/connectedorganization.md).

|Property|Type|Description|
|:---|:---|:---|
| displayName  |String | The connected organization name.  |
| description  |String | The connected organization description. |
| state        |connectedOrganizationState|The state of a connected organization defines whether assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects` are applicable or not. Possible values are: `configured`, `proposed`.|

## Response

If successful, this method returns a `204 Accepted` response code and a [connectedOrganization](../resources/connectedorganization.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_connectedorganization"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/connectedOrganizations/{id}
Content-Type: application/json
Content-length: 100

{
  "displayName":"Connected organization new name",
  "description":"Connected organization new description",
  "state":"configured"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-connectedorganization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-connectedorganization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-connectedorganization-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-connectedorganization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connectedOrganization"
}
-->
``` http
HTTP/1.1 204 Accepted
Content-type: application/json

{
  "id": "006111db-0810-4494-a6df-904d368bd81b",
  "displayName":"Connected organization new name",
  "description":"Connected organization new description",
  "state":"configured"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update connectedOrganization",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


