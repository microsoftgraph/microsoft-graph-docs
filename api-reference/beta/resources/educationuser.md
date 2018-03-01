# educationUser resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A user in the system. This is an education-specific variant of the user with the same `id` that Microsoft Graph will return from the non-education-specific `/users` endpoint.
This object provides a targeted subset of properties from the core [user](user.md) object and adds a set of education-specific properties such as `primaryRole`, student, and teacher data.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get educationUser](../api/educationuser_get.md) | [educationUser](educationuser.md) |Read properties and relationships of an **educationUser** object.|
|[List classes](../api/educationuser_list_classes.md) |[educationClass](educationclass.md) collection| Get the **educationClass** object collection for which the user is member.|
|[List schools](../api/educationuser_list_schools.md) |[educationSchool](educationschool.md) collection| Get the **educationSchool** object collection for which the user is a member.|
|[Get user](../api/educationuser_get_user.md) |[user](user.md)| Get the simple directory **user** that corresponds to this **educationUser**.|
|[Update](../api/educationuser_update.md) | [educationUser](educationuser.md)	|Update an **educationUser** object. |
|[Delete](../api/educationuser_delete.md) | None |Delete an **educationUser** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| **True** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.    |
|assignedLicenses|[assignedLicense](assignedlicense.md) collection|The licenses that are assigned to the user. Not nullable.            |
|assignedPlans|[assignedPlan](assignedplan.md) collection|The plans that are assigned to the user. Read-only. Not nullable. |
|businessPhones|String collection|The telephone numbers for the user. **Note:** Although this is a string collection, only one number can be set for this property.|
|createdBy|[identitySet](identityset.md)| Entity who created the user. |
|department|String|The name for the department in which the user works. Supports $filter.|
|displayName|String|The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|externalSource|`educationExternalSource`| Where this user was created from. Possible values are: `sis`, `manual`, `unkownFutureValue`.|
|givenName|String|The given name (first name) of the user. Supports $filter.|
|id|String|The unique identifier for the user. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|mail|String|The SMTP address for the user; for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports $filter.|
|mailingAddress|[physicalAddress](physicaladdress.md)| Mail address of user.|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Supports $filter.|
|middleName| String | The middle name of user.|
|mobilePhone|String|The primary cellular telephone number for the user.|
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two can be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|
|passwordProfile|[PasswordProfile](passwordprofile.md)|Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example, "en-US".|
|primaryRole|string| Default role for a user. The user's role might be different in an individual class. Possible values are: `student`, `teacher`, `enum_sentinel`. Supports $filter.|
|provisionedPlans|[ProvisionedPlan](provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. |
|residenceAddress|[physicalAddress](physicaladdress.md)| Address where user lives.|
|student|[educationStudent](educationstudent.md)| If the primary role is student, this block will contain student specific data.|
|surname|String|The user's surname (family name or last name). Supports $filter.|
|teacher|[educationTeacher](educationteacher.md)| If the primary role is teacher, this block will conatin teacher specific data.|
|usageLocation|String|A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby.
|userType|String|A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports $filter.          |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|classes|[educationClass](educationclass.md) collection| Classes to which the user belongs. Nullable.|
|schools|[educationSchool](educationschool.md) collection| Schools to which the user belongs. Nullable.|
|assignments| [educationAssignment](educationAssignment.md)| List of assignments for hte user. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationUser"
}-->

```json
{
  "id": "string",
  "displayName": "string",
  "givenName": "string",
  "middleName": "string",
  "surname": "string",
  "mail": "string",
  "mobilePhone": "string",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "externalSource": "string",
  "mailingAddress": {"@odata.type": "microsoft.graph.physicalAddress"},
  "primaryRole": "string",
  "residenceAddress": {"@odata.type": "microsoft.graph.physicalAddress"},
  "student": {"@odata.type": "microsoft.graph.educationStudent"},
  "teacher": {"@odata.type": "microsoft.graph.educationTeacher"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
