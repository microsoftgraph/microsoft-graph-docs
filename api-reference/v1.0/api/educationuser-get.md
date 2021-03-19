---
title: "Get educationUser"
description: "Read the properties and relationships of an educationUser object."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Get an Edu User

Namespace: microsoft.graph

Read the properties and relationships of an [educationUser](../resources/educationuser.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | EduRoster.ReadBasic                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.Read.All, EduRoster.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /education/me
GET /education/users/{educationUserId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationUser](../resources/educationuser.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_educationuser"
}
-->

```http
GET https://graph.microsoft.com/v1.0/education/me
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationUser"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.educationUser",
    "id": "90eedea1-dea1-90ee-a1de-ee90a1deee90",
    "primaryRole": "String",
    "middleName": "String",
    "externalSource": "String",
    "externalSourceDetail": "String",
    "residenceAddress": {
      "@odata.type": "microsoft.graph.physicalAddress"
    },
    "mailingAddress": {
      "@odata.type": "microsoft.graph.physicalAddress"
    },
    "student": {
      "@odata.type": "microsoft.graph.educationStudent"
    },
    "teacher": {
      "@odata.type": "microsoft.graph.educationTeacher"
    },
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "accountEnabled": "Boolean",
    "assignedLicenses": [
      {
        "@odata.type": "microsoft.graph.assignedLicense"
      }
    ],
    "assignedPlans": [
      {
        "@odata.type": "microsoft.graph.assignedPlan"
      }
    ],
    "businessPhones": [
      "String"
    ],
    "department": "String",
    "displayName": "String",
    "givenName": "String",
    "mail": "String",
    "mailNickname": "String",
    "mobilePhone": "String",
    "passwordPolicies": "String",
    "passwordProfile": {
      "@odata.type": "microsoft.graph.passwordProfile"
    },
    "officeLocation": "String",
    "preferredLanguage": "String",
    "provisionedPlans": [
      {
        "@odata.type": "microsoft.graph.provisionedPlan"
      }
    ],
    "refreshTokensValidFromDateTime": "String (timestamp)",
    "showInAddressList": "Boolean",
    "surname": "String",
    "usageLocation": "String",
    "userPrincipalName": "String",
    "userType": "String",
    "onPremisesInfo": {
      "@odata.type": "microsoft.graph.educationOnPremisesInfo"
    }
  }
}
```
