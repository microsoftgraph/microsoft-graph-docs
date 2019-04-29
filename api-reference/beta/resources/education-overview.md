---
title: "Working with education APIs in Microsoft Graph"
description: "The education APIs in Microsoft Graph enhance Office 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, enrollments, and assignments. This makes it easy for you to build solutions that integrate with educational resources."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: conceptualPageType
---

# Working with education APIs in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The education APIs in Microsoft Graph enhance Office 365 resources and data with information that is relevant for education scenarios, including schools, students, teachers, classes, enrollments, and assignments. This makes it easy for you to build solutions that integrate with educational resources.

The education APIs include rostering resources and assignments resources that you can use to interact with the rostering and assignment services in Microsoft Teams. You can use these resources to manage a school roster and automate student assignments.

## Authorization

To call the education APIs in Microsoft Graph, your app will need to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](https://developer.microsoft.com/graph/docs/concepts/auth_overview). Your app will also need the appropriate permissions. For more information, see [Education permissions](/graph/permissions-reference#education-permissions). 

### App permissions to enable school IT admins to consent 

To deploy apps that are integrated with the Education APIs in Microsoft Graph, school IT admins must first grant consent to the permissions requested by the app. This consent has to be granted only once, unless the permissions change. After the admin consents, the app is provisioned for all users in the tenant.

To trigger a consent dialog box, use the following REST call.

```
GET https://login.microsoftonline.com/{tenant}/adminconsent?
client_id={clientId}&state=12345&redirect_uri={redirectUrl}
```

|Parameter|Description|
|:--------|:----------|
|Tenant|Tenant ID of the school. Use the full ID, which includes onmicrosoft.com.|
|clientId|Client ID of the app.|
|redirectUrl|App redirect URL.|


## Rostering

The rostering APIs enable you to extract data from a school's Office 365 tenant provisioned with [Microsoft School Data Sync](https://sds.microsoft.com/). These APIs provide access to information about schools, sections, teachers, students, and rosters. The APIs support both app-only (sync) scenarios, and app + user (interactive) scenarios. The APIs that support interactive scenarios enforce region-appropriate RBAC policies based on the user role calling the API. This provides a consistent API and minimal policy surface, regardless of the administrative configuration within tenants. In addition, the APIs also provide education-specific permissions to ensure that the right user has access to the data.

You can use the rostering APIs to enable an app user to know:

- Who I am
- What classes I attend or teach
- What I need to do and by when

The rostering APIs provide the following key resources:

- [educationSchool](educationschool.md) - Represents the school.
- [educationClass](educationclass.md) - Represents a class within a school.
- [educationTerm](educationterm.md) - Represents a designated portion of the academic year.
- [educationTeacher](educationteacher.md) - Represents a users with the primary role of 'Teacher'.
- [educationStudent](educationstudent.md) - Represents a users with the primary role of 'student'.

The rostering APIs support the following scenarios:

- [List all schools](../api/educationroot-list-schools.md) 
- [List schools in which a class is taught](../api/educationclass-list-schools.md)
- [List schools for a user](../api/educationuser-list-schools.md)
- [Get all classes](../api/educationroot-list-classes.md )
- [Get classes in a school](../api/educationschool-list-classes.md)
- [List classes for a user](../api/educationuser-list-classes.md)
- [Add classes to a school](../api/educationschool-post-classes.md)
- [Get students and teachers for a class](../api/educationclass-list-members.md)
- [Add members to a class](../api/educationclass-post-members.md) 
- [List teachers for a class](../api/educationclass-list-teachers.md)
- [Get users in a school](../api/educationschool-list-users.md)

<!-- Should you list delete scenarios here as well? -->

## Assignments 

You can use the assignment-related education APIs to integrate with assignments in Microsoft Teams. Microsoft Teams in Office 365 for Education is based on the same education APIs, and provides a use case for what you can do with the APIs. Your app can use these APIs to interact with assignments throughout the assignment lifecycle. 

The assignment APIs provide the following key resources:

- [educationAssignment](educationassignment.md) - The core object of the assignments API. Represents a task or unit of work assigned to a student or team member in a class as part of their study.
- [educationSubmission](educationsubmission.md) - Represents the resources that an individual (or group) submits for an assignment and the associated grade and feedback for that assignment.
- [educationResource](educationresource.md) - Represents the learning object that is being assigned or submitted. An **educationResource** is associated with an **educationAssignment** and/or an **educationSubmission**.

The assignment APIs support the following scenarios:

- [Create assignment](../api/educationclass-post-assignments.md)
- [Publish assignment](../api/educationassignment-publish.md)
- [Create assignment resource](../api/educationassignment-post-resources.md)
- [Create submission resource](../api/educationsubmission-post-resources.md)
- [Submit assignment](../api/educationsubmission-submit.md) 
- [Unsubmit assignment](../api/educationsubmission-unsubmit.md)   
- [Return grades and feedback to student](../api/educationsubmission-return.md) 
- [Get assignment details](../api/educationuser-list-assignments.md)

The following are some common use cases for the assignment-related education APIs.

|Use case|Description|See also|
|:-------|:----------|:-------|
|Create assignments|An external system can create an assignment for the class and attach resources to the assignment.|[Create assignment](../api/educationassignment-post-resources.md)|
|Read assignment information|An analytics application can get information about assignments and student submissions, including dates and grades.|[Get assignment](../api/educationassignment-get.md)|
|Track student submissions|Your app can provide a teacher dashboard that shows how many submissions from students need to be graded.|[Submission resource](educationsubmission.md)|

## School data sync management

[School Data Sync](https://sds.microsoft.com/) helps to automate the process of importing and synchronizing roster data from student information systems with Azure Active Directory (Azure AD) and Office 365. You can use the school data sync management APIs in Microsoft Graph to set up synchronization from either a CSV file or a supported SIS API connector.

The school data sync management APIs support the following scenarios:

- [List synchronization profiles](../api/educationsynchronizationprofile-list.md)
- [Get synchronization profile](../api/educationsynchronizationprofile-get.md)
- [Create synchronization profile](../api/educationsynchronizationprofile-post.md)
- [Delete synchronization profile](../api/educationsynchronizationprofile-delete.md)
- [Pause an ongoing sync](../api/educationsynchronizationprofile-pause.md)
- [Resume a paused sync](../api/educationsynchronizationprofile-resume.md)
- [Reset a sync](../api/educationsynchronizationprofile-reset.md)
- [Start sync for uploaded files](../api/educationsynchronizationprofile-start.md) 
- [Get an upload URL](../api/educationsynchronizationprofile-uploadurl.md)
- [Get status of a sync](../api/educationsynchronizationprofilestatus-get.md)
- [Get synchronization errors](../api/educationsynchronizationerrors-get.md)


## Next steps
Use the Microsoft Graph education APIs to build education solutions that access student assignments and school rosters. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

