---
title: "Update educationClass"
description: "Update the properties of a class."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Update a Class

Namespace: microsoft.graph

Update the properties of an [educationClass](../resources/educationclass.md) object.

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
PATCH /education/classes/{educationClassId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [educationClass](../resources/educationclass.md) object.

The following table shows the properties that are required when you update the [educationClass](../resources/educationclass.md).

| Property             | Type                                               | Description                                                        |
| :------------------- | :------------------------------------------------- | :----------------------------------------------------------------- |
| displayName          | String                                             | Name of the class.                                                 |
| mailNickname         | String                                             | Mail name for sending email to all members, if this is enabled.    |
| description          | String                                             | Description of the class.                                          |
| createdBy            | [identitySet](../resources/identityset.md)         | Entity who created the class                                       |
| classCode            | String                                             | Class code used by the school to identify the class.               |
| externalId           | String                                             | ID of the class from the syncing system.                           |
| externalSource       | educationExternalSource                            | How this class was created. Possible values are: `sis`, `manual`   |
| externalSourceDetail | String                                             | The name of the external source this resources was generated from. |
| grade                | String                                             | Grade level of the class.                                          |
| term                 | [educationTerm](../resources/educationterm.md)     | Term for this class.                                               |

## Response

If successful, this method returns a `200 OK` response code and an updated [educationClass](../resources/educationclass.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_educationclass"
}
-->

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/{educationClassId}
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

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationClass"
}
-->

```http
HTTP/1.1 200 OK
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
