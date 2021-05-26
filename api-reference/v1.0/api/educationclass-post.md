---
title: "Create educationClass"
description: "Create a new educationClass object."
author: "mlafleur"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Create educationClass

Namespace: microsoft.graph

Create a new [educationClass](../resources/educationclass.md) object.

> [!NOTE]
> This will also create a universal group. When you use this API to create a class, it will add special properties to the group, which will add features such as assignments and special handling within Microsoft Teams when teams are created using the group. Please note that this API only creates the universal group and does not create a team. Microsoft Teams provides a user interface for teachers to create teams for their own classes using the groups created by this API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.ReadWrite.All                     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /education/classes
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [educationClass](../resources/educationclass.md) object.

The following table shows the properties that are required when you create the [educationClass](../resources/educationclass.md).

| Property             | Type                                           | Description                                                        |
| :------------------- | :--------------------------------------------- | :----------------------------------------------------------------- |
| id                   | String                                         | Object identifier. Inherited from [entity](../resources/entity.md) |
| displayName          | String                                         | Name of the class.                                                 |
| mailNickname         | String                                         | Mail name for sending email to all members, if this is enabled.    |
| description          | String                                         | Description of the class.                                          |
| createdBy            | [identitySet](../resources/identityset.md)     | Entity who created the class                                       |
| classCode            | String                                         | Class code used by the school to identify the class.               |
| externalName         | String                                         | Name of the class in the syncing system.                           |
| externalId           | String                                         | ID of the class from the syncing system.                           |
| externalSource       | educationExternalSource                        | How this class was created. Possible values are: `sis`, `manual`   |
| externalSourceDetail | String                                         | The name of the external source this resources was generated from. |
| grade                | String                                         | Grade level of the class.                                          |
| term                 | [educationTerm](../resources/educationterm.md) | Term for this class.                                               |

## Response

If successful, this method returns a `201 Created` response code and an [educationClass](../resources/educationclass.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationclass_from_"
}
-->

```http
POST https://graph.microsoft.com/v1.0/education/classes
Content-Type: application/json
Content-length: 533

{
  "@odata.type": "#microsoft.graph.educationClass",
  "displayName": "String",
  "mailNickname": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "classCode": "String",
  "externalName": "String",
  "externalId": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "grade": "String",
  "term": {
    "@odata.type": "microsoft.graph.educationTerm"
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationclass-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationclass-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-educationclass-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationclass-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationClass"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationClass",
  "id": "64ef8ce5-8ce5-64ef-e58c-ef64e58cef64",
  "displayName": "String",
  "mailNickname": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "classCode": "String",
  "externalName": "String",
  "externalId": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "grade": "String",
  "term": {
    "@odata.type": "microsoft.graph.educationTerm"
  }
}
```
