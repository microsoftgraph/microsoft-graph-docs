---
title: "accessPackage: filterByCurrentUser"
description: "Retrieve a list of accesspackage objects filtered on the signed-in user."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackage: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](../resources/entitlementmanagement-root.md), retrieve a list of [accessPackage](../resources/accesspackage.md) objects filtered on the signed-in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackages/filterByCurrentUser
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|[accessPackageFilterByCurrentUserOptions](../resources/accesspackage-accesspackagefilterbycurrentuseroptions.md)|The list of current user options that can be used to filter on the access packages list.|

- `allowedRequestor` is used to get the `accessPackage` objects for which the signed-in user is allowed to submit access requests. The resulting list includes all access packages that can be requested by the caller across all catalogs.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackage](../resources/accesspackage.md) collection in the response body.

## Examples
The following example gets the access packages that can be requested by the signed-in user.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequest_filterByCurrentUser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/filterByCurrentUser(on='allowedRequestor')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignmentrequest-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackageassignmentrequest-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/accesspackageassignmentrequest-filterbycurrentuser-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackageassignmentrequest-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.accessPackage",
            "id": "d378b3b7-b42a-445a-8780-2841194f777e",
            "catalogId": "eb0f5e12-484d-4545-8ae1-fb1dfc28ab3c",
            "displayName": "Sales resources",
            "description": "Resources needed by the Sales department.",
            "isHidden": false,
            "isRoleScopesVisible": false,
            "createdBy": "TestGA@example.com",
            "createdDateTime": "2021-01-26T22:30:57.37Z",
            "modifiedBy": "TestGA@example.com",
            "modifiedDateTime": "2021-01-26T22:30:57.37Z"
        }
    ]
}
```

