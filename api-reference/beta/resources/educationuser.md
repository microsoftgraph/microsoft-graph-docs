---
title: "educationUser resource type"
description: "A user in the system. This is an education-specific variant of the user with the same `id` that Microsoft Graph will return from the non-education-specific `/users` endpoint."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A user in the system. This is an education-specific variant of the user with the same `id` that Microsoft Graph will return from the non-education-specific `/users` endpoint.
This object provides a targeted subset of properties from the core [user] object and adds a set of education-specific properties such as `primaryRole`, student, and teacher data.

## Methods

| Method                                               | Return Type                                  | Description                                                                   |
| :--------------------------------------------------- | :------------------------------------------- | :---------------------------------------------------------------------------- |
| [Get educationUser](../api/educationuser-get.md)     | [educationUser]                              | Read properties and relationships of an **educationUser** object.             |
| [List classes](../api/educationuser-list-classes.md) | [educationClass] collection                  | Get the **educationClass** object collection for which the user is member.    |
| [List schools](../api/educationuser-list-schools.md) | [educationSchool] collection                 | Get the **educationSchool** object collection for which the user is a member. |
| [Get user](../api/educationuser-get-user.md)         | [user]                                       | Get the simple directory **user** that corresponds to this **educationUser**. |
| [Update](../api/educationuser-update.md)             | [educationUser]                              | Update an **educationUser** object.                                           |
| [Delete](../api/educationuser-delete.md)             | None                                         | Delete an **educationUser** object.                                           |
| [Delta](../api/educationuser-delta.md)               | [educationUser](educationuser.md) collection | Get incremental changes for **educationUsers**.                               |

## Properties

| Property          | Type                                                  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| :---------------- | :---------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                | String                                                | The unique identifier for the user. Inherited from [directoryObject]. Key. Not nullable. Read-only.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| accountEnabled    | Boolean                                               | **True** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                   |
| assignedLicenses  | [assignedLicense] collection                          | The licenses that are assigned to the user. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| assignedPlans     | [assignedPlan] collection                             | The plans that are assigned to the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| businessPhones    | String collection                                     | The telephone numbers for the user. **Note:** Although this is a string collection, only one number can be set for this property.                                                                                                                                                                                                                                                                                                                                                                                                |
| createdBy         | [identitySet]                                         | Entity who created the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| department        | String                                                | The name for the department in which the user works. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| displayName       | String                                                | The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.                                                                                                                                                                                                                                                           |
| externalSource    | `educationExternalSource`                             | Where this user was created from. Possible values are: `sis` or `manual`.                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| givenName         | String                                                | The given name (first name) of the user. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| mail              | String                                                | The SMTP address for the user; for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                                        |
| mailNickname      | String                                                | The mail alias for the user. This property must be specified when a user is created. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                                          |
| mailingAddress    | [physicalAddress]                                     | Mail address of user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| middleName        | String                                                | The middle name of user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| mobilePhone       | String                                                | The primary cellular telephone number for the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| onPremisesInfo    | [educationOnPremisesInfo](educationonpremisesinfo.md) | Additional information used to associate the AAD user with it's Active Directory counterpart.                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| passwordPolicies  | String                                                | Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two can be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".                                                                                                                                                                      |
| passwordProfile   | [passwordProfile]                                     | Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.                                                                                                                                                                                                                             |
| preferredLanguage | String                                                | The preferred language for the user. Should follow ISO 639-1 Code; for example, "en-US".                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| primaryRole       | string                                                | Default role for a user. The user's role might be different in an individual class. Possible values are: `student`, `teacher`, `faculty`. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                     |
| provisionedPlans  | [provisionedPlan] collection                          | The plans that are provisioned for the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| residenceAddress  | [physicalAddress]                                     | Address where user lives.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| student           | [educationStudent]                                    | If the primary role is student, this block will contain student specific data.                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| surname           | String                                                | The user's surname (family name or last name). Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| teacher           | [educationTeacher]                                    | If the primary role is teacher, this block will contain teacher specific data.                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| usageLocation     | String                                                | A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: "US", "JP", and "GB". Not nullable. Supports \$filter.                                                                                                                                                                                                                                                               |
| userPrincipalName | String                                                | The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby. |
| userType          | String                                                | A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports \$filter.                                                                                                                                                                                                                                                                                                                                                                                                       |
| relatedContacts   | [relatedContact] collection                           | Related records related to the user. Possible relationships are `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`                                                                                                                                                                                                                                                                                                                                                                       |

>[!IMPORTANT]
>When using Delegated permission scopes, Graph will only return a limited set of properties: `id`, `primaryRole`, `accountEnabled`, `displayName`, `givenName`, `surname`, `userPrincipalName`, `userType`, `onPremisesInfo`. If your application requires additional properties, you must use Application permission scopes.

## Relationships

| Relationship  | Type                         | Description                                  |
| :------------ | :--------------------------- | :------------------------------------------- |
| assignments   | [educationAssignment]        | List of assignments for the user. Nullable.  |
| classes       | [educationClass] collection  | Classes to which the user belongs. Nullable. |
| schools       | [educationSchool] collection | Schools to which the user belongs. Nullable. |
| taughtClasses | [educationClass] collection  | Classes for which the user is a teacher.     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationUser"
}-->

```json
{
  "accountEnabled": true,
  "assignedLicenses": [{ "@odata.type": "microsoft.graph.assignedLicense" }],
  "assignedPlans": [{ "@odata.type": "microsoft.graph.assignedPlan" }],
  "businessPhones": ["String"],
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "department": "String",
  "displayName": "String",
  "externalSource": "string",
  "givenName": "String",
  "id": "String (identifier)",
  "mail": "String",
  "mailNickname": "String",
  "mailingAddress": { "@odata.type": "microsoft.graph.physicalAddress" },
  "middleName": "String",
  "mobilePhone": "String",
  "officeLocation": "String",
  "onPremisesInfo": {
    "@odata.type": "microsoft.graph.educationOnPremisesInfo"
  },
  "passwordPolicies": "String",
  "passwordProfile": { "@odata.type": "microsoft.graph.passwordProfile" },
  "preferredLanguage": "String",
  "primaryRole": "string",
  "provisionedPlans": [{ "@odata.type": "microsoft.graph.provisionedPlan" }],
  "residenceAddress": { "@odata.type": "microsoft.graph.physicalAddress" },
  "student": { "@odata.type": "microsoft.graph.educationStudent" },
  "surname": "String",
  "teacher": { "@odata.type": "microsoft.graph.educationTeacher" },
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [ 
    "Error: Resource educationUser has documented navigation properties, but we thought it was a complex type!" 
  ]

}-->

[educationuser]: educationuser.md
[educationclass]: educationclass.md
[educationschool]: educationschool.md
[educationassignment]: educationassignment.md
[educationteacher]: educationteacher.md
[educationstudent]: educationstudent.md
[relatedcontact]: relatedcontact.md
[physicaladdress]: physicaladdress.md
[provisionedplan]: provisionedplan.md
[passwordprofile]: passwordprofile.md
[identityset]: identityset.md
[assignedplan]: assignedplan.md
[assignedlicense]: assignedlicense.md
[user]: user.md
[directoryobject]: directoryobject.md
