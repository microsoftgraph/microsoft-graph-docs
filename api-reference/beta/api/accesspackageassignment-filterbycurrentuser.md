---
title: "accessPackageAssignment: filterByCurrentUser"
description: "Retrieve a list of accesspackageassignment objects filtered on the signed-in user."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignment: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](../resources/entitlementmanagement-root.md), retrieve a list of [accessPackageAssignment](../resources/accesspackageassignment.md) objects filtered on the signed-in user.

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
GET /identityGovernance/entitlementManagement/accessPackageAssignments/filterByCurrentUser
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|[accessPackageAssignmentFilterByCurrentUserOptions](../resources/accesspackageassignment-accesspackageassignmentfilterbycurrentuseroptions.md)|The list of current user options that can be used to filter on the access package assignments list.|

- `target` is used to get the `accessPackageAssignment` objects where the signed-in user is the target. The resulting list includes all of the assignments, current and expired, for the caller across all catalogs and access packages.

- `createdBy` is used to get the `accessPackageAssignment` objects created by the signed-in user. The resulting list includes all of the assignments that the caller created for themselves or on behalf of others, such as in case of admin direct assignment, across all catalogs and access packages.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignment](../resources/accesspackageassignment.md) collection in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an `@odata.nextLink` property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the `@odata.nextLink` URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging.md).

## Examples

The following example gets the status of access package assignments targeted for the signed-in user.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignment_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignments/filterByCurrentUser(on='target')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignment-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackageassignment-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/accesspackageassignment-filterbycurrentuser-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackageassignment-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAssignment",
            "id": "5521fb4f-6a6c-410a-9191-461a65fd39d4",
            "catalogId": "34cfe9a8-88bc-4c82-b3d8-6b77d7035c33",
            "accessPackageId": "ca6992f8-e413-49a1-9619-c9819f4f73e0",
            "assignmentPolicyId": "7c6e6874-789e-4f11-b351-cc7b5883deef",
            "targetId": "2cb14f51-0108-41d8-89da-cd0e05e2c988",
            "assignmentStatus": "Delivered",
            "assignmentState": "Delivered",
            "isExtended": false,
            "expiredDateTime": null,
            "schedule": {
                "startDateTime": "2021-01-19T20:02:36.013Z",
                "recurrence": null,
                "expiration": {
                    "endDateTime": "2022-01-19T20:02:36.013Z",
                    "duration": null,
                    "type": "afterDateTime"
                }
            }
        }
  ]
}

```

