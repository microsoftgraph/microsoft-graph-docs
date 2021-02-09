---
title: "Get educationSynchronizationErrors"
description: "Get the errors generated during validation and/or during a sync of a specific school data synchronization profile in the tenant. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Get educationSynchronizationErrors

Namespace: microsoft.graph

Get the errors generated during validation and/or during a sync of a specific school data [synchronization profile](../resources/educationsynchronizationprofile.md) in the tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                       | Permissions (from least to most privileged)                 |
| :------------------------------------ | :---------------------------------------------------------- |
| Delegated (work or school account)    | EduAdministration.Read, EduAdministration.ReadWrite         |
| Delegated (personal Microsoft account | Not supported.                                              |
| Application                           | EduAdministration.Read.All, EduAdministration.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /synchronizationProfiles/{id}/errors
```

## Optional query parameters

This method supports the following [OData Query Parameters](/graph/query-parameters) to help customize the response: $filter, $orderby, $top, $skip, and \$count.

## Request headers

| Name          | Type   | Description               |
| :------------ | :----- | :------------------------ |
| Authorization | string | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [synchronization error](../resources/educationsynchronizationerror.md) objects in the response body.

## Example

##### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_educationSynchronizationProfile_error"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/synchronizationProfiles/{id}/errors
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationsynchronizationprofile-error-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationsynchronizationprofile-error-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-educationsynchronizationprofile-error-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationsynchronizationprofile-error-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.educationSynchronizationError",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1568

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/synchronizationProfiles/{id}/errors",
  "@odata.count": 14,
  "value": [
    {
      "id": "92797B7C-02C3-4326-8ACC-E81C78753831",
      "entryType": "Student",
      "errorCode": "UnsynchronizableChange",
      "errorMessage": "Student cannot be updated as no matching entry in Active Directory was found for Student.  Verify the identity matching criteria for the profile.",
      "joiningValue": "richard.2wilson@testschool.edu",
      "recordedDateTime": "2017-07-05T00:52:45Z",
      "reportableIdentifier": "richard.2wilson"
    },
    {
      "id": "94C1EB0E-8339-4EF4-8CB2-EB15C6228CE1",
      "entryType": "Teacher",
      "errorCode": "UnsynchronizableChange",
      "errorMessage": "Teacher cannot be updated as no matching entry in Active Directory was found for Teacher.  Verify the identity matching criteria for the profile.",
      "joiningValue": "alberto2.dorsey@testschool.edu",
      "recordedDateTime": "2017-07-05T00:52:57Z",
      "reportableIdentifier": "alberto2.dorsey"
    },
    {
      "id": "98A82052-7716-49E9-90CC-C6FF406FC8E5",
      "entryType": "Teacher",
      "errorCode": "UnsynchronizableChange",
      "errorMessage": "Teacher cannot be updated as no matching entry in Active Directory was found for Teacher.  Verify the identity matching criteria for the profile.",
      "joiningValue": "madeline2.bullock@testschool.edu",
      "recordedDateTime": "2017-07-05T00:52:57Z",
      "reportableIdentifier": "madeline2.bullock"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Example",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
