---
title: "List userAttributeAssignments"
description: "Get the identityUserFlowAttributeAssignment resources from the userAttributeAssignments navigation property in a b2cIdentityUserFlow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List userAttributeAssignments

Namespace: microsoft.graph

Get the identityUserFlowAttributeAssignment resources from the userAttributeAssignments navigation property in a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identity/b2cUserFlows/{id}/userAttributeAssignments
```

## Optional query parameters

This method supports the `$select` and `$expand` parameters to get the details of the user flow attribute. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) objects in the response body.

## Examples

### Example 1: List userAttributeAssignments in a b2cIdentityUserFlow

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityuserflowattributeassignment_1"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/b2cUserFlows/{id}/userAttributeAssignments?
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityuserflowattributeassignment-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityuserflowattributeassignment-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-identityuserflowattributeassignment-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityuserflowattributeassignment-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityUserFlowAttributeAssignment)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.identityUserFlowAttributeAssignment",
    "value": [
        {
            "id": "City",
            "isOptional": false,
            "requiresVerification": false,
            "userInputType": "RadioSingleSelect",
            "displayName": "City",
            "userAttributeValues": [
                {
                    "name": "S",
                    "value": "1",
                    "isDefault": true
                }
            ]
        },
        {
            "id": "extension_guid_shoeSize",
            "isOptional": false,
            "requiresVerification": false,
            "userInputType": "TextBox",
            "displayName": "Shoe size",
            "userFlowId": "B2C_1_Consumer",
            "userAttributeValues": []
        }
    ]
}
```

### Example 2: List userAttributeAssignments in a b2cIdentityUserFlow and expand userAttribute

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityuserflowattributeassignment_expand_1"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/b2cUserFlows/{id}/userAttributeAssignments?$expand=userAttribute
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityuserflowattributeassignment-expand-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityuserflowattributeassignment-expand-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-identityuserflowattributeassignment-expand-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityuserflowattributeassignment-expand-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityUserFlowAttributeAssignment)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.identityUserFlowAttributeAssignment",
    "value": [
        {
            "id": "City",
            "isOptional": false,
            "requiresVerification": false,
            "userInputType": "RadioSingleSelect",
            "displayName": "City",
            "userAttributeValues": [
                {
                    "name": "S",
                    "value": "1",
                    "isDefault": true
                }
            ],
            "userAttribute": {
                "@odata.type": "#Microsoft.Graph.BuiltInUserFlowAttribute",
                "id": "City",
                "displayName": "City",
                "description": "your city",
                "userFlowAttributeType": "builtIn",
                "dataType": "string"
            }
        },
        {
            "id": "extension_guid_shoeSize",
            "isOptional": false,
            "requiresVerification": false,
            "userInputType": "TextBox",
            "displayName": "Shoe size",
            "userFlowId": "B2C_1_Consumer",
            "userAttributeValues": [],
            "userAttribute": {
                "@odata.type": "#Microsoft.Graph.CustomUserFlowAttribute",
                "id": "extension_guid_shoeSize",
                "displayName": "Shoe size",
                "description": "Your shoe size",
                "userFlowAttributeType": "custom",
                "dataType": "string"
            }
        }
    ]
}
```
