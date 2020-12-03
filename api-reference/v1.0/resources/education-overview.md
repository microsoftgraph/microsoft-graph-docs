---
title: "Working with education APIs in Microsoft Graph"
description: "The education APIs in Microsoft Graph enhance Microsoft 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, and enrollments. This makes it easy for you to build solutions that integrate with educational resources."
localization_priority: Priority
author: "mmast-msft"
ms.prod: "education"
doc_type: conceptualPageType
---

# Working with education APIs in Microsoft Graph

The education APIs in Microsoft Graph enhance Microsoft 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, and enrollments. This makes it easy for you to build solutions that integrate with educational resources.

The education APIs include rostering resources and assignments resources that you can use to interact with the rostering services in Microsoft Teams. You can use these resources to manage a school roster.

## Authorization

To call the education APIs in Microsoft Graph, your app will need to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app will also need the appropriate permissions. For more information, see [Education permissions](/graph/permissions-reference#education-permissions).

### App permissions to enable school IT admins to consent

To deploy apps that are integrated with the Education APIs in Microsoft Graph, school IT admins must first grant consent to the permissions requested by the app. This consent has to be granted only once, unless the permissions change. After the admin consents, the app is provisioned for all users in the tenant.

To show a consent dialog box, use the following REST call.

``` http
GET https://login.microsoftonline.com/{tenant}/adminconsent?
client_id={clientId}&state=12345&redirect_uri={redirectUrl}
```

| Parameter   | Description                                                               |
| :---------- | :------------------------------------------------------------------------ |
| Tenant      | Tenant ID of the school. Use the full ID, which includes onmicrosoft.com. |
| clientId    | Client ID of the app.                                                     |
| redirectUrl | App redirect URL.                                                         |

## Rostering

The rostering APIs enable you to extract data from a school's Microsoft 365 tenant provisioned with [Microsoft School Data Sync](https://sds.microsoft.com/). These APIs provide access to information about schools, sections, teachers, students, and rosters. The APIs support both app-only (sync) scenarios, and app + user (interactive) scenarios. The APIs that support interactive scenarios enforce region-appropriate RBAC policies based on the user role calling the API. This provides a consistent API and minimal policy surface, regardless of the administrative configuration within tenants. In addition, the APIs also provide education-specific permissions to ensure that the right user has access to the data.

You can use the rostering APIs to enable an app user to know:

- Who I am
- What classes I attend or teach
- What I need to do and by when

The rostering APIs provide the following key resources:

- [educationSchool](educationschool.md) - Represents the school.
- [educationClass](educationclass.md) - Represents a class within a school.
- [educationTerm](educationterm.md) - Represents a designated portion of the academic year.
- [educationTeacher](educationteacher.md) - Represents a user with the primary role of 'Teacher'.
- [educationStudent](educationstudent.md) - Represents a user with the primary role of 'student'.

The rostering APIs support the following scenarios:

- [List all schools](../api/educationroot-list-schools.md)
- [List schools in which a class is taught](../api/educationclass-list-schools.md)
- [List schools for a user](../api/educationuser-list-schools.md)
- [Get all classes](../api/educationroot-list-classes.md)
- [Get classes in a school](../api/educationschool-list-classes.md)
- [List classes for a user](../api/educationuser-list-classes.md)
- [Add classes to a school](../api/educationschool-post-classes.md)
- [Get students and teachers for a class](../api/educationclass-list-members.md)
- [Add members to a class](../api/educationclass-post-members.md)
- [List teachers for a class](../api/educationclass-list-teachers.md)
- [Get users in a school](../api/educationschool-list-users.md)

<!-- Should you list delete scenarios here as well? -->

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

Use the Microsoft Graph education APIs to build education solutions that access school rosters. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).