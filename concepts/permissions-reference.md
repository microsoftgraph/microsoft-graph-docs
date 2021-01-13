---
title: "Microsoft Graph permissions reference "
description: "Microsoft Graph exposes granular permissions that control the access that apps have to resources, like users, groups, and mail. As a developer, you decide which permissions for Microsoft Graph your app requests."
author: "jackson-woods"
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Microsoft Graph permissions reference

For your app to access data in Microsoft Graph, the user or administrator must grant it the correct permissions via a consent process. This topic lists the permissions associated with each major set of Microsoft Graph APIs. It also provides guidance about how to use the permissions.

To learn more about how permissions work, see [Authentication and authorization basics](auth/auth-concepts.md#microsoft-graph-permissions), and watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]

## Microsoft Graph permission names

Microsoft Graph permission names follow a simple pattern: _resource.operation.constraint_. For example, _User.Read_ grants permission to read the profile of the signed-in user, _User.ReadWrite_ grants permission to read and modify the profile of the signed-in user, and _Mail.Send_ grants permission to send mail on behalf of the signed-in user.

The _constraint_ element of the name determines the potential extent of access your app will have within the directory. Currently Microsoft Graph supports the following constraints:

* **All** grants permission for the app to perform the operations on all of the resources of the specified type in a directory. For example, _User.Read.All_ potentially grants the app privileges to read the profiles of all of the users in a directory.
* **Shared** grants permission for the app to perform the operations on resources that other users have shared with the signed-in user. This constraint is mainly used with Outlook resources like mail, calendars, and contacts. For example, _Mail.Read.Shared_, grants privileges to read mail in the mailbox of the signed-in user as well as mail in mailboxes that other users in the organization have shared with the signed-in user.
* **AppFolder** grants permission for the app to read and write files in a dedicated folder in OneDrive. This constraint is only exposed on [Files permissions](#files-permissions) and is only valid for Microsoft accounts.
* If **no constraint** is specified the app is limited to performing the operations on the resources owned by the signed-in user. For example, _User.Read_ grants privileges to read the profile of the signed-in user only, and _Mail.Read_ grants permission to read only mail in the mailbox of the signed-in user.

> **Note**: In delegated scenarios, the effective permissions granted to your app may be constrained by the privileges of the signed-in user in the organization.

## Microsoft accounts and work or school accounts

Not all permissions are valid for both Microsoft accounts and work or school accounts. You can check the **Microsoft Account Supported** column for each permission group to determine whether a specific permission is valid for Microsoft accounts, work or school accounts, or both.

## Permissions availability status

Microsoft Graph permissions in the [Azure portal](https://portal.azure.com/) are generally available and in GA status for all apps to use, except for a few sets that are in preview or private preview status. Permissions in preview are available to the public; they may change and may not be promoted to GA status. Permissions in private preview status are not and may never become available to the public. Do not use permissions in preview or private preview status in production apps.

## User and group search limitations for guest users in organizations

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users have this capability; however, guest users do not.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it cannot perform queries against the `/users` or `/groups` resource set that potentially return more than a single resource.

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.

## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application queries the membership of a container object and does not have permission to read a certain type, members of that type are returned but with limited information.  The application receives a 200 response and a collection of objects.  Complete information is returned for the object types that the application has permissions to read.  For the object types which the application does not have permission to read, only the the object type and ID are returned.

This is applied to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type (not just member links). Examples include `/groups/{id}/members`, `/users/{id}/memberOf` or `me/ownedObjects`.

For example, let's say an application has [User.Read.All](#user-permissions) and [Group.Read.All](#group-permissions) permissions for Microsoft Graph.  A group has been created and that group contains a user, a group, and a device.  The application calls [list group members](/graph/api/group-list-members).  The application has access to the user and group objects in the group, but not the device object.  In the response, all the selected properties of the user and group objects are returned. For the device object, however, only limited information is returned.  The data type and object ID are returned for the device, but all other properties have a value of *null*. Apps without permission will not be able to use the ID to get the actual object.

```http
GET https://graph.microsoft.com/v1.0/groups/{id}/members?$select=id,displayName,description,createdDateTime,deletedDateTime,homepage,loginUrl HTTP/1.1
```

The following is the JSON response:

```json
{
"@odata.context":"https://graph.microsoft.com/v1.0/$metadata#directoryObjects(id,displayName,description,createdDateTime,deletedDateTime,homepage,loginUrl)",
    "value":[
        {
            "@odata.type":"#microsoft.graph.user",
            "id":"69d035a3-29c9-469f-809d-d21a4ae69e65",
            "displayName":"Jane Dane",
            "createdDateTime":"2019-09-18T09:06:51Z",
            "deletedDateTime":null
        },
        {
            "@odata.type":"#microsoft.graph.group",
            "id":"c43a7cc9-2d95-44b6-bf6a-6392e41949b4",
            "displayName":"Group 1",
            "description":null,
            "createdDateTime":"2019-10-24T01:34:35Z",
            "deletedDateTime":null
        },
        {
            "@odata.type":"#microsoft.graph.device",
            "id": "d282309e-f91d-43b6-badb-9e68aa4b4fc8",
            "accountEnabled":null,
            "deviceId":null,
            "displayName":null,
            "operatingSystem":null,
            "operatingSystemVersion":null
        }
    ]
}
```

---

## Access reviews permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _AccessReview.Read.All_ |   Read all access reviews  | Allows the app to read access reviews on behalf of the signed-in user. | Yes | No |
| _AccessReview.ReadWrite.All_ |   Manage all access reviews  | Allows the app to read and write access reviews on behalf of the signed-in user. | Yes | No |
| _AccessReview.ReadWrite.Membership_ |   Manage access reviews for group and app memberships | Allows the app to read and write access reviews of groups and apps on behalf of the signed-in user. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _AccessReview.Read.All_ |   Read all access reviews | Allows the app to read access reviews without a signed-in user. | Yes |
| _AccessReview.ReadWrite.Membership_ | Manage access reviews for group and app memberships | Allows the app to manage access reviews of groups and apps without a signed-in user. | Yes |


### Remarks

_AccessReview.Read.All_, _AccessReview.ReadWrite.All_ and _AccessReview.ReadWrite.Membership_ are valid only for work or school accounts.

For an app with delegated permissions to read access reviews of a group or app, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or User Administrator. For an app with delegated permissions to write access reviews of a group or app, the signed-in user must be a member of one of the following administrator roles: Global Administrator or User Administrator.

For an app with delegated permissions to read access reviews of an Azure AD role, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or Privileged Role Administrator. For an app with delegated permissions to write access reviews of an Azure AD role, the signed-in user must be a member of one of the following administrator roles: Global Administrator or Privileged Role Administrator.

For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

---

## Administrative units permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _AdministrativeUnit.Read.All_ |   Read administrative units  | Allows the app to read administrative units and administrative unit membership on behalf of the signed-in user. | Yes | No |
| _AdministrativeUnit.ReadWrite.All_ |   Read and write administrative units  | Allows the app to create, read, update, and delete administrative units and manage administrative unit membership on behalf of the signed-in user. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _AdministrativeUnit.Read.All_ |   Read all administrative units | Allows the app to read administrative units and administrative unit membership without a signed-in user. | Yes |
| _AdministrativeUnit.ReadWrite.All_ |   Read and write all administrative units | Allows the app to create, read, update, and delete administrative units and manage administrative unit membership without a signed-in user. | Yes |

### Remarks
With the _AdministrativeUnit.Read.All_ permission an application can read administrative unit information including members.

With the _AdministrativeUnit.ReadWrite.All_ permission an application can create, read, update, and delete administrative unit information including members.

_AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_ are valid only for work or school accounts.

### Example usage

- _AdministrativeUnit.Read.All_: Read administrative units (`GET /beta/administrativeUnits`)
- _AdministrativeUnit.Read.All_: Read members list of an administrative unit (`GET /beta/administrativeUnits/<id>/members`)
- _AdministrativeUnit.ReadWrite.All_: Create an administrative unit (`POST /beta/administrativeUnits`)
- _AdministrativeUnit.ReadWrite.All_: Update an administrative unit (`PATCH /beta/administrativeUnits/<id>`)
- _AdministrativeUnit.ReadWrite.All_: Add members to an administrative unit  (`POST /beta/administrativeUnits/<id>/members`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Analytics resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Analytics.Read_ |   Read user activity statistics. | Allows the app to read the signed-in user's activity statistics, such as how much time the user has spent on emails, in meetings, or in chat sessions. | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _Analytics.Read_: [List related settings for a user](/graph/api/useranalytics-get-settings?view=graph-rest-beta) (`GET /beta/me/analytics/settings`)

#### Application

None.

---

## AppCatalog resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------| :----------|
| _AppCatalog.Read.All_ | Read all app catalogs | Allows the app to read the apps in the app catalogs.| No | No |
| _AppCatalog.ReadWrite.All_ | Read and write to all app catalogs  | Allows the app to create, read, update, and delete apps in the app catalogs. | Yes | No |
|_AppCatalog.Submit_|Submit an app for admin review|Allows the user to submit and app for admin review for publication in an organization's app catalog and allows user to cancel past submissions that have not been published.</br> &#119821;&#119822;&#119827;&#119812;: Non-admin users submit apps for review by including the  `requiresReview=true` query parameter.|Yes|No|

#### Application permissions

None.

### Remarks

Currently the only catalog is the list of applications in [Microsoft Teams](teams-concept-overview.md).

### Example usage

#### Delegated
* _AppCatalog.ReadWrite.All_: [List all applications in catalog](/graph/api/teamsapp-list?view=graph-rest-beta) (`GET /beta/appCatalogs/teamsApps`)
* _AppCatalog.ReadWrite.All_: [Publish an app](/graph/api/teamsapp-publish?view=graph-rest-beta) (`POST /beta/appCatalogs/teamsApps`)
* _AppCatalog.ReadWrite.All_: [Update a published app](/graph/api/teamsapp-update?view=graph-rest-beta) (`PATCH /beta/appCatalogs/teamsApps/{id}`)
* _AppCatalog.ReadWrite.All_: [Remove a published app](/graph/api/teamsapp-delete?view=graph-rest-beta) (`DELETE /beta/appCatalogs/teamsApps/{id}`)

#### Application

None.

---

## Application resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Application.Read.All_ | Read applications | Allows the app to read applications and service principals on behalf of the signed-in user. | Yes |
| _Application.ReadWrite.All_ | Read and write all apps |  Allows the app to create, read, update and delete applications and service principals on behalf of the signed-in user. | Yes |
| _AppRoleAssignment.ReadWrite.All_ | Manage app permission grants and app role assignments | Allows the app to manage permission grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, on behalf of the signed-in user. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Application.Read.All_ | Read applications | Allows the app to read applications and service principals without a signed-in user. | Yes |
| _Application.ReadWrite.All_ | Read and write all apps | Allows the calling app to create, and manage (read, update, update application secrets and delete) applications and service principals without a signed-in user.  Does not allow management of consent grants or application assignments to users or groups. | Yes |
| _Application.ReadWrite.OwnedBy_ | Manage apps that this app creates or owns | Allows the calling app to create other applications and service principals, and fully manage those applications and service principals (read, update, update application secrets and delete), without a signed-in user.  It cannot update any applications that it is not an owner of. Does not allow management of consent grants or application assignments to users or groups. | Yes |
| _AppRoleAssignment.ReadWrite.All_ | Manage app permission grants and app role assignments | Allows the app to manage permission grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, without a signed-in user. | Yes |

### Remarks

The _Application.ReadWrite.OwnedBy_ permission allows the same operations as _Application.ReadWrite.All_ except that the former allows these operations only on applications and service principals that the calling app is an owner of. Ownership is indicated by the `owners` navigation property on the target [application](/graph/api/application-list-owners?view=graph-rest-beta) or [service principal](/graph/api/serviceprincipal-list-owners?view=graph-rest-beta) resource.
> NOTE: Using the _Application.ReadWrite.OwnedBy_ permission to call `GET /applications` to list applications will fail with a 403.  Instead use `GET servicePrincipals/{id}/ownedObjects` to list the applications owned by the calling application.

### Example usage

#### Delegated

* _Application.Read.All_: List all applications (`GET /beta/applications`)
* _Application.ReadWrite.All_: Update a service principal (`PATCH /beta/servicePrincipals/{id}`)

#### Application

* _Application.Read.All_: List all applications (`GET /beta/applications`)
* _Application.ReadWrite.All_: Delete a service principal (`DELETE /beta/servicePrincipals/{id}`)
* _Application.ReadWrite.OwnedBy_: Create an application (`POST /beta/applications`)
* _Application.ReadWrite.OwnedBy_: List all applications owned by the calling application (`GET /beta/servicePrincipals/{id}/ownedObjects`)
* _Application.ReadWrite.OwnedBy_: Add another owner to an owned application (`POST /applications/{id}/owners/$ref`).
> NOTE: This may require additional permissions.

---

## BitLocker recovery key permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _BitlockerKey.ReadBasic.All_ | Read basic BitLocker key information | Allows an app to read the BitLocker key's properties for all devices in the tenant. The recovery key is not returned. | Yes | No |
| _BitlockerKey.Read.All_ | Read the BitLocker key | Allows an app to read the BitLocker keys for all devices in the tenant. The recovery key is returned. | Yes | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _BitlockerKey.ReadBasic.All_: List the BitLocker recovery keys for all devices in the tenant without returning the 'key' property (`GET /bitlocker/recoveryKeys`).
* _BitlockerKey.Read.All_: Get a BitLocker recovery key with the recovery key (`GET /bitlocker/recoveryKeys/{bitlockerRecoveryKeyId}?$select=key`)

---

## Bookings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Bookings.Read.All_ |  Allows an app to read Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. | Intended for read-only applications. Typical target user is the customer of a booking business. | No | No |
| _BookingsAppointment.ReadWrite.All_ | Allows an app to read and write Bookings appointments and customers, and additionally allows reading businesses, services, and staff on behalf of the signed-in user. | Intended for scheduling applications which need to manipulate appointments and customers. Cannot change fundamental information about the booking business, nor its services and staff members. Typical target user is the customer of a booking business.| No | No |
| _Bookings.ReadWrite.All_ | Allows an app to read and write Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. Does not allow create, delete, or publish of Bookings businesses. | Intended for management applications that manipulate existing businesses, their services and staff members. Cannot create, delete, or change the publishing status of a booking business. Typical target user is the support staff of an organization.| No | No |
| _Bookings.Manage.All_ | Allows an app to read, write, and manage Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user.  | Allows the app to have full access. <br>Intended for a full management experience. Typical target user is the administrator of an organization.| No | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _Bookings.Read.All_: Get the ID and names of the collection of Bookings businesses that has been created for a tenant (`GET /bookingBusinesses`).
* _BookingsAppointment.ReadWrite.All_: Create an appointment for a service at a Bookings business (`POST /bookingBusinesses/{id}/appointments`).
* _Bookings.ReadWrite.All_: Create a new service for the specified Bookings business (`POST /bookingBusinesses/{id}/services`).
* _Bookings.Manage.All_: Make the scheduling page of this business available to external customers (`POST /bookingBusinesses/{id}/publish`).

## Calendars permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Calendars.Read_ |Read user calendars |Allows the app to read events in user calendars. |No | Yes |
| _Calendars.Read.Shared_ |Read user and shared calendars |Allows the app to read events in all calendars that the user can access, including delegate and shared calendars. |No | No |
| _Calendars.ReadWrite_ |Have full access to user calendars |Allows the app to create, read, update, and delete events in user calendars. |No | Yes |
| _Calendars.ReadWrite.Shared_ |Read and write user and shared calendars |Allows the app to create, read, update and delete events in all calendars the user has permissions to access. This includes delegate and shared calendars.|No | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Calendars.Read_ |Read calendars in all mailboxes |Allows the app to read events of all calendars without a signed-in user. |Yes |
|_Calendars.ReadWrite_ |Read and write calendars in all mailboxes |Allows the app to create, read, update, and delete events of all calendars without a signed-in user. |Yes |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not to all the mailboxes in the organization, even if the app has been granted the application permissions of Calendars.Read or Calendars.ReadWrite.
<br/>

### Example usage

#### Delegated

* _Calendars.Read_: Get events on the user's calendar between April 23, 2017 and April 29, 2017 (`GET /me/calendarView?startDateTime=2017-04-23T00:00:00&endDateTime=2017-04-29T00:00:00`).
* _Calendars.Read.Shared_: Find meeting times where all attendees are available (`POST /users/{id|userPrincipalName}/findMeetingTimes`).
* _Calendars.ReadWrite_: Add an event to the user's calendar (`POST /me/events`).

#### Application

* _Calendars.Read_: Find events in a conference room's calendar organized by bob@contoso.com (`GET /users/{id | userPrincipalName}/events?$filter=organizer/emailAddress/address eq 'bob@contoso.com'`).
* _Calendars.Read_: List all events on a user's calendar for the month of May (`GET /users/{id | userPrincipalName}/calendarView?startDateTime=2017-05-01T00:00:00&endDateTime=2017-06-01T00:00:00`)
* _Calendars.ReadWrite_: Add an event to a user's calendar for approved time off  (`POST /users/{id | userPrincipalName}/events`).
* _Calendars.Send_: Send a message (`POST /users/{id | userPrincipalName}/sendCalendars`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Channel permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions of channels. | Read channel names and channel descriptions, on behalf of the signed-in user.	| No | No |
| _Channel.Create_ | Create channels. | Create channels in any team, on behalf of the signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, on behalf of the signed-in user.	| Yes | No |

#### Application permissions 

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions  of all channels. | Read all channel names and channel descriptions, without a signed-in user.	| Yes | No |
| _Channel.Create_ | Create channels. | Create channels in any team, without a signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, without a signed-in user.	| Yes | No |
|_Teamwork.Migrate.All_|Manage migration to Microsoft Teams|Creating and managing resources for migration to Microsoft Teams|Yes|Yes|

## Calls permissions

#### Delegated permissions

None.

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Calls.Initiate.All_|Initiate outgoing 1:1 calls from the app (preview)|Allows the app to place outbound calls to a single user and transfer calls to users in your organization’s directory, without a signed-in user.|Yes|
|_Calls.InitiateGroupCall.All_|Initiate outgoing group calls from the app (preview)|Allows the app to place outbound calls to multiple users and add participants to meetings in your organization, without a signed-in user.|Yes|
|_Calls.JoinGroupCall.All_|Join group calls and meetings as an app (preview)|Allows the app to join group calls and scheduled meetings in your organization, without a signed-in user. The app will be joined with the privileges of a directory user to meetings in your tenant.|Yes|
|_Calls.JoinGroupCallasGuest.All_|Join group calls and meetings as a guest (preview)|Allows the app to anonymously join group calls and scheduled meetings in your organization, without a signed-in user. The app will be joined as a guest to meetings in your tenant.|Yes|
|_Calls.AccessMedia.All_\*|Access media streams in a call as an app (preview)|Allows the app to get direct access to media streams in a call, without a signed-in user.|Yes|

> \***Important:** You may NOT use the Cloud Communications APIs to record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content. Make sure that you are compliant with the laws and regulations in your area regarding data protection and confidentiality of communications. Please see the [Terms of Use](/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

<br/>

### Example usage

#### Application

* _Calls.Initiate.All_: Make a peer-to-peer call from the application to a user in the organization (`POST /beta/communications/calls`).
* _Calls.InitiateGroupCall.All_: Make a group call from the application to a group of users in the organization (`POST /beta/communications/calls`).
* _Calls.JoinGroupCall.All_: Join a group call or online meeting from the application (`POST /beta/communications/calls`).
* _Calls.JoinGroupCallasGuest.All_: Join a group call or online meeting from the application, but the application only has guest privileges in the meeting (`POST /beta/communications/calls`).
* _Calls.AccessMedia.All_: Create or join a call and the app gets direct access to participant media streams in the call (`POST /beta/communications/calls`).

> **Note:** For request examples, see [Create call](/graph/api/application-post-calls?view=graph-rest-beta).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Call records permissions

#### Delegated permissions

None.

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_CallRecords.Read.All_|Read all call records|Allows the app to read call records for all calls and online meetings without a signed-in user.|Yes|

### Remarks

The _CallRecords.Read.All_ permission grants an application privileged access to [callRecords](/graph/api/resources/callrecords-callrecord) for every call and online meeting within your organization, including calls to and from external phone numbers. This includes potentially sensitive details about who participated in the call, as well as technical information pertaining to these calls and meetings that can be used for network troubleshooting, such as IP addresses, device details, and other network information.

> **Important:** Discretion should be used when granting these permissions to applications. Call records can provide insights into the operation of your business, and so can be a target for malicious actors. Only grant these permissions to applications you trust to meet your data protection requirements.

> **Important:** Make sure that you are compliant with the laws and regulations in your area regarding data protection and confidentiality of communications. Please see the [Terms of Use](/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

<br/>

### Example usage

#### Application

* _CallRecords.Read.All_: Retrieve a call record (`GET /v1.0/communications/callRecords/{id}`).
* _CallRecords.Read.All_: Subscribe to new call records (`POST /v1.0/subscriptions`).
* _CallRecords.Read.All_: Retrieve direct routing call records within the specified time range (`GET /v1.0/communications/callRecords/microsoft.graph.callRecords.getDirectRoutingCalls(fromDateTime={start date and time),toDateTime={end date and time))`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Channel permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions of channels. | Read channel names and channel descriptions, on behalf of the signed-in user.	| No | No |
| _Channel.Create_ | Create channels. | Create channels in any team, on behalf of the signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, on behalf of the signed-in user.	| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions  of all channels. | Read all channel names and channel descriptions, without a signed-in user.	| Yes | No |
| _Channel.Create_ | Create channels. | Create channels in any team, without a signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, without a signed-in user.	| Yes | No |
|_Teamwork.Migrate.All_|Manage migration to Microsoft Teams|Creating and managing resources for migration to Microsoft Teams|Yes|Yes|

## Channel member permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMember.Read.All_  |Read the members of channels. |Read the members of channels, on behalf of the signed-in user. |Yes | No |
|_ChannelMember.ReadWrite.All_ | Add and remove members from channels.| Add and remove members from channels, on behalf of the signed-in user. Also allows changing a member's role, for example from owner to non-owner.| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMember.Read.All_ |Read the members of all channels. |Read the members of all channels, without a signed-in user. |Yes | No |
|_ChannelMember.ReadWrite.All_ |Add and remove members from all channels.|Add and remove members from all channels, without a signed-in user. Also allows changing a member's role, for example from owner to non-owner.| Yes | No |

## Channel message permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMessage.Delete_ (private preview)|Delete user's channel messages |Allows an app to delete channel messages in Microsoft Teams, on behalf of the signed-in user. |Yes | No |
|_ChannelMessage.Edit_ (private preview)|Edit user's channel messages |Allows an app to edit channel messages in Microsoft Teams, on behalf of the signed-in user. |Yes | No |
|_ChannelMessage.Read.All_ |Read user channel messages  |Allows an app to read a channel's messages in Microsoft Teams, on behalf of the signed-in user. |Yes | No |
|_ChannelMessage.Send_ |Send channel messages |Allows an app to send channel messages in Microsoft Teams, on behalf of the signed-in user. |No| No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMessage.Read.All_ |Read all channel messages  |Allows the app to read all channel messages in Microsoft Teams, without a signed-in user. |Yes | No |
|_ChannelMessage.UpdatePolicyViolation.All_ |Flag channel messages for violating policy |Allows the app to update Microsoft Teams channel messages by patching a set of Data Loss Prevention (DLP) policy violation properties to handle the output of DLP processing. | Yes | No |

> **Note:** See also [Group.Read.All](#group-permissions).

## Channel settings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChannelSettings.Read.All_ | Read the names, descriptions, and settings of channels. | Read all channel names, channel descriptions, and channel settings, on behalf of the signed-in user.| Yes | No |
| _ChannelSettings.ReadWrite.All_ | Read and write the names, descriptions, and settings of channels. | Read and write the names, descriptions, and settings of all channels, on behalf of the signed-in user.| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChannelSettings.Read.All_ | Read the names, descriptions, and settings of all channels. | Read all channel names, channel descriptions, and channel settings, without a signed-in user.| Yes | No |
| _ChannelSettings.ReadWrite.All_ | Read and write the names, descriptions, and settings of all channels. | Read and write the names, descriptions, and settings of all channels, without a signed-in user.| Yes | No |

## Chats permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Chat.Read_ |Read your chat messages  |Allows an app to read your 1:1 or group chat messages in Microsoft Teams, on your behalf. |No | No |
|_Chat.ReadBasic_ |Read names and members of user chat threads  |Allows an app to read the members and descriptions of 1:1 and group chats threads, on behalf of the signed-in user. |No | No |
|_Chat.ReadWrite_ |Read your chat messages and send new ones  |Allows an app to read and send your 1:1 or group chat messages in Microsoft Teams, on your behalf. |No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Chat.Read.All_ |Read all chat messages  |Allows the app to read all 1:1 or group chat messages in Microsoft Teams, without a signed-in user. |Yes | No |
|_Chat.ReadBasic.All_ |Read names and members of user chat threads  |Read names and members of all chat threads. |Yes | No |
|_Chat.UpdatePolicyViolation.All_ |Flag chat messages for violating policy |Allows the app to update Microsoft Teams 1:1 or group chat messages by patching a set of Data Loss Prevention (DLP) policy violation properties to handle the output of DLP processing. | Yes | No |

> **Note:** For messages in a channel, see [ChannelMessage permissions](#channel-message-permissions).

## ChatMessage permissions ([private preview](#permissions-availability-status))

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChatMessage.Send_ (private preview) | Send user chat messages | Allows an app to send 1:1 and group chat messages in Microsoft Teams, on behalf of the signed-in user. | No | No |

---

## Cloud PC permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_CloudPC.Read.All_ | Read Cloud PCs | Allows the app to read Cloud PC objects such as provisioning policies, on behalf of the signed-in user. | No | No |
|_CloudPC.ReadWrite.All_ | Read and write Cloud PCs | Allows the app to create, read, update, and delete Cloud PC objects such as on-premises connections, provisioning policies, and device images, on behalf of the user. | Yes | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _CloudPC.Read.All_: View the properties of all Cloud PCs (`GET /deviceManagement/virtualEndpoint/cloudPCs`).
* _CloudPC.ReadWrite.All_: Edit the Cloud PC provisioning policy (`PATCH /deviceManagement/virtualEndpoint/provisioningPolicies/{id}`).

#### Application

None.

---

## Cloud printing permissions

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Printer.ReadWrite.All_ | Read and update printers | Allows the application to read and update printers without a signed-in user. Does not allow creating (registering) or deleting (unregistering) printers. | Yes |
| _PrintJob.Read.All_ | Read print jobs | Allows the application to read the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadBasic.All_ | Read basic information for print jobs | Allows the application to read the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |
| _PrintJob.ReadWrite.All_ | Read and write print jobs | Allows the application to read and update the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadWriteBasic.All_ | Read and write basic information for print jobs | Allows the application to read and update the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |

---

## Contacts permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Contacts.Read_ |Read user contacts  |Allows the app to read user contacts. |No | Yes |
|_Contacts.Read.Shared_ |Read user and shared contacts |Allows the app to read contacts that the user has permissions to access, including the user's own and shared contacts. |No |No|
|_Contacts.ReadWrite_ |Have full access to user contacts |Allows the app to create, read, update, and delete user contacts. |No |Yes|
|_Contacts.ReadWrite.Shared_ |Read and write user and shared contacts |Allows the app to create, read, update and delete contacts that the user has permissions to, including the user's own and shared contacts. |No |No|

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Contacts.Read_ |Read contacts in all mailboxes |Allows the app to read all contacts in all mailboxes without a signed-in user. |Yes |
|_Contacts.ReadWrite_ |Read and write contacts in all mailboxes |Allows the app to create, read, update, and delete all contacts in all mailboxes without a signed-in user. |Yes |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not all the mailboxes in the organization, even if the app has been granted the application permissions of Contacts.Read or Contacts.ReadWrite.

### Example usage
#### Delegated

* _Contacts.Read_: Read a contact from one of the top-level contact folders of the signed-in user (`GET /me/contactfolders/{Id}/contacts/{id}`).
* _Contacts.ReadWrite_: Update the contact photo of one of the signed-in user's contacts (`PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`).
* _Contacts.ReadWrite_: Add contacts to the root folder of the signed-in user (`POST /me/contacts`).

#### Application

* _Contacts.Read_: Read contacts from one of the top-level contact folders of any user in the organization (`GET /users/{id | userPrincipalName}/contactfolders/{Id}/contacts/{id}`).
* _Contacts.ReadWrite_: Update the photo for any contact of any user in an organization (`PUT /user/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`).
* _Contacts.ReadWrite_: Add contacts to the root folder of any user in the organization (`POST /users/{id | userPrincipalName}/contacts`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Device permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Device.Read_ |Read user devices |Allows the app to read a user's list of devices on behalf of the signed-in user. |No | Yes |
|_Device.Command_ |Communicate with user devices |Allows the app to launch another app or communicate with another app on a user's device on behalf of the signed-in user. |No | Yes |


#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Device.ReadWrite.All_ |Read and write devices |Allows the app to read and write all device properties without a signed in user. Does not allow device creation, device deletion, or update of device alternative security identifiers. |Yes |

> [!NOTE]
> Currently, when the application permission *Device.ReadWrite.All* is granted, the deprecated [Device Managers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#deprecated-roles) directory role will be granted to the app's service principal. This directory role assignment is not removed automatically when the associated application permissions is revoked. To ensure that an application's access to read or write to devices is removed, customers must also remove any related directory roles that were granted to the application.

### Example usage

#### Application

* _Device.ReadWrite.All_: Read all registered devices in the organization (`GET /devices`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Directory permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Directory.Read.All_ |Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps. **Note**: Users may consent to applications that require this permission if the application is registered in their own organization’s tenant.| Yes | No |
| _Directory.ReadWrite.All_ |Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups. It does not allow the app to delete users or groups, or reset user passwords. | Yes | No |
| _Directory.AccessAsUser.All_ |Access directory as the signed-in user  | Allows the app to have the same access to information in the directory as the signed-in user. | Yes | No |

<br/>

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Directory.Read.All_ | Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps, without a signed-in user. | Yes |
| _Directory.ReadWrite.All_ | Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups, without a signed-in user. Does not allow user or group deletion. | Yes |

### Remarks

Directory permissions provide the highest level of privilege for accessing directory resources such as [User](/graph/api/resources/user?view=graph-rest-1.0), [Group](/graph/api/resources/group?view=graph-rest-1.0), and [Device](/graph/api/resources/device?view=graph-rest-1.0) in an organization.

They also exclusively control access to other directory resources like: [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta), [schema extension APIs](/graph/api/resources/schemaextension?view=graph-rest-beta), [Privileged Identity Management (PIM) APIs](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta), as well as many of the resources and APIs listed under the **Azure Active Directory** node in the v1.0 and beta API reference documentation. These include administrative units, directory roles, directory settings, policy, and many more.

> [!NOTE]
> Currently, when the application permission *Directory.Read.All* is granted, the [Directory Readers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-readers-permissions) directory role will be granted to the app's service principal. When *Directory.ReadWrite.All* is granted, the [Directory Writers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-writers-permissions) directory role is also granted. These directory roles are not removed automatically when the associated application permissions are revoked. To remove an application's access to read or write to the directory, customers must also remove any directory roles that were granted to the application.

The _Directory.ReadWrite.All_ permission grants the following privileges:

- Full read of all directory resources (both declared properties and navigation properties)
- Create and update users
- Disable and enable users (but not company administrator)
- Set user alternative security id (but not administrators)
- Create and update groups
- Manage group memberships
- Update group owner
- Manage license assignments
- Define schema extensions on applications

> **Note**:
> - No rights to reset user passwords.
> - Updating another user's **businessPhones**, **mobilePhone**, or **otherMails** property is only allowed on users who are non-administrators or assigned one of the following roles: Directory Readers, Guest Inviter, Message Center Reader and Reports Reader. For more details, see Helpdesk (Password) Administrator in [Azure AD available roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).  This is the case for apps granted either the User.ReadWrite.All or Directory.ReadWrite.All delegated or application permissions.
> - No rights to delete resources (including users or groups).
> - Specifically excludes create or update for resources not listed above. This includes: application, oAauth2Permissiongrant, appRoleAssignment, device, servicePrincipal, organization, domains, and so on.


### Example usage

#### Delegated
* _Directory.Read.All_: List all administrative units in an organization (`GET /beta/administrativeUnits`)
* _Directory.ReadWrite.All_: Add members to a directory role (`POST /directoryRoles/{id}/members/$ref`)

#### Application
* _Directory.Read.All_: List all memberships of a user, including directory roles and administrative units (`GET /beta/users/{id}/memberOf`)
* _Directory.Read.All_: List all group members, including service principals (`GET /beta/groups/{id}/members`)
* _Directory.ReadWrite.All_: Add an owner to a group (`POST /groups/{id}/owners/$ref`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Domain permissions

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Domain.ReadWrite.All_ | Read and write domains | Allows the app to read and write domains without a signed-in user. | Yes |


## Education permissions

#### Delegated permissions

| Permission                      | Display String                                                   | Description                                                                                                                                                                                                                                                                      | Admin Consent Required | Microsoft Account supported |
| :------------------------------ | :--------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------------- | :-------------------------- |
| _EduAdministration.Read_        | Read education app settings                                      | Allows the app to read education app settings on behalf of the user.                                                                                                                                                                                                             | Yes                    | No                          |
| _EduAdministration.ReadWrite_   | Manage education app settings                                    | Allows the app to manage education app settings on behalf of the user.                                                                                                                                                                                                           | Yes                    | No                          |
| _EduAssignments.ReadBasic_      | Read users' class assignments without grades                     | Allows the app to read assignments without grades on behalf of the user                                                                                                                                                                                                          | Yes                    | No                          |
| _EduAssignments.ReadWriteBasic_ | Read and write users' class assignments without grades           | Allows the app to read and write assignments without grades on behalf of the user                                                                                                                                                                                                | Yes                    | No                          |
| _EduAssignments.Read_           | Read users' view of class assignments and their grades           | Allows the app to read assignments and their grades on behalf of the user                                                                                                                                                                                                        | Yes                    | No                          |
| _EduAssignments.ReadWrite_      | Read and write users' view of class assignments and their grades | Allows the app to read and write assignments and their grades on behalf of the user                                                                                                                                                                                              | Yes                    | No                          |
| _EduRoster.ReadBasic_           | Read a limited subset of users' view of the roster               | Allows the app to read a limited subset of the properties from the structure of schools and classes in an organization's roster and a limited subset of properties about users to be read on behalf of the user. Includes name, status, education role, email address and photo. | Yes                    | No                          |
| _EduRoster.Read_                | Read users' view of the roster                                   | Allows the app to read the structure of schools and classes in an organization's roster and education-specific information about users to be read on behalf of the user.                                                                                                         | Yes                    |
| _EduRoster.ReadWrite_           | Read and write users' view of the roster                         | Allows the app to read and write the structure of schools and classes in an organization's roster and education-specific information about users to be read and written on behalf of the user.                                                                                   | Yes                    |

#### Application permissions

| Permission                          | Display String                                      | Description                                                                                                                                                                   | Admin Consent Required |
| :---------------------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------------- |
| _EduAdministration.Read.All_        | Read Education app settings                         | Read the state and settings of all Microsoft education apps on behalf of the user                                                                                             | Yes                    |
| _EduAdministration.ReadWrite.All_   | Manage education app settings                       | Manage the state and settings of all Microsoft education apps on behalf of the user                                                                                           | yes                    |
| _EduAssignments.ReadBasic.All_      | Read class assignments without grades               | Allows the app to read assignments without grades for all users                                                                                                               | Yes                    |
| _EduAssignments.ReadWriteBasic.All_ | Read and write class assignments without grades     | Allows the app to read and write assignments without grades for all users                                                                                                     | Yes                    |
| _EduAssignments.Read.All_           | Read class assignments with grades                  | Allows the app to read assignments and their grades for all users                                                                                                             | Yes                    |
| _EduAssignments.ReadWrite.All_      | Read and write class assignments with grades        | Allows the app to read and write assignments and their grades for all users                                                                                                   | Yes                    |
| _EduRoster.ReadBasic.All_           | Read a limited subset of the organization's roster. | Allows the app to read a limited subset of both the structure of schools and classes in an organization's roster and education-specific information about all users.          | Yes                    |
| _EduRoster.Read.All_                | Read the organization's roster.                     | Allows the app to read the structure of schools and classes in the organization's roster and education-specific information about all users to be read.                       | Yes                    |
| _EduRoster.ReadWrite.All_           | Read and write the organization's roster.           | Allows the app to read and write the structure of schools and classes in the organization's roster and education-specific information about all users to be read and written. | Yes                    |

### Example usage

#### Delegated

* _EduAssignments.Read_: Get the signed-in student's assignment information (`GET /education/classes/{id}/assignments/{id}`)
* _EduAssignments.ReadWriteBasic_: Submit signed-in student assignment (`GET /education/classes/{id}/assignments/{id}submit`)
* _EduRoster.ReadBasic_: Classes a signed-in user attends or teaches (`GET /education/classes/{id}/members`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Entitlement management permissions

#### Delegated permissions

|Permission|Display String|Description|Admin Consent Required|
|:----------|:--------------|:-----------|:-------|
|_EntitlementManagement.ReadWrite.All_|Read and write entitlement management resources|Allows the app to request access to read and manage access packages and related entitlement management resources on behalf of the signed-in user.|Yes|
|_EntitlementManagement.Read.All_|Read entitlement management resources|Allows the app to request access to read access packages and related entitlement management resources on behalf of the signed-in user.|Yes|

## Files permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Files.Read_ | Read user files | Allows the app to read the signed-in user's files. | No | Yes |
| _Files.Read.All_ | Read all files that user can access | Allows the app to read all files the signed-in user can access. | No | Yes |
| _Files.ReadWrite_  | Have full access to user files | Allows the app to read, create, update, and delete the signed-in user's files. | No| Yes |
| _Files.ReadWrite.All_ | Have full access to all files user can access | Allows the app to read, create, update, and delete all files the signed-in user can access. | No | Yes |
| _Files.ReadWrite.AppFolder_ | Have full access to the application's folder (preview) | (Preview) Allows the app to read, create, update, and delete files in the application's folder. | No | No |
| _Files.Read.Selected_  | Read files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read files that the user selects. The app has access for several hours after the user selects a file.  | No | No |
| _Files.ReadWrite.Selected_ | Read and write files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. | No | No |

#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
| :--------- | :------------- | :---------- | :--------------------- |
| _Files.Read.All_ | Read files in all site collections | Allows the app to read all files in all site collections without a signed in user.  | Yes |
| _Files.ReadWrite.All_ | Read and write files in all site collections | Allows the app to read, create, update, and delete all files in all site collections without a signed in user. | Yes |

### Remarks

> **Note**: For personal accounts, Files.Read and Files.ReadWrite also grant access to files shared with the signed-in user.

The Files.Read.Selected and Files.ReadWrite.Selected delegated permissions are only valid on work or school accounts and are only exposed for working with [Office 365 file handlers (v1.0)](/previous-versions/office/office-365-api/).
They should not be used for directly calling Microsoft Graph APIs.

The Files.ReadWrite.AppFolder delegated permission is only valid for personal accounts and is used for accessing the [App Root special folder](https://dev.onedrive.com/misc/appfolder.htm) with the OneDrive [Get special folder](/graph/api/drive-get-specialfolder?view=graph-rest-1.0) Microsoft Graph API.


### Example usage

#### Delegated

* _Files.Read_: Read files stored in the signed-in user's OneDrive (`GET /me/drive/root/children`)
* _Files.Read.All_: Read files shared with the signed-in user (`GET /me/drive/root/sharedWithMe`)
* _Files.ReadWrite_: Write a file in the signed-in user's OneDrive (`PUT /me/drive/root/children/filename.txt/content`)
* _Files.ReadWrite.All_: Write a file shared with the user (`PUT /users/rgregg@contoso.com/drive/root/children/file.txt/content`)
* _Files.ReadWrite.AppFolder_: Write files into the app's folder in OneDrive (`PUT /me/drive/special/approot/children/file.txt/content`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---
## Financials permissions
#### Delegated permissions

|Permission|Display String|Description|Admin Consent Required|
|:----------|:--------------|:-----------|:-------|
|_Financials.ReadWrite.All_|Read and write financials data|Allows the app to read and write financials data on behalf of the signed-in user|No|

## Group permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Group.Read.All_ |    Read all groups | Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. | Yes | No |
| _Group.ReadWrite.All_ |    Read and write all groups| Allows the app to create groups and read all group properties and memberships on behalf of the signed-in user.  Also allows the app to read and write calendar, conversations, files, and other group content for all groups the signed-in user can access. Additionally allows group owners to manage their groups and allows group members to update group content. | Yes | No |
| _GroupMember.Read.All_ |    Read group memberships | Allows the app to list groups, read basic group properties and read membership of all groups the signed-in user has access to. | Yes | No |
| _GroupMember.ReadWrite.All_ |    Read and write group memberships | Allows the app to list groups, read basic properties, read and update the membership of the groups the signed-in user has access to. Group properties and owners cannot be updated and groups cannot be deleted. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Group.Read.All_ | Read all groups | Allows the app to read memberships for all groups without a signed-in user. Also allows the app to read calendar, conversations, files, and other group content for all groups.<br/><br/>**Note:** Not all group APIs support access using app-only permissions. See [known issues](known-issues.md) for examples. | Yes |
| _Group.ReadWrite.All_ | Read and write all groups | Allows the app to create groups, read and update group memberships, and delete groups. Also allows the app to read and write calendar, conversations, files, and other group content for all groups. All of these operations can be performed by the app without a signed-in user.<br/><br/>**Note:** Not all group APIs support access using app-only permissions. See [known issues](known-issues.md) for examples.| Yes |
| _Group.Selected_ |    Access selected groups | **Note: This permission is exposed in the Azure portal for a feature that is not  available for general use. Do not use this permission as it is subject to change.** | Yes |
| _GroupMember.Read.All_ |    Read group memberships | Allows the app to read memberships and basic group properties for all groups without a signed-in user. | Yes |
| _GroupMember.ReadWrite.All_ |    Read and write group memberships | Allows the app to list groups, read basic properties, read and update the membership of the groups this app has access to without a signed-in user. Group properties and owners cannot be updated and groups cannot be deleted. | Yes |
| _Group.Create_ |    Create groups | Allows the calling app to create groups without a signed-in user. Does not allow read, update, or deletion of any groups. | Yes |

### Remarks

Group functionality is not supported on personal Microsoft accounts.

For Microsoft 365 groups, Group permissions grant the app access to the contents of the group; for example, conversations, files, notes, and so on.

For application permissions, there are some limitations for the APIs that are supported. For more information, see [known issues](known-issues.md).

In some cases, an app may need [Directory permissions](#directory-permissions) to read some group properties like `member` and `memberOf`. For example, if a group has a one or more [servicePrincipals](/graph/api/resources/serviceprincipal?view=graph-rest-beta) as members, the app will need effective permissions to read service principals through being granted one of the _Directory.\*_ permissions, otherwise Microsoft Graph will return an error. (In the case of delegated permissions, the signed-in user will also need sufficient privileges in the organization to read service principals.) The same guidance applies for the `memberOf` property, which can return [administrativeUnits](/graph/api/resources/administrativeunit?view=graph-rest-beta).

To set a Microsoft 365 group's **preferredDataLocation** attribute, an app needs Directory.ReadWrite.All permission. When users in a multi-geo environment create a Microsoft 365 group, the **preferredDataLocation** value for the group is automatically set to that of the user. For more information about groups' preferred data location, see [Create a Microsoft 365 group with a specific PDL](/office365/enterprise/multi-geo-add-group-with-pdl).

Group permissions are used to control access to [Microsoft Teams](/graph/api/resources/teams-api-overview) resources and APIs. Personal Microsoft accounts are not supported.

Group permissions are also used to control access to [Microsoft Planner](/graph/api/resources/planner-overview) resources and APIs. Only delegated permissions are supported for Microsoft Planner APIs; application permissions are not supported. Personal Microsoft accounts are not supported.


### Example usage
#### Delegated

* _Group.Read.All_: Read all Microsoft 365 groups that the signed-in user is a member of (`GET /me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`).
* _Group.Read.All_: Read all Microsoft 365 group content like conversations (`GET /groups/{id}/conversations`).
* _Group.ReadWrite.All_: Update group properties, like photo (`PUT /groups/{id}/photo/$value`).
* _GroupMember.ReadWrite.All_: Update group members (`POST /groups/{id}/members/$ref`).
> **Note:**: This also requires _User.ReadBasic.All_ to read the user to add as a member.

#### Application

* _Group.Read.All_: Find all groups with name that starts with 'Sales' (`GET /groups?$filter=startswith(displayName,'Sales')`).
* _Group.ReadWrite.All_: Daemon service creates new events on a Microsoft 365 group's calendar (`POST /groups/{id}/events`).
* _Group.Create_: Creates a new group (`POST /groups`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---


## Identity provider permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityProvider.Read.All_ |   Read identity provider information  | Allows the app to read identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes | No |
| _IdentityProvider.ReadWrite.All_ |   Read and write identity provider information  |  Allows the app to read or write identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes | No |

### Remarks

_IdentityProvider.Read.All_ and _IdentityProvider.ReadWrite.All_ are valid only for work or school accounts. For an app to read or write identity providers with delegated permissions, the signed-in user must be assigned the Global Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _IdentityProvider.Read.All_: Read all identity providers configured in the tenant (`GET /beta/identityProviders`)
* _IdentityProvider.Read.All_: Read an existing identity provider (`GET /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Create an identity provider (`POST /beta/identityProviders`)
* _IdentityProvider.ReadWrite.All_ Update an existing identity provider (`PATCH /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Delete an existing identity provider (`DELETE /beta/identityProviders/{id}`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Identity risk event permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information  | Allows the app to read identity risk event information for all users in your organization on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information | Allows the app to read identity risk event information for all users in your organization without a signed-in user. | Yes |


### Remarks

_IdentityRiskEvent.Read.All_ is valid only for work or school accounts. For an app with delegated permissions to read identity risk information, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, or Security Reader. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated and Application

The following usages are valid for both delegated and application permissions:

* Read all risk events generated for all users in the tenant (`GET /beta/identityRiskEvents`)
* Read malware risk events generated by the Dorknet botnet (`GET /beta/malwareRiskEvents?$filter=malwareName eq 'Dorkbot'`)
* Read most recent 50 risk events (`GET /beta/identityRiskEvents?$orderBy=riskEventDateTime desc&top=50`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---


## Identity risky user permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityRiskyUser.Read.All_ |   Read identity user risk  information  | Allows the app to read identity user risk information for all users in your organization on behalf of the signed-in user. | Yes | No |
| _IdentityRiskyUser.ReadWrite.All_ |   Read and update identity user risk  information  | Allows the app to read and update identity user risk information for all users in your organization on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityRiskyUser.Read.All_ |   Read identity user risk  information | Allows the app to read identity user risk information for all users in your organization without a signed-in user. | Yes |
| _IdentityRiskyUser.ReadWrite.All_ |   Read and update identity user risk  information | Allows the app to read and update identity user risk information for all users in your organization without a signed-in user. | Yes |


### Remarks

_IdentityRiskyUser.Read.All_ and _IdentityRiskyUser.ReadWrite.ALL_ is valid only for work or school accounts. For an app with delegated permissions to read identity user risk information, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, or Security Reader. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated and Application

The following usages are valid for both delegated and application permissions:

* Read all risky users and properties in the tenant (`GET /beta/riskyUsers`)
* Read all risky users whose aggregate risk level is Medium (`GET /beta/riskyUsers?$filter=risk/riskLevelAggregated eq microsoft.graph.riskLevel'medium'`)
* Read the risk information for a specific user (`GET /beta/riskyUsers/$filter=id eq ‘{userObjectId}’`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Identity user flow permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityUserFlow.Read.All_ |   Read all identity user flows in a tenant  | Allows the app to read your organization's user flows. | Yes | No |
| _IdentityUserFlow.ReadWrite.All_ |   Read and write all identity user flows in a tenant.    | Allows the app to read or write your organization's user flows. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityUserFlow.Read.All_ |   Read all identity user flows in a tenant  | Allows the app to read your organization's user flows. | Yes | No |
| _IdentityUserFlow.ReadWrite.All_ |   Read and write all identity user flows in a tenant.    | Allows the app to read or write your organization's user flows. | Yes | No |

### Remarks

_IdentityUserFlow.Read.All_ and _IdentityUserFlow.ReadWrite.ALL_ is valid only for work or school accounts.

For an app with delegated permissions to read user flows, the signed-in user must be a member of one of the following administrator roles: Global Administrator, External Identities User Flow Administrator, or Global Reader. For an app with delegated permissions to write user flows, the signed-in user must be a member of one of the following administrator roles: Global Administrator or External Identities User Flow Administrator.

For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated and Application

The following usages are valid for both delegated and application permissions:

* _IdentityUserFlow.Read.All_: Read all user flows in an Azure AD B2C tenant (`GET beta/identity/b2cUserFlows`)
* _IdentityUserFlow.Read.All_: Read all user flows in an Azure Active Directory (Azure AD) tenant (`GET beta/identity/b2xUserFlows`)
* _IdentityUserFlow.Read.All_: Read all user attribute assignments in an Azure AD B2C user flow (`GET beta/identity/b2cUserFlows/{id}/userAttributeAssignments`)
* _IdentityUserFlow.ReadWrite.All_: Create a new user flow in an Azure AD B2C tenant (`POST beta/identity/b2cUserFlows`)
* _IdentityUserFlow.ReadWrite.All_: Create a new user flow in an Azure Active Directory (Azure AD) tenant (`POST beta/identity/b2xUserflows`)
* _IdentitytUserFlow.ReadWrite.All_: Add an identity provider to an Azure AD B2C user flow (`PATCH beta/identity/b2cUserFlows/{id}/identityProviders/$ref`)
* _IdentityUserFlow.ReadWrite.All_: Remove an identity provider from an Azure AD B2C user flow (`DELETE beta/identity/b2cUserFlows/{id}/identityProviders/{id}`)
* _IdentityUserFlow.ReadWrite.All_: Create a user attribute assignment in an Azure AD B2C user flow (`POST beta/identity/b2cUserFlows/{id}/userAttributeAssignments`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Information protection policy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _InformationProtectionPolicy.Read_ |   Read user sensitivity labels and label policies | Allows an app to read information protection sensitivity labels and label policy settings, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _InformationProtectionPolicy.Read.All_ |   Read all published labels and label policies for an organization | Allows an app to read published sensitivity labels and label policy settings for the entire organization or a specific user, without a signed in user. | Yes |

---


## Intune device management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_DeviceManagementApps.Read.All_ | Read Microsoft Intune apps | Allows the app to read the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementApps.ReadWrite.All_ | Read and write Microsoft Intune apps | Allows the app to read and write the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementConfiguration.Read.All_ | Read Microsoft Intune device configuration and policies | Allows the app to read properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementConfiguration.ReadWrite.All_ | Read and write Microsoft Intune device configuration and policies  | Allows the app to read and write properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementManagedDevices.PrivilegedOperations.All_ | Perform user-impacting remote actions on Microsoft Intune devices | Allows the app to perform remote high impact actions such as wiping the device or resetting the passcode on devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.Read.All_ | Read Microsoft Intune devices | Allows the app to read the properties of devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.ReadWrite.All_ | Read and write Microsoft Intune devices | Allows the app to read and write the properties of devices managed by Microsoft Intune. Does not allow high impact operations such as remote wipe and password reset on the device’s owner. | Yes | No |
|_DeviceManagementRBAC.Read.All_ | Read Microsoft Intune RBAC settings | Allows the app to read the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementRBAC.ReadWrite.All_ | Read and write Microsoft Intune RBAC settings | Allows the app to read and write the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementServiceConfig.Read.All_ | Read Microsoft Intune configuration | Allows the app to read Intune service properties including device enrollment and third party service connection configuration. | Yes | No |
|_DeviceManagementServiceConfig.ReadWrite.All_ | Read and write Microsoft Intune configuration | Allows the app to read and write Microsoft Intune service properties including device enrollment and third party service connection configuration. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_DeviceManagementApps.Read.All_ | Read Microsoft Intune apps | Allows the app to read the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementApps.ReadWrite.All_ | Read and write Microsoft Intune apps | Allows the app to read and write the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementConfiguration.Read.All_ | Read Microsoft Intune device configuration and policies | Allows the app to read properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementConfiguration.ReadWrite.All_ | Read and write Microsoft Intune device configuration and policies  | Allows the app to read and write properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementManagedDevices.PrivilegedOperations.All_ | Perform user-impacting remote actions on Microsoft Intune devices | Allows the app to perform remote high impact actions such as wiping the device or resetting the passcode on devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.Read.All_ | Read Microsoft Intune devices | Allows the app to read the properties of devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.ReadWrite.All_ | Read and write Microsoft Intune devices | Allows the app to read and write the properties of devices managed by Microsoft Intune. Does not allow high impact operations such as remote wipe and password reset on the device’s owner. | Yes | No |
|_DeviceManagementRBAC.Read.All_ | Read Microsoft Intune RBAC settings | Allows the app to read the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementRBAC.ReadWrite.All_ | Read and write Microsoft Intune RBAC settings | Allows the app to read and write the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementServiceConfig.Read.All_ | Read Microsoft Intune configuration | Allows the app to read Intune service properties including device enrollment and third party service connection configuration. | Yes | No |
|_DeviceManagementServiceConfig.ReadWrite.All_ | Read and write Microsoft Intune configuration | Allows the app to read and write Microsoft Intune service properties including device enrollment and third party service connection configuration. | Yes | No |

### Remarks

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

These permissions are only valid for work or school accounts.

### Example usage

#### Delegated

* _DeviceManagementServiceConfiguration.Read.All_: Check the current state of the Intune subscription (`GET /deviceManagement/subscriptionState`).
* _DeviceManagementServiceConfiguration.ReadWrite.All_: Create new Terms and Conditions (`POST /deviceManagement/termsAndConditions`).
* _DeviceManagementConfiguration.Read.All_: Find the status of a device configuration (`GET /deviceManagement/deviceConfigurations/{id}/deviceStatuses`).
* _DeviceManagementConfiguration.ReadWrite.All_: Assign a device compliance policy to a group (`POST deviceCompliancePolicies/{id}/assign`).
* _DeviceManagementApps.Read.All_: Find all the Windows Store apps published to Intune (`GET /deviceAppManagement/mobileApps?$filter=isOf('microsoft.graph.windowsStoreApp')`).
* _DeviceManagementApps.ReadWrite.All_: Publish a new application (`POST /deviceAppManagement/mobileApps`).
* _DeviceManagementRBAC.Read.All_: Find a role assignment by name (`GET /deviceManagement/roleAssignments?$filter=displayName eq 'My Role Assignment'`).
* _DeviceManagementRBAC.ReadWrite.All_: Create a new custom role (`POST /deviceManagement/roleDefinitions`).
* _DeviceManagementManagedDevices.Read.All_: Find a managed device by name (`GET /managedDevices/?$filter=deviceName eq 'My Device'`).
* _DeviceManagementManagedDevices.ReadWrite.All_: Remove a managed device (`DELETE /managedDevices/{id}`).
* _DeviceManagementManagedDevices.PrivilegedOperations.All_: Reset the passcode on a user's managed device (`POST /managedDevices/{id}/resetPasscode`).

#### Application

* _DeviceManagementServiceConfiguration.Read.All_: Check the current state of the Intune subscription (`GET /deviceManagement/subscriptionState`).
* _DeviceManagementServiceConfiguration.ReadWrite.All_: Create new Terms and Conditions (`POST /deviceManagement/termsAndConditions`).
* _DeviceManagementConfiguration.Read.All_: Find the status of a device configuration (`GET /deviceManagement/deviceConfigurations/{id}/deviceStatuses`).
* _DeviceManagementConfiguration.ReadWrite.All_: Assign a device compliance policy to a group (`POST deviceCompliancePolicies/{id}/assign`).
* _DeviceManagementApps.Read.All_: Find all the Windows Store apps published to Intune (`GET /deviceAppManagement/mobileApps?$filter=isOf('microsoft.graph.windowsStoreApp')`).
* _DeviceManagementApps.ReadWrite.All_: Publish a new application (`POST /deviceAppManagement/mobileApps`).
* _DeviceManagementRBAC.Read.All_: Find a role assignment by name (`GET /deviceManagement/roleAssignments?$filter=displayName eq 'My Role Assignment'`).
* _DeviceManagementRBAC.ReadWrite.All_: Create a new custom role (`POST /deviceManagement/roleDefinitions`).
* _DeviceManagementManagedDevices.Read.All_: Find a managed device by name (`GET /managedDevices/?$filter=deviceName eq 'My Device'`).
* _DeviceManagementManagedDevices.ReadWrite.All_: Remove a managed device (`DELETE /managedDevices/{id}`).
* _DeviceManagementManagedDevices.PrivilegedOperations.All_: Reset the passcode on a user's managed device (`POST /managedDevices/{id}/resetPasscode`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Mail permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Mail.Read_ |    Read user mail | Allows the app to read email in user mailboxes. | No | Yes
| _Mail.ReadBasic_ |    Read user basic mail | Allows the app to read email in the signed-in user's mailbox, except for **body**, **bodyPreview**, **uniqueBody**, **attachments**, **extensions**, and any extended properties. Does not include permissions to search messages. | No | No
| _Mail.ReadWrite_ |    Read and write access to user mail | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail.| No | Yes
| _Mail.Read.Shared_ |    Read user and shared mail | Allows the app to read mail that the user can access, including the user's own and shared mail. | No | No
| _Mail.ReadWrite.Shared_ |    Read and write user and shared mail | Allows the app to create, read, update, and delete mail that the user has permission to access, including the user's own and shared mail. Does not include permission to send mail. | No | No
| _Mail.Send_ |    Send mail as a user | Allows the app to send mail as users in the organization. | No | Yes
| _Mail.Send.Shared_ |    Send mail on behalf of others | Allows the app to send mail as the signed-in user, including sending on-behalf of others. | No | No
| _MailboxSettings.Read_ |  Read user mailbox settings | Allows the app to the read user's mailbox settings. Does not include permission to send mail. | No | Yes
| _MailboxSettings.ReadWrite_ |  Read and write user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings. Does not include permission to directly send mail, but allows the app to create rules that can forward or redirect messages. | No | Yes
| _IMAP.AccessAsUser.All_ | Read and write access to user mail via IMAP | Allows the app to read, update, create and delete email in user mailboxes. Does not include permission to send mail. | No | Yes
| _POP.AccessAsUser.All_ | Read and write access to user mail via POP | Allows the app to read, update, create and delete email in user mailboxes. Does not include permission to send mail. | No | Yes
| _SMTP.Send_ | Send mail as a user using SMTP AUTH | Allows the app to send mail as users in the organization. | No | Yes

#### Application permissions

| Permission                  | Display String                           | Description                                                                                                                                                                        | Admin Consent Required |
|:----------------------------|:-----------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|
| _Mail.Read_                 | Read mail in all mailboxes               | Allows the app to read mail in all mailboxes without a signed-in user.                                                                                                             | Yes                    |
| _Mail.ReadBasic.All_        | Read all users basic mail                | Allows the app to read all users mailboxes except Body, BodyPreview, UniqueBody, Attachments, ExtendedProperties, and Extensions. Does not include permissions to search messages. | Yes                    |
| _Mail.ReadWrite_            | Read and write mail in all mailboxes     | Allows the app to create, read, update, and delete mail in all mailboxes without a signed-in user. Does not include permission to send mail.                                       | Yes                    |
| _Mail.Send_                 | Send mail as any user                    | Allows the app to send mail as any user without a signed-in user.                                                                                                                  | Yes                    |
| _MailboxSettings.Read_      | Read all user mailbox settings           | Allows the app to read user's mailbox settings without a signed-in user. Does not include permission to send mail.                                                                 | No                     |
| _MailboxSettings.ReadWrite_ | Read and write all user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings without a signed-in user. Does not include permission to send mail.                                     | Yes                    |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not to all the mailboxes in the organization, even if the app has been granted the application permissions of Mail.Read, Mail.ReadWrite, Mail.Send, MailboxSettings.Read, or MailboxSettings.ReadWrite.


### Remarks

_Mail.Read.Shared_, _Mail.ReadWrite.Shared_, and _Mail.Send.Shared_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Mail.Send_ or _Mail.Send.Shared_ permission, an app can send mail and save a copy to the user's Sent Items folder, even if the app does not use a corresponding _Mail.ReadWrite_ or _Mail.ReadWrite.Shared_ permission.

### Example usage

#### Delegated

* _Mail.Read_: List messages in the user's inbox, sorted by `receivedDateTime` (`GET /me/mailfolders/inbox/messages?$orderby=receivedDateTime DESC`).
* _Mail.Read.Shared_: Find all messages with attachments in a user's inbox that has shared their inbox with the signed-in user (`GET /users{id | userPrincipalName}/mailfolders/inbox/messages?$filter=hasAttachments eq true`).
* _Mail.ReadWrite_: Mark a message read (`PATCH /me/messages/{id}`).
* _Mail.Send_: Send a message (`POST /me/sendmail`).
* _MailboxSettings.ReadWrite_: Update the user's automatic reply (`PATCH /me/mailboxSettings`).

#### Application

* _Mail.Read_: Find messages from bob@contoso.com (`GET /users/{id | userPrincipalName}/messages?$filter=from/emailAddress/address eq 'bob@contoso.com'`).
* _Mail.ReadWrite_: Create a new folder in the Inbox named `Expense Reports` (`POST /users/{id | userPrincipalName}/mailfolders`).
* _Mail.Send_: Send a message (`POST /users/{id | userPrincipalName}/sendmail`).
* _MailboxSettings.Read_: Get the default timezone for the user's mailbox (`GET /users/{id | userPrincipalName}/mailboxSettings/timeZone`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Member permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Member.Read.Hidden_ | Read hidden memberships | Allows the app to read the memberships of hidden groups and administrative units on behalf of the signed-in user, for those hidden groups and administrative units that the signed-in user has access to. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Member.Read.Hidden_ | Read all hidden memberships | Allows the app to read the memberships of hidden groups and administrative units without a signed-in user. | Yes |

### Remarks
_Member.Read.Hidden_ is valid only on work or school accounts.

Membership in some Microsoft 365 groups can be hidden. This means that only the members of the group can view its members. This feature can be used to help comply with regulations that require an organization to hide group membership from outsiders (for example, a Microsoft 365 group that represents students enrolled in a class).

### Example usage

#### Delegated

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership on behalf of the signed-in user (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership on behalf of the signed-in user (`GET /groups/{id}/members`).

#### Application

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership (`GET /groups/{id}/members`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Notes permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Notes.Read_ |    Read user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user. | No | Yes
| _Notes.Create_ |    Create user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user.| No | Yes
| _Notes.ReadWrite_ |    Read and write user OneNote notebooks | Allows the app to read, share, and modify OneNote notebooks on behalf of the signed-in user. | No | Yes
| _Notes.Read.All_ |    Read all OneNote notebooks that user can access | Allows the app to read OneNote notebooks that the signed-in user has access to in the organization. | No | No
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks that user can access | Allows the app to read, share, and modify OneNote notebooks that the signed-in user has access to in the organization.| No | No
| _Notes.ReadWrite.CreatedByApp_ |    Limited notebook access (deprecated) | **Deprecated** <br/>Do not use. No privileges are granted by this permission. | No | No

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Notes.Read.All_ |    Read all OneNote notebooks | Allows the app to read all the OneNote notebooks in your organization, without a signed-in user. | Yes |
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks | Allows the app to read, share, and modify all the OneNote notebooks in your organization, without a signed-in user.| Yes |


### Remarks
_Notes.Read.All_ and _Notes.ReadWrite.All_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Notes.Create_ permission, an app can view the OneNote notebook hierarchy of the signed-in user and create OneNote content (notebooks, section groups, sections, pages, etc.).

_Notes.ReadWrite_ and _Notes.ReadWrite.All_ also allow the app to modify the permissions on the OneNote content that can be accessed by the signed-in user.

For work or school accounts, _Notes.Read.All_ and _Notes.ReadWrite.All_ allow the app to access other users' OneNote content that the signed-in user has permission to within the organization.

### Example usage
#### Delegated

* _Notes.Create_: Create a new notebooks for the signed-in user (`POST /me/onenote/notebooks`).
* _Notes.Read_: Read the notebooks for the signed-in user (`GET /me/onenote/notebooks`).
* _Notes.Read.All_: Get all notebooks that the signed-in user has access to within the organization (`GET /me/onenote/notebooks?includesharednotebooks=true`).
* _Notes.ReadWrite_: Update the page of the signed-in user (`PATCH /me/onenote/pages/{id}/$value`).
* _Notes.ReadWrite.All_: Create a page in another user's notebook that the signed-in user has access to within the organization (`POST /users/{id}/onenote/pages`).

#### Application

* _Notes.Read.All_: Read all users notebooks in a group (`GET /groups/{id}/onenote/notebooks`).
* _Notes.ReadWrite.All_: Update the page in a notebook for any user in the organization (`PATCH /users/{id}/onenote/pages/{id}/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Notifications permissions
#### Delegated permissions
|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Notifications.ReadWrite.CreatedByApp_ | Deliver and manage notifications for this app. | Allow the app to deliver its notifications on behalf of signed-in users. Also allows the app to read, update, and delete the user’s notification items for this app. |No |
### Remarks
*Notifications.ReadWrite.CreatedByApp* is valid for both Microsoft accounts and work or school accounts.
The *CreatedByApp* constraint associated with this permission indicates that the service will apply implicit filtering to results based on the identity of the calling app, either the Microsoft account app ID or a set of app IDs configured for a cross-platform application identity.
### Example usage
#### Delegated
* _Notifications.ReadWrite.CreatedByApp_: Publish a user-centric notification, which might then be delivered to the user’s multiple application clients running on different endpoints. (POST /me/notifications/).

---

## Online meetings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_OnlineMeetings.Read_|Read Online Meeting.|Allows an app to read online meeting details on behalf of the signed-in user.|No|No|
|_OnlineMeetings.ReadWrite_|Read and Create Online Meetings.|Allows an app to create, read online meetings on behalf of the signed-in user. |No|No|

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_OnlineMeetings.Read.All_|Read Online Meeting details from the app |Allows the app to read online meeting details in your organization without a signed-in user.|Yes|
|_OnlineMeetings.ReadWrite.All_|Read Online Meeting details from the app|Allows an app to create, read online meetings without a signed-in user.|Yes|

> **Important**
Administrators can configure [application access policy](cloud-communication-online-meeting-application-access-policy.md) to allow apps to access online meetings on behalf of a user.

### Example usage

#### Delegated

* _OnlineMeetings.Read_: Retrieve the properties and relationships of an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) (`GET /beta/communications/onlinemeetings/{default id}`).
* _OnlineMeetings.ReadWrite_: Create an [online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-beta) (`POST /beta/communications/onlinemeetings`).

#### Application

* _OnlineMeetings.Read.All_
  * Retrieve the properties and relationships of an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) (`GET /beta/communications/onlinemeetings/?$filter=VideoTeleconferenceId%20eq%20'{id}'`).
  * Retrieve an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) on behalf of a user (`GET /beta/users/{userId}/onlineMeetings/{id})
* _OnlineMeetings.ReadWrite.All_
  * Create an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) on behalf of a user (`POST /beta/users/{userId}/onlineMeetings/)
  * Update an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) on behalf of a user (`PATCH /beta/users/{userId}/onlineMeetings/{id})
  * Delete an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta) on behalf of a user (`DELETE /beta/users/{userId}/onlineMeetings/{id})
  
> **Note**: Creating an [online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-beta) creates a meeting on behalf of a user, but does not show it on the user's Calendar.

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## On-premises publishing profiles permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| OnPremisesPublishingProfiles.ReadWrite.All |    Access  On-Premises Publishing Profiles| Allows the app to manage hybrid identity service configuration by creating, viewing, updating and deleting on-premises published resources, on-premises agents and agent groups, on behalf of the signed-in user. | No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| OnPremisesPublishingProfiles.ReadWrite.All |    Access  On-Premises Publishing Profiles| Allows the app to manage hybrid identity service configuration by creating, viewing, updating and deleting on-premises published resources, on-premises agents and agent groups, on behalf of the signed-in user. | No | No |

---

## OpenID permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _email_ |    View users' email address | Allows the app to read your users' primary email address. | No | No |
| _offline_access_ |    Access user's data anytime | Allows the app to read and update user data, even when they are not currently using the app.| No | No |
| _openid_ |    Sign users in | Allows users to sign in to the app with their work or school accounts and allows the app to see basic user profile information.| No | No |
| _profile_ |    View users' basic profile | Allows the app to see your users' basic profile (name, picture, user name).| No | No |

#### Application permissions

None.

### Remarks
You can use these permissions to specify artifacts that you want returned in Azure AD authorization and token requests. They are supported differently by the Azure AD v1.0 and v2.0 endpoints.

With the Azure AD (v1.0) endpoint, only the _openid_ permission is used. You specify it in the *scope* parameter in an authorization request to return an ID token when you use the OpenID Connect protocol to sign in a user to your app. For more information, see [Authorize access to web applications using OpenID Connect and Azure Active Directory](/azure/active-directory/develop/active-directory-protocols-openid-connect-code). To successfully return an ID token, you must also make sure that the _User.Read_ permission is configured when you register your app.

With the Azure AD v2.0 endpoint, you specify the _offline\_access_ permission in the _scope_ parameter to explicitly request a refresh token when using the OAuth 2.0 or OpenID Connect protocols. With OpenID Connect, you specify the _openid_ permission to request an ID token. You can also specify the _email_ permission, _profile_ permission, or both to return additional claims in the ID token. You do not need to specify _User.Read_ to return an ID token with the v2.0 endpoint. For more information, see [OpenID Connect scopes](/azure/active-directory/develop/active-directory-v2-scopes#openid-connect-scopes).

> **Important** The Microsoft Authentication Library (MSAL) currently specifies _offline\_access_, _openid_, _profile_, and _email_ by default in authorization and token requests. This means that, for the default case, if you specify these permissions explicitly, Azure AD may return an error.

---

## Organization permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Organization.Read.All_ |Read organization information | Allows the app to read the organization and related resources, on behalf of the signed-in user. Related resources include things like subscribed SKUs and tenant branding information.|Yes | No |
| _Organization.ReadWrite.All_ |Read and write organization information | Allows the app to read and write the organization and related resources, on behalf of the signed-in user. Related resources include things like subscribed SKUs and tenant branding information. |Yes | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Organization.Read.All_ |Read organization information | Allows the app to read the organization and related resources, without a signed-in user. Related resources include things like subscribed SKUs and tenant branding information. | Yes |
| _Organization.ReadWrite.All_ |Read and write organization information | Allows the app to read and write the organization and related resources, without a signed-in user. Related resources include things like subscribed SKUs and tenant branding information. |Yes |


### Example usage

#### Delegated

* _Organization.Read.All_: Get organization information (`GET /organization`).
* _Organization.Read.All_: Get the SKUs that the organization has subscribed to (`GET /subscribedSkus`).

#### Application

* _Organization.ReadWrite.All_: Update organization information (such as **technicalNotificationMails**) (`PATCH /organization/{id}`).

---

## Organizational contact permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _OrgContact.Read.All_ | Read organizational contacts|Allows the app to read all organizational contacts on behalf of the signed-in user. These contacts are managed by the organization and are different from a user's personal contacts.|Yes | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _OrgContact.Read.All_ |Read organizational contacts | Allows the app to read all organizational contacts without a signed-in user.  These contacts are managed by the organization and are different from a user's personal contacts. | Yes |

### Example usage

#### Delegated

* _OrgContact.Read.All_: Get all organizational contacts (`GET /contacts`).

---

## People permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _People.Read_ |    Read users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). | No | Yes |
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. <br/><br/>The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes |

### Remarks

The People.Read.All permission is only valid for work and school accounts.

### Example usage

#### Delegated
* _People.Read_: Read a list of relevant people (`GET /me/people`)
* _People.Read.All_: Read a list of relevant people to another user in the same organization (`GET /users('{id})/people`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Privileged access permissions

#### Delegated permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:---------- |:-------------- |:----------- |:---------------------- |:----------------- |
| _PrivilegedAccess.ReadWrite.AzureAD_ |Read and write Privileged Identity Management data for Directory  | Allows the app to have read and write access to Privileged Identity Management APIs for Azure AD. | Yes | No |
| _PrivilegedAccess.ReadWrite.AzureADGroups_ |Read and write Privileged Identity Management data for privileged access groups | Allows the app to have read and write access to Privileged Identity Management APIs for groups. | Yes | No |
| _PrivilegedAccess.ReadWrite.AzureResources_ |Read and write Privileged Identity Management data for Azure Resources | Allows the app to have read and write access to Privileged Identity Management APIs for Azure resources. | Yes | No |

#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
|:---------- |:-------------- |:----------- |:---------------------- |
| _PrivilegedAccess.Read.AzureAD_ |Read Privileged Identity Management data for Directory  | Allows the app to have read access to Privileged Identity Management APIs for Azure AD. | Yes |
| _PrivilegedAccess.Read.AzureADGroups_ |Read Privileged Identity Management data for privileged access groups | Allows the app to have read access to Privileged Identity Management APIs for groups. | Yes |
| _PrivilegedAccess.Read.AzureADResources_ |Read Privileged Identity Management data for Azure resources | Allows the app to have read access to Privileged Identity Management APIs for Azure AD resources. | Yes |

---

## Places permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Place.Read.All_ |   Read all company places | Allows the app to read company places (conference rooms and room lists) set up in Exchange Online for the tenant. |Yes | No |
| _Place.ReadWrite.All_ |   Read and write all company places | Allows the app to read and write company places (conference rooms and room lists) set up in Exchange Online for the tenant. |Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Place.Read.All_ |   Read all company places | Allows the app to read company places (conference rooms and room lists) for calendar events and other applications.| Yes |

---

## Policy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Policy.Read.All_ | Read your organization's policies | Allows the app to read your organization's policies on behalf of the signed-in user. | Yes | No |
| _Policy.Read.PermissionGrant_ | Read consent and permission grant policies | Allows the app to read policies related to consent and permission grants for applications, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.ApplicationConfiguration_ | Read and write your organization's application configuration policies | Allows the app to read and write your organization's application configuration policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AuthenticationFlows_ | Read and write your organization's authentication flow policies | Allows the app to read and write the authentication flow policies, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.Authorization_ | Read and write your organization's authorization policy | Allows the app to read and write your organization's authorization policy on behalf of the signed-in user.  For example, authorization policies can control some of the permissions that the out-of-the-box user role has by default. | Yes | No |
| _Policy.ReadWrite.ConditionalAccess_ | Read and write your organization's conditional access policies | Allows the app to read and write your organization's conditional access policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.FeatureRollout_ | Read and write your organization's feature rollout policies | Allows the app to read and write your organization's feature rollout policies on behalf of the signed-in user. Includes abilities to assign and remove users and groups to rollout of a specific feature. | Yes | No |
| _Policy.ReadWrite.PermissionGrant_ | Manage consent and permission grant policies | Allows the app to manage policies related to consent and permission grants for applications, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.TrustFramework_ | Read and write your organization's trust framework policies | Allows the app to read and write your organization's trust framework policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AuthenticationMethod_ | Read and write your organization's authentication method policies | Allows the app to read and write the authentication method policies, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Policy.Read.All_ | Read your organization's policies | Allows the app to read all your organization's policies without a signed in user. | Yes |
| _Policy.Read.PermissionGrant_ | Read consent and permission grant policies | Allows the app to read policies related to consent and permission grants for applications, without a signed-in user. | Yes |
| _Policy.Read.ApplicationConfiguration_ | Read your organization's application configuration policies | Allows the app to read all your organization's application configuration policies without a signed in user. | Yes |
| _Policy.ReadWrite.AuthenticationFlows_ | Read and write your organization's authentication flow policies | Allows the app to read and write the authentication flow policies for the tenant, without a signed in user. | Yes |
| _Policy.ReadWrite.Authorization_ | Read and write your organization's authorization policy | Allows the app to read and write your organization's authorization policy on behalf of the signed-in user.  For example, authorization policies can control some of the permissions that the out-of-the-box user role has by default. | Yes | No |
| _Policy.ReadWrite.FeatureRollout_ | Read and write feature rollout policies | Allows the app to read and write feature rollout policies without a signed-in user. Includes abilities to assign and remove users and groups to rollout of a specific feature. | Yes |
| _Policy.ReadWrite.PermissionGrant_ | Manage consent and permission grant policies | Allows the app to manage policies related to consent and permission grants for applications, without a signed-in user. | Yes |
| _Policy.ReadWrite.TrustFramework_ | Read and write your organization's trust framework policies | Allows the app to read and write your organization's trust framework policies without a signed in user. | Yes |
| _Policy.ReadWrite.AuthenticationMethod_ | Read and write your organization's authentication method policies | Allows the app to read and write the authentication method policies, without a signed-in user. | Yes |

### Example usage

The following usages are valid for both delegated and application permissions:

* _Policy.Read.All_: Read your organization's policies (`GET /policies`)
* _Policy.Read.All_: Read your organization's trust framework policies (`GET /beta/trustFramework/policies`)
* _Policy.Read.All_: Read your organization's feature rollout policies (`GET /beta/directory/featureRolloutPolicies`)
* _Policy.ReadWrite.ApplicationConfiguration_: Read and write your organization's application configuration policies (`POST /beta/policies/tokenLifetimePolicies`)
* _Policy.ReadWrite.AuthenticationFlows_: Read and write your organization's authentication flows policy (`PATCH /beta/policies/authenticationFlowsPolicy`)
* _Policy.ReadWrite.ConditionalAccess_: Read and write your organization's conditional access policies (`POST /beta/identity/conditionalAccess/policies`)
* _Policy.ReadWrite.FeatureRollout_: Read and write your organization's feature rollout policies (`POST /beta/directory/featureRolloutPolicies`)
* _Policy.ReadWrite.TrustFramework_: Read and write your organization's trust framework policies (`POST /beta/trustFramework/policies`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Presence permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Presence.Read_ | Read user's presence information | Allows the app to read presence information on behalf of the signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | No |
| _Presence.Read.All_ |   Read presence information of all users in your organization | Allows the app to read presence information of all users in the directory on behalf of the signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | No |

### Example usage

* _Presence.Read_: If you're signed in, retrieve your own presence information (`GET /me/presence`)
* _Presence.Read.All_: Retrieve the presence information of another user (`GET /users/{id}/presence`)
* _Presence.Read.All_: Retrieve the presence information of multiple users (`POST /communications/getPresencesByUserId`)

---

## Programs and program controls permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ProgramControl.Read.All_ |   Read all programs  | Allows the app to read programs on behalf of the signed-in user. | Yes | No |
| _ProgramControl.ReadWrite.All_ |   Manage all programs  | Allows the app to read and write programs on behalf of the signed-in user. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _ProgramControl.Read.All_ |   Read all programs | Allows the app to read programs without a signed-in user. | Yes |
| _ProgramControl.ReadWrite.All_ |   Manage all programs | Allows the app to read and write programs without a signed-in user. | Yes |

### Remarks

_ProgramControl.Read.All_ and _ProgramControl.ReadWrite.All_ are valid only for work or school accounts.

For an app with delegated permissions to read programs and program controls, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or User Administrator. For an app with delegated permissions to write programs and program controls, the signed-in user must be a member of one of the following administrator roles: Global Administrator or User Administrator.  For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

---

## Reports permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports on behalf of the signed-in user. Services that provide usage reports include Microsoft 365 and Azure Active Directory. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports without a signed-in user. Services that provide usage reports include Microsoft 365 and Azure Active Directory. | Yes |

### Remarks
- Reports permissions are only valid for work or school accounts.
- For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user an Azure AD limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md).

### Example usage

#### Application

* _Reports.Read.All_: Read usage detail report of email apps with period of 7 days (`GET /reports/EmailAppUsage(view='Detail',period='D7')/content`).
* _Reports.Read.All_: Read activity detail report of email with date of '2017-01-01' (`GET /reports/EmailActivity(view='Detail',data='2017-01-01')/content`).
* _Reports.Read.All_: Read Microsoft 365 activations detail report (`GET /reports/Office365Activations(view='Detail')/content`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Role management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _RoleManagement.Read.All_ | Read role management data for all RBAC providers | Allows the app to read the role-based access control (RBAC) settings for all supported [RBAC providers](/graph/api/resources/rolemanagement?view=graph-rest-beta), on behalf of the signed-in user. This includes reading role definitions and role assignments. | Yes | No |
| _RoleManagement.Read.Directory_ | Read role management data for Azure AD | Allows the app to read the role-based access control (RBAC) settings for your company's directory, on behalf of the signed-in user.  This includes reading directory role templates, directory roles and memberships. | Yes | No |
| _RoleManagement.ReadWrite.Directory_ | Read and write role management data for Azure AD | Allows the app to read and manage the role-based access control (RBAC) settings for your company's directory, on behalf of the signed-in user. This includes instantiating directory roles and managing directory role membership, and reading directory role templates, directory roles and memberships. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _RoleManagement.Read.All_ | Read role management data for all RBAC providers | Allows the app to read the role-based access control (RBAC) settings for all supported [RBAC providers](/graph/api/resources/rolemanagement?view=graph-rest-beta), without a signed-in user. This includes reading role definitions and role assignments. | Yes |
| _RoleManagement.Read.Directory_ | Read role management data for Azure AD | Allows the app to read the role-based access control (RBAC) settings for your company's directory, without a signed-in user.  This includes reading directory role templates, directory roles and memberships. | Yes |
| _RoleManagement.ReadWrite.Directory_ | Read and write role management data for Azure AD | Allows the app to read and manage the role-based access control (RBAC) settings for your company's directory, without a signed-in user. This includes instantiating directory roles and managing directory role membership, and reading directory role templates, directory roles and memberships. | Yes |

### Remarks
With the _RoleManagement.Read.Directory_ permission an application can read directoryRoles and directoryRoleTemplates. This includes reading membership information for directory roles.

With the _RoleManagement.ReadWrite.Directory_ permission an application can read and write directoryRoles (directoryRoleTemplates are readonly resources). This includes adding and removing members to and from directory roles.

Role management permissions are only valid for work or school accounts.

### Example usage

- _RoleManagement.Read.Directory_: Read the list of available role templates (`GET /directoryRoleTemplates`)
- _RoleManagement.Read.Directory_: Read the list of activated roles in your directory (`GET /directoryRoles`)
- _RoleManagement.Read.Directory_: Read the list of members for a role (`GET /directoryRoles/<id>/members`)
- _RoleManagement.Read.Directory_: Read the list of administrative unit-scoped members for a role (`GET /directoryRoles/<id>/scopedMembers`)
- _RoleManagement.ReadWrite.Directory_: Activate a directory role from a role template  (`POST /directoryRoles`)
- _RoleManagement.ReadWrite.Directory_: Add a member to a directory role (`POST /directoryRoles/<id>/members`)
- _RoleManagement.ReadWrite.Directory_: Add an administrative unit-scoped member to a directory role (`POST /directoryRoles/<id>/scopedMembers`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Schedule management permissions ([private preview](#permissions-availability-status))

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Schedule.ReadWrite.All_ (private preview)| Read and Write Shifts service (Teams) data | Allows an app to read and write schedule, schedule groups, shifts, and associated entities in shifts applications without a signed-in user.| Yes | No |
| _Schedule.Read.All_ (private preview)| Read Shifts service (Teams) data | Allows the app to read schedule, schedule groups, shifts, and associated entities in shifts applications without a signed-in user.  | Yes | No |

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:-----------------------|
| _Schedule.ReadWrite.All_ | Read and Write Shifts service (Teams) data | Allows an app to read and write schedule, schedule groups, shifts, and associated entities in shifts applications on behalf of the signed-in user.| No | No |
| _Schedule.Read.All_ | Read Shifts service (Teams) data | Allows the app to read schedule, schedule groups, shifts, and associated entities in shifts applications on behalf of the signed-in user.  | No | No |
| _WorkforceIntegration.ReadWrite.All_ (private preview)| Read and write workforce integrations | Allows the app to manage workforce integrations, to synchronize data from Microsoft Teams Shifts with an integrated system, on behalf of the signed-in user.  | Yes | No |
| _WorkforceIntegration.Read.All_ (private preview)| Read and write workforce integrations | Allows the app to manage workforce integrations, to synchronize data from Microsoft Teams Shifts with an integrated system, on behalf of the signed-in user.  | Yes | No |

## Search permissions

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ExternalItem.ReadWrite.All_ | Read and Write external data | Allows an app to write external with the Microsoft Graph connectors indexing API. | Yes | No |

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:-----------------------|
| _ExternalItem.Read.All_ | Read external data | Allows an app to query data ingested with Microsoft Graph connectors| Yes | No |

### Remarks
Search permissions are only valid for work or school accounts.

This search permission is only applicable to ingested data from the indexing API.

Access to data via search requires the read permission to the item. Ex : _Files.Read.All_ to access files via search.

### Example usage

#### Delegated

* _ExternalItem.Read.All_ :  Access external data from the [search API](/graph/api/resources/search-api-overview) (`POST /search/query`).

---

## Security permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. | Yes  | No |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. Also allows the app to update editable properties in security events on behalf of the signed-in user. | Yes  | No |
| _SecurityActions.Read.All_        |  Read your organization's security actions | Allows the app to read your organization’s security actions on behalf of the signed-in user. | Yes  | No |
| _SecurityActions.ReadWrite.All_   | Read and update your organization's security actions | Allows the app to read your organization’s security actions on behalf of the signed-in user.  | Yes  | No |
| _ThreatIndicators.ReadWrite.OwnedBy_   | Manage threat indicators this app creates or owns |Allows the app to create threat indicators, and fully manage those threat indicators (read, update and delete) on behalf of the signed-in user.  | Yes  | No |
| _ThreatIndicators.Read.All_   | Read your organization's threat indicators | Allows the app to read your organization’s security actions on behalf of the signed-in user.  | Yes  | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events. | Yes  |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events. Also allows the app to update editable properties in security events. | Yes  |
| _SecurityActions.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security actions. | Yes  |
| _SecurityActions.ReadWrite.All_   | Create and read your organization's security actions | Allows the app to read or create security actions, without a signed-in user. | Yes  |
| _ThreatIndicators.ReadWrite.OwnedBy_   | Manage threat indicators this app creates or owns | Allows the app to create threat indicators, and fully manage those threat indicators (read, update and delete), without a signed-in user.  It cannot update any threat indicators it does not own. | Yes  |
| _ThreatIndicators.Read.All_   | Manage threat indicators this app creates or owns | Allows the app to read all the indicators for your organization, without a signed-in user. | Yes  |

### Remarks

Security permissions are valid only on work or school accounts.

### Example usage

#### Delegated and Application

- _SecurityEvents.Read.All_: Read the list of all security alerts from all licensed security providers available to your tenant (`GET /beta/security/alerts`)
- _SecurityEvents.ReadWrite.All_: Update or read security alerts from all licensed security providers available to your tenant  (`PATCH /beta/security/alerts/{id}`)

---

## Short Notes permissions ([private preview](#permissions-availability-status))

#### Delegated permissions

|   Permission    |  Display String  | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ShortNotes.Read_ | Read short notes of the signed-in user | Allows the app to read all the short notes a sign-in user has access to. | No | Yes |
| _ShortNotes.ReadWrite_ | Read, create, edit, and delete short notes of the signed-in user | Allows the app to read, create, edit, and delete short notes of a signed-in user. | No | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _ShortNotes.Read.All_ | Read all users' short notes | Allows the app to read all the short notes without a signed-in user. | Yes | 
| _ShortNotes.ReadWrite.All_ | Read, create, edit, and delete all users' short notes | Allows the app to read, create, edit, and delete all the short notes without a signed-in user. | Yes |

---

## Sites permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections on behalf of the signed-in user. | No  | No |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to edit or delete documents and list items in all site collections on behalf of the signed-in user. | No  | No |
| _Sites.Manage.All_      | Create, edit, and delete items and lists in all site collections | Allows the app to manage and create lists, documents, and list items in all site collections on behalf of the signed-in user. | No | No |
| _Sites.FullControl.All_ | Have full control of all site collections | Allows the app to have full control to SharePoint sites in all site collections on behalf of the signed-in user.  | Yes  | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections without a signed in user. | Yes |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to create, read, update, and delete documents and list items in all site collections without a signed in user. | Yes |
| _Sites.Manage.All_      | Create, edit, and delete items and lists in all site collections | Allows the app to manage and create lists, documents, and list items in all site collections without a signed-in user.  | Yes  |
| _Sites.FullControl.All_ | Have full control of all site collections | Allows the app to have full control to SharePoint sites in all site collections without a signed-in user.  | Yes  |


### Remarks

Sites permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _Sites.Read.All_: Read the lists on the SharePoint root site (`GET /v1.0/sites/root/lists`)
* _Sites.ReadWrite.All_: Create new list items in a SharePoint list (`POST /v1.0/sites/root/lists/123/items`)
* _Sites.Manage.All_: Add a new list to a SharePoint site (`POST /v1.0/sites/root/lists`)
* _Sites.FullControl.All_: Complete access to SharePoint sites and lists.

---

## Tasks permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Tasks.Read_ | Read user’s tasks and task lists (preview) | Allows the app to read the signed-in user’s tasks and task lists, including any shared with the user. Doesn't include permission to create, delete, or update anything. | No | Yes |
| _Tasks.Read.Shared_ | Read user and shared tasks (preview) | Allows the app to read tasks a user has permissions to access, including their own and shared tasks. | No | No |
| _Tasks.ReadWrite_ | Create, read, update, and delete user’s tasks and task lists (preview) | Allows the app to create, read, update, and delete the signed-in user's tasks and task lists, including any shared with the user. | No | Yes |
| _Tasks.ReadWrite.Shared_ | Read and write user and shared tasks (preview) | Allows the app to create, read, update, and delete tasks a user has permissions to, including their own and shared tasks. | No | No |

#### Application permissions

None.

### Remarks
_Tasks_ permissions are used to control access for To Do tasks and Outlook tasks(deprecated). Access for Microsoft Planner tasks is controlled by [_Group_ permissions](#group-permissions).

_Shared_ permissions are currently only supported for work or school accounts. Even with _Shared_ permissions, reads and writes may fail if the user who owns the shared content has not granted the accessing user permissions to modify content within the folder.

### Example usage
#### Delegated

* _Tasks.Read_: Get all tasks in a user's mailbox (`GET /me/outlook/tasks`).
* _Tasks.Read.Shared_: Access tasks in a folder shared to you by another user in your organization (`Get /users{id|userPrincipalName}/outlook/taskfolders/{id}/tasks`).
* _Tasks.ReadWrite_: Add an event to the user's default task folder (`POST /me/outlook/tasks`).
* _Tasks.Read_: Get all uncompleted tasks in a user's mailbox (`GET /users/{id | userPrincipalName}/outlook/tasks?$filter=status ne 'completed'`).
* _Tasks.ReadWrite_: Update a task in a user's mailbox (`PATCH /users/{id | userPrincipalName}/outlook/tasks/id`).
* _Tasks.ReadWrite.Shared_: Complete a task on behalf of another user (`POST /users/{id | userPrincipalName}/outlook/tasks/id/complete`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Taxonomy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TermStore.Read.All_        | Read term store data | Allows app to read various terms, sets, and groups in the term store | Yes  | No |
| _TermStore.ReadWrite.All_   | Read and write all term store data | Allows the app to edit or delete terms, sets, and groups in the term store | Yes  | No |

### Remarks

Taxonomy permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _TermStore.Read.All_: Read the termstore for the tenant (`GET /termStore`)
* _TermStore.ReadWrite.All_: Create new terms in the termStore (`POST /termStore/sets/123/children`)

---

## Teams permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Read the names and descriptions of teams | Read the names and descriptions of teams, on behalf of the signed-in user.	| No | No |
| _Team.Create_  | Create teams | Create teams, on behalf of the signed-in user. | Yes | No |

#### Application permissions 

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Get a list of all teams | Get a list of all teams, without a signed-in user.	| Yes | No |
| _Team.Create_  | Create teams | Create teams, without a signed-in user. | Yes | No |
|_Teamwork.Migrate.All_|Manage migration to Microsoft Teams|Creating and managing resources for migration to Microsoft Teams|Yes|Yes|

## Team settings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamSettings.Read.All_ | Read teams' settings | Read this team's settings, on behalf of the signed-in user.	| Yes | No |
| _TeamSettings.ReadWrite.All_ | Read and change teams' settings | Read and change all teams' settings, on behalf of the signed-in user.	| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamSettings.Read.All_ | Read all teams' settings | Read this team's settings, without a signed-in user.	| Yes | No |
| _TeamSettings.ReadWrite.All_ | Read and change all teams' settings. | Read and change all teams' settings, without a signed-in user.	| Yes | No |

## Teams activity permissions ([private preview](#permissions-availability-status))

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsActivity.Read_ (private preview)| Read user's teamwork activity feed | Allows the app to read the signed-in user's teamwork activity feed.	| No | No |
| _TeamsActivity.Send_ (private preview)| Send a teamwork activity as the user | Allows the app to create new activities in the user's teamwork activity feed, and send new activities to other users' activity feed, on behalf of the signed-in user. | No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsActivity.Read.All_ (private preview) | Read all users' teamwork activity feed | Allows the app to read all users' teamwork activity feed, without a signed-in user. | Yes | No |
| _TeamsActivity.Send_ (private preview)| Send a teamwork activity to any user | Allows the app to send new activities to any users' teamwork activity feed, without a signed-in user. | Yes | No |

## Teams app permissions (deprecated)

>[!NOTE]
>These permissions are deprecated. Use the equivalent TeamsAppInstallation.\*.All permissions instead.

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsApp.Read.All_ (**Deprecated**)| Read all installed Teams apps | Allows the app to read the Teams apps that are installed for the signed-in user, and in all teams the user is a member of. Does not give the ability to read application-specific settings. | Yes | No |
| _TeamsApp.ReadWrite.All_ (**Deprecated**)| Manage all Teams apps | Allows the app to read, install, upgrade, and uninstall Teams apps, on behalf of the signed-in user and also for teams the user is a member of. Does not give the ability to read or write application-specific settings. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsApp.Read.All_ (**Deprecated**)| Read all users' installed Teams apps | Allows the app to read the Teams apps that are installed for any user, without a signed-in user. Does not give the ability to read application-specific settings. | Yes | No |
| _TeamsApp.ReadWrite.All_ (**Deprecated**)| Manage all users' Teams apps  | Allows the app to read, install, upgrade, and uninstall Teams apps for any user, without a signed-in user. Does not give the ability to read or write application-specific settings. 	| Yes | No |

## Teams app installation permissions

#### Delegated permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsAppInstallation.ReadForUser_  | Read user's installed Teams apps| Allows the app to read the Teams apps that are installed for the signed-in user. Does not give the ability to read application-specific settings.| No | No |
| _TeamsAppInstallation.ReadWriteForUser_ | Manage user's installed Teams apps| Allows the app to read, install, upgrade, and uninstall Teams apps installed for the signed in user. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteSelfForUser_ (private preview) | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| No | No |
| _TeamsAppInstallation.ReadForTeam_ | Read installed Teams apps in teams| Allows the app to read the Teams apps that are installed in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteForTeam_ | Manage installed Teams apps in teams| Allows the app to read, install, upgrade, and uninstall Teams apps in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteSelfForTeam_ (private preview) | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| Yes | No |

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | 
|:----------------|:------------------|:-------------|:-----------------------|
| _TeamsAppInstallation.ReadForUser.All_ | Read installed Teams apps for all users| Allows the app to read the Teams apps that are installed for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes | 
| _TeamsAppInstallation.ReadWriteForUser.All_ | Manage Teams apps for all users| Allows the app to read, install, upgrade, and uninstall Teams apps for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForUser.All_ (private preview) | Allow the app to manage itself for all users| Allows a Teams app to read, install, upgrade, and uninstall itself to any user, without a signed-in user.| Yes | 
| _TeamsAppInstallation.ReadForTeam.All_ | Read installed Teams apps for all teams| Allows the app to read the Teams apps that are installed in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes | 
| _TeamsAppInstallation.ReadWriteForTeam.All_ | Manage Teams apps for all teams| Allows the app to read, install, upgrade, and uninstall Teams apps in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForTeam.All_ (private preview) | Allow the Teams app to manage itself for all teams| Allows a Teams app to read, install, upgrade, and uninstall itself in any team, without a signed-in user.| Yes | 

## Team member permissions 

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamMember.Read.All_ | Read the members of teams. | Read the members of teams, on behalf of the signed-in user. | Yes | No |
| _TeamMember.ReadWrite.All_ | Add and remove members from teams. | Add and remove members from teams, on behalf of the signed-in user. Also allows changing a member's role, for example from owner to non-owner. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamMember.Read.All_ | Read the members of all teams. | Read the members of all teams, without a signed-in user.	| Yes | No |
| _TeamMember.ReadWrite.All_ | Add and remove members from all teams. | Add and remove members from all teams, without a signed-in user. Also allows changing a team member's role, for example from owner to non-owner. | Yes | No |

## Teams resource-specific consent permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| TeamSettings.Read.Group | Read this team's settings. | Read this team's settings, without a signed-in user. |No | No |
| TeamSettings.ReadWrite.Group | Update the settings for this team. | Read and write this team's settings, without a signed-in user. |No | No |
| ChannelSettings.Read.Group | Read the names, descriptions, and settings of this team’s channels. | Read this group's channel names, channel descriptions, and channel settings, without a signed-in user. |No | No |
| ChannelSettings.ReadWrite.Group | Update the names, descriptions, and settings of this team’s channels.| Update this group's channel names, channel descriptions, and channel settings, without a signed-in user. |No | No |
|Channel.Create.Group | Create channels in this team. | Create channels in this group, without a signed-in user. |No | No |
|Channel.Delete.Group | Delete this team's channels. | Delete this group's channels, without a signed-in user. |No | No |
|ChannelMessage.Read.Group | Read the team’s channel messages. | Allows an app to read this group's channel's messages, without a signed-in user. |No | No |
|TeamsAppInstallation.Read.Group | See which apps are installed in this team. | See which apps are installed in this group, without a signed-in user. |No | No |
|TeamsTab.Read.Group | Read this team's tabs. | Read this group's tabs, without a signed-in user. |No | No |
|TeamsTab.Create.Group | Create tabs in this team. | Create tabs in this group, without a signed-in user. |No | No |
|TeamsTab.ReadWrite.Group | Update this team's tabs. | Update this group's tabs, without a signed-in user. |No | No |
|TeamsTab.Delete.Group | Delete this team's tabs. | Delete this group's tabs, without a signed-in user. |No | No |
|TeamMember.Read.Group | Read this team's members. | Read this team's members, without a signed-in user. |No | No |
|Member.Read.Group | Read this group's members.| Read this group's members, without a signed-in user. |No | No |
|Owner.Read.Group| Read this group's owners.	| Read this group's owners, without a signed-in user. |No | No |

## Teams settings permissions

### Delegated permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| Team.ReadBasic.All | Read the names and descriptions of teams| Read the names and  descriptions of teams, on behalf of the signed-in user.|No| No |
| TeamSettings.Read.All | Read teams' settings| Read all teams' settings, on behalf of the signed-in user.|Yes| No |
| TeamSettings.ReadWrite.All | Read and change teams' settings.| Read and change all teams' settings, on behalf of the signed-in user.|Yes| No |

### Application permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| Team.ReadBasic.All | Get a list of all teams.| Get a list of all teams, without a signed-in user.|Yes| No |
| TeamSettings.Read.All | Read all teams' settings| Read this team's settings, without a signed-in user.|Yes| No |
| TeamSettings.ReadWrite.All | Read and change all teams' settings| Read and change all teams' settings, without a signed-in user.|No | No |

## Teams tab permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsTab.Read.All_ | Read tabs in Microsoft Teams. | Allows the app to read the Teams apps that are installed for the signed-in user, and in all teams the user is a member of. Does not give the ability to read application-specific settings.	| Yes | No |
| _TeamsTab.ReadWrite.All_ | Read and write tabs in Microsoft Teams. | Allows the app to read, install, upgrade, and uninstall Teams apps, on behalf of the signed-in user and also for teams the user is a member of. Does not give the ability to read or write application-specific settings. 	| Yes | No |
| _TeamsTab.Create_ | Create tabs in Microsoft Teams. | Allows the app to create tabs in any team in Microsoft Teams, on behalf of the signed-in user. This does not grant the ability to read, modify or delete tabs after they are created, or give access to the content inside the tabs. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsTab.Read.All_ | Read tabs in Microsoft Teams. | Read the names and settings of tabs inside any team in Microsoft Teams, without a signed-in user. This does not give access to the content inside the tabs.	| Yes | No |
| _TeamsTab.ReadWrite.All_ | Read and write tabs in Microsoft Teams. | Read and write tabs in any team in Microsoft Teams, without a signed-in user. This does not give access to the content inside the tabs. | Yes | No |
| _TeamsTab.Create_ | Create tabs in Microsoft Teams. | Allows the app to create tabs in any team in Microsoft Teams, without a signed-in user. This does not grant the ability to read, modify or delete tabs after they are created, or give access to the content inside the tabs. | Yes | No |

## Terms of use permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Agreement.Read.All_ | Read all terms of use agreements | Allows the app to read terms of use agreements on behalf of the signed-in user. | Yes | No |
| _Agreement.ReadWrite.All_ | Read and write all terms of use agreements | Allows the app to read and write terms of use agreements on behalf of the signed-in user. | Yes | No |
| _AgreementAcceptance.Read_ | Read user terms of use acceptance statuses | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes | No |
| _AgreementAcceptance.Read.All_ | Read terms of use acceptance statuses that user can access | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes | No |

### Remarks

All the permissions above are valid only for work or school accounts.

For an app to read or write all agreements or agreement acceptances with delegated permissions, the signed-in user must be assigned the Global Administrator, Conditional Access Administrator or Security Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _Agreement.Read.All_: Read all terms of use agreements (`GET /beta/agreements`)
* _Agreement.ReadWrite.All_: Read and write all terms of use agreements (`POST /beta/agreements`)
* _AgreementAcceptance.Read_ Read user terms of use acceptance statuses (`GET /beta/me/agreementAcceptances`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Teams app installation permissions ([private preview](#permissions-availability-status))

#### Delegated permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsAppInstallation.ReadForUser_ (private preview) | Read user's installed Teams apps| Allows the app to read the Teams apps that are installed for the signed-in user. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteForUser_ (private preview) | Manage user's installed Teams apps| Allows the app to read, install, upgrade, and uninstall Teams apps installed for the signed in user. Does not give the ability to read application-specific settings.| No | No |
| _TeamsAppInstallation.ReadWriteSelfForUser_ (private preview) | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| Yes | No |
| _TeamsAppInstallation.ReadForTeam_ (private preview) | Read installed Teams apps in teams| Allows the app to read the Teams apps that are installed in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteForTeam_ (private preview) | Manage installed Teams apps in teams| Allows the app to read, install, upgrade, and uninstall Teams apps in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteSelfForTeam_ (private preview) | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| Yes | No |

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _TeamsAppInstallation.ReadForUser.All_ (private preview) | Read installed Teams apps for all users| Allows the app to read the Teams apps that are installed for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteForUser.All_ (private preview) | Manage Teams apps for all users| Allows the app to read, install, upgrade, and uninstall Teams apps for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForUser.All_ (private preview) | Allow the app to manage itself for all users| Allows a Teams app to read, install, upgrade, and uninstall itself to any user, without a signed-in user.| Yes |
| _TeamsAppInstallation.ReadForTeam.All_ (private preview) | Read installed Teams apps for all teams| Allows the app to read the Teams apps that are installed in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteForTeam.All_ (private preview) | Manage Teams apps for all teams| Allows the app to read, install, upgrade, and uninstall Teams apps in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForTeam.All_ (private preview) | Allow the Teams app to manage itself for all teams| Allows a Teams app to read, install, upgrade, and uninstall itself in any team, without a signed-in user.| Yes |

## Threat assessment permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ThreatAssessment.ReadWrite.All_ | Read and write threat assessment requests | Allows an app to read your organization's threat assessment requests on behalf of the signed-in user. Also allows the app to create new requests to assess threats received by your organization on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _ThreatAssessment.Read.All_ | Read threat assessment requests | Allows an app to read your organization's threat assessment requests, without a signed-in user. | Yes |

### Remarks

Threat assessment permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _ThreatAssessment.ReadWrite.All_: Read and write threat assessment requests (`POST /informationProtection/threatAssessmentRequests`)

#### Application

* _ThreatAssessment.Read.All_: Read threat assessment requests (`GET /informationProtection/threatAssessmentRequests`)

---

## Universal Print permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Printer.Create_ | Register printers | Allows the application to create (register) printers on behalf of the signed-in user. | Yes | No |
| _Printer.FullControl.All_ | Register, read, update, and unregister printers | Allows the application to create (register), read, update, and delete (unregister) printers on behalf of the signed-in user. | Yes | No |
| _Printer.Read.All_ | Read printers | Allows the application to read printers on behalf of the signed-in user. | Yes | No |
| _Printer.ReadWrite.All_ | Read and update printers | Allows the application to read and update printers on behalf of the signed-in user. Does not allow creating (registering) or deleting (unregistering) printers. | Yes | No |
| _PrinterShare.ReadBasic.All_ | Read basic information about printer shares | Allows the application to read basic information about printer shares on behalf of the signed-in user. Does not allow reading access control information. | No | No |
| _PrinterShare.Read.All_ | Read printer shares | Allows the application to read printer shares on behalf of the signed-in user. | No | No |
| _PrinterShare.ReadWrite.All_ | Read and write printer shares | Allows the application to read and update printer shares on behalf of the signed-in user. | Yes | No |
| _PrintJob.Create_ | Create print jobs | Allows the application to create print jobs on behalf of the signed-in user and upload document content to print jobs that the signed-in user created. | No | No |
| _PrintJob.Read_ | Read user's print jobs | Allows the application to read the metadata and document content of print jobs that the signed-in user created. | No | No |
| _PrintJob.Read.All_ | Read print jobs | Allows the application to read the metadata and document content of print jobs on behalf of the signed-in user. | Yes | No |
| _PrintJob.ReadBasic_ | Read basic information of user's print jobs | Allows the application to read the metadata of print jobs that the signed-in user created. Does not allow access to print job document content. | No | No |
| _PrintJob.ReadBasic.All_ | Read basic information of print jobs | Allows the application to read the metadata of print jobs on behalf of the signed-in user. Does not allow access to print job document content. | Yes | No |
| _PrintJob.ReadWrite_ | Read and write user's print jobs | Allows the application to read and update the metadata and document content of print jobs that the signed-in user created. | No | No |
| _PrintJob.ReadWrite.All_ | Read and write print jobs | Allows the application to read and update the metadata and document content of print jobs on behalf of the signed-in user. | Yes | No |
| _PrintJob.ReadWriteBasic_ | Read and write basic information of user's print jobs | Allows the application to read and update the metadata of print jobs that the signed-in user created. Does not allow access to print job document content. | No | No |
| _PrintJob.ReadWriteBasic.All_ | Read and write basic information of print jobs | Allows the application to read and update the metadata of print jobs on behalf of the signed-in user. Does not allow access to print job document content. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Printer.Read.All_ | Read printers | Allows the application to read printers without a signed-in user. | Yes |
| _Printer.ReadWrite.All_ | Read and update printers | Allows the application to read and update printers without a signed-in user. Does not allow creating (registering) or deleting (unregistering) printers. | Yes |
| _PrintJob.Manage.All_ | Perform advanced operations on print jobs | Allows the application to perform advanced operations like redirecting a print job to another printer without a signed-in user. Also allows the application to read and update the metadata of print jobs. | Yes |
| _PrintJob.Read.All_ | Read print jobs | Allows the application to read the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadBasic.All_ | Read basic information for print jobs | Allows the application to read the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |
| _PrintJob.ReadWrite.All_ | Read and write print jobs | Allows the application to read and update the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadWriteBasic.All_ | Read and write basic information for print jobs | Allows the application to read and update the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |
| _PrintTaskDefinition.ReadWrite.All_ | Read, write and update print task definitions | Allows the application to read and update print task definitions without a signed-in user. | Yes |

### Remarks

* To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription in addition to the  permissions listed earlier.

* Some permissions distinguish between print job metadata and payload. Metadata describes the configuration of a print job (its name and document configuration, such as whether it should be stapled or printed in color). Payload is the document data itself (the PDF or XPS file to be printed.)

* All PrintJob.* permissions also require at least Printer.Read.All (or a more prviliged permission) because print jobs are stored within printers.

### Example usage

#### Delegated

* _Printer.Read.All_: Get a list of all printers in the tenant (`GET /print/printers`)
* _PrintJob.Read.All_: Get a list of all print jobs queued to a Printer (`GET /print/printers/{id}/jobs`)
* _Printer.FullControl.All_: Delete (unregister) a printer (`DELETE /print/printers/{id}`)
* _PrintJob.ReadWriteBasic.All_: Update metadata (such as current status) of print jobs (`PATCH /print/printers/{id}/jobs/{id}`)
* _PrintJob.ReadWrite.All_: Create print jobs and upload document data to them (`POST /print/printers/{id}/jobs`)

#### Application

* _Printer.Read.All_: Get a list of all printers in the tenant (`GET /print/printers`)

---

## User permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _User.Read_       |    Sign-in and read user profile | Allows users to sign-in to the app, and allows the app to read the profile of signed-in users. It also allows the app to read basic company information of signed-in users.| No | Yes |
| _User.ReadWrite_ |    Read and write access to user profile | Allows the app to read the signed-in user's full profile. It also allows the app to update the signed-in user's profile information on their behalf. | No | Yes |
| _User.ReadBasic.All_ |    Read all users' basic profiles | Allows the app to read a basic set of profile properties of other users in your organization on behalf of the signed-in user. This includes display name, first and last name, email address, open extensions and photo. Also allows the app to read the full profile of the signed-in user. | No | No |
| _User.Read.All_  |     Read all users' full profiles           | Allows the app to read the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. | Yes | No |
| _User.ReadWrite.All_ |     Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. Also allows the app to create and delete users as well as reset user passwords on behalf of the signed-in user. | Yes | No |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, on behalf of the signed-in user. | Yes | No |
| _User.Export.All_       |    Export users' data | Allows the app to export an organizational user's data, when performed by a Company Administrator.| Yes | No |
| _User.ManageIdentities.All_       |    Manage user identities | Allows an application to read, update and delete identities that are associated with a user's account, that the signed-in user has access to. This controls which identities your users can sign-in with. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _User.Read.All_ |    Read all users' full profiles | Allows the app to read the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.| Yes |
| _User.ReadWrite.All_ |   Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.  Also allows the app to create and delete non-administrative users. Does not allow reset of user passwords. | Yes |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, without a signed-in user. | Yes |
| _User.Export.All_       |    Export users' data | Allows the app to export organizational users' data, without a signed-in user.| Yes |
| _User.ManageIdentities.All_       |    Manage all user identities | Allows an application to read, update and delete identities that are associated with a user's account, without a signed in user. This controls which identities users can sign-in with. |  Yes |

### Remarks

With the _User.Read_ permission, an app can also read the basic company information of the signed-in user for a work or school account through the [organization](/graph/api/resources/organization?view=graph-rest-1.0) resource. The following properties are available: id, displayName, and verifiedDomains.

For work or school accounts, the full profile includes all of the declared properties of the [User](/graph/api/resources/user?view=graph-rest-1.0) resource. On reads, only a limited number of properties are returned by default. To read properties that are not in the default set, use `$select`. The default properties are:

- displayName
- givenName
- jobTitle
- mail
- mobilePhone
- officeLocation
- preferredLanguage
- surname
- userPrincipalName

 _User.ReadWrite_ and _User.Readwrite.All_ delegated permissions allow the app to update the following profile properties for work or school accounts:

- aboutMe
- birthday
- hireDate
- interests
- mobilePhone
- mySite
- pastProjects
- photo
- preferredName
- responsibilities
- schools
- skills

With the _User.ReadWrite.All_ application permission, the app can update all of the declared properties of work or school accounts except for password.

With the _User.ReadWrite.All_ delegated or application permission, updating another user's **businessPhones**, **mobilePhone** or **otherMails** is only allowed on users who are non-administrators or assigned one of the following roles: Directory Readers, Guest Inviter, Message Center Reader and Reports Reader. For more details, see Helpdesk (Password) Administrator in [Azure AD available roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

To read or write direct reports (`directReports`) or the manager (`manager`) of a work or school account, the app must have either _User.Read.All_ (read only) or _User.ReadWrite.All_.

The _User.ReadBasic.All_ permission constrains app access to a limited set of properties known as the basic profile. This is because the full profile might contain sensitive directory information. The basic profile includes only the following properties:

- displayName
- givenName
- mail
- photo
- surname
- userPrincipalName

To read the group memberships of a user (`memberOf`), the app must have either [_Group.Read.All_](#group-permissions) or [_Group.ReadWrite.All_](#group-permissions). However, if the user also has membership in a [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-1.0) or an [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta), the app will need effective permissions to read those resources too, or Microsoft Graph will return an error. This means the app will also need [Directory permissions](#directory-permissions), and, for delegated permissions, the signed-in user will also need sufficient privileges in the organization to access directory roles and administrative units.

With the _User.ManageIdentities.All_ delegated or application permission, it is possible to update the identities (`identities`) of a user. This includes federated (or social identities) or local identities with email or name-based sign-in names.

### Example usage

#### Delegated

* _User.Read_: Read the full profile for the signed-in user (`GET /me`).
* _User.ReadWrite_: Update the photo of the signed-in user (`PUT /me/photo/$value`).
* _User.ReadBasic.All_: Find all users whose name starts with "David" (`GET /users?$filter=startswith(displayName,'David')`).
* _User.Read.All_: Read a user's manager (`GET /user/{id | userPrincipalName}/manager`).

#### Application

* _User.Read.All_: Read all users and relationships through delta query (`GET /beta/users/delta?$select=displayName,givenName,surname`).
* _User.ReadWrite.All_: Update the photo for any user in the organization (`PUT /user/{id | userPrincipalName}/photo/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## User activity permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required | Microsoft Account supported |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|:-----------------|
| _UserActivity.ReadWrite.CreatedByApp_ |Read and write app activity to users' activity feed |Allows the app to read and report the signed-in user's activity in the app. |No | Yes |

#### Application permissions
None.

### Remarks
*UserActivity.ReadWrite.CreatedByApp* is valid for both Microsoft accounts and work or school accounts.

The *CreatedByApp* constraint associated with this permission indicates the service will apply implicit filtering to results based on the identity of the calling app, either the MSA app id or a set of app ids configured for a cross-platform application identity.

### Example usage

#### Delegated
* _UserActivity.ReadWrite.CreatedByApp_: Get a list of recent unique user activities based on associated history items published in the last day. (GET /me/activities/recent).
* _UserActivity.ReadWrite.CreatedByApp_: Publish or update a user activity which may be resumed by the user of the application. (PUT /me/activities/%2Farticle%3F12345).
*	_UserActivity.ReadWrite.CreatedByApp_: Publish or update a history item for a specified user activity in order to represent the period of user engagement. (PUT /me/activities/{id}/historyItems/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a user activity in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a history item in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}/historyItems/{id}).

---

## User authentication method permissions ([preview](#permissions-availability-status))

#### Delegated permissions

|Permission                              |Display String                        |Description        |Admin Consent Required | Microsoft Account supported |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|:----------------------------|
|_UserAuthenticationMethod.Read_ (preview)        |Read own authentication methods       |Allows the app to read the signed-in user's authentication methods, including phone numbers and Authenticator app settings. This does not allow the app to see secret information like the signed-in user's passwords, or to sign-in or otherwise use the signed-in user's authentication methods. |Yes|No|
|_UserAuthenticationMethod.Read.All_ (preview)    |Read users' authentication methods    |Allows the app to read authentication methods of all users in your organization that the signed-in user has access to. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|No|
|_UserAuthenticationMethod.ReadWrite_ (preview)   |Manage own authentication methods     |Allows the app to read and write the signed-in user's authentication methods, including phone numbers and Authenticator app settings. This does not allow the app to see secret information like the signed-in user's passwords, or to sign-in or otherwise use the signed-in user's authentication methods. |Yes|No|
|_UserAuthenticationMethod.ReadWrite.All_ (preview)|Manage users' authentication methods  |Allows the app to read and write authentication methods of all users in your organization that the signed-in user has access to. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|No|

#### Application permissions

|Permission                              |Display String                        |Description        |Admin Consent Required |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|
|_UserAuthenticationMethod.Read.All_ (private preview)   |Read users' authentication methods    |Allows the app to read authentication methods of all users in your organization, without a signed-in user. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|
|_UserAuthenticationMethod.ReadWrite.All_ (private preview)|Manage users' authentication methods  |Allows the application to read and write authentication methods of all users in your organization, without a signed-in user. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|

### Remarks

User authentication method permissions are used to manage authentication methods on users. With these permissions, a delegated user or application can register new authentication methods on a user, read the authentication methods the user already has registered, update those authentication methods, and remove them from the user.

With these permissions, all authentication methods can be read and managed on a user. This includes methods used for:

* Primary authentication (password)
* Second factor of multi-factor authentication/MFA (phone numbers)
* Self-Service Password Reset/SSPR (email address)

## Authentication methods policy permissions ([preview](#permissions-availability-status))

#### Delegated permissions

|Permission                              |Display String                        |Description        |Admin Consent Required | Microsoft Account supported |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|:----------------------------|
|_Policy.ReadWrite.AuthenticationMethod_ (preview)        |Read and write all authentication methods policies.       |Allows the app to read and write all authentication methods policies on an Azure AD tenant. Additionally, the signed-in user must have the Global Administrator role assigned. |Yes|No|

#### Application permissions

|Permission                              |Display String                        |Description        |Admin Consent Required |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|
|_Policy.ReadWrite.AuthenticationMethod_ (private preview)   |Read and write all authentication methods policies.    |Allows the app to read and write all authentication methods policies on an Azure AD tenant. |Yes|


### Remarks

Authentication methods policy permissions are used to manage settings in the authentication methods policy, including enabling and disabling authentication methods, allowing users and groups to use those methods, and configuring other settings related to the authentication methods that users may register and use in a tenant.

## Permission scenarios

This section shows some common scenarios that target [user](/graph/api/resources/user?view=graph-rest-1.0) and [group](/graph/api/resources/group?view=graph-rest-1.0) resources in an organization. The tables show the permissions that an app needs to be able to perform specific operations required by the scenario. Note that in some cases the ability of the app to perform specific operations will depend on whether a permission is an application or delegated permission. In the case of delegated permissions, the app's effective permissions will also depend on the privileges of the signed-in user within the organization. For more information, see  [Delegated permissions, Application permissions, and effective permissions](auth/auth-concepts.md#microsoft-graph-permissions).

### Access scenarios on the User resource

| **App tasks involving User**	 |  **Required permissions** | **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  Read all user's basic profiles |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc.)	 | _User.Read_ | Enable sign-in and read user profile|
| App wants to read complete user profile all users	 | _User.Read.All_ |  Read all user's full profiles   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendars.Read_ | Enable sign-in and read user profile, Read users' files,  Read user mail,  Read user calendars |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | Enable sign-in and read user profile, Read users' files,  Read items in all site collections |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | Read and write access to user profile |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | Read and write all user's full profiles |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendars.ReadWrite_  |  Read and write access to user profile,  Read and write access to user profile,  Read and write access to user mail, Have full access to user calendars |
| App wants to submit a data policy operation request to export a user's personal data | _User.Export.All_ | Export a user'a personal data. |


### Access scenarios on the Group resource

| **App tasks involving Group**	 |  **Required permissions** |  **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | Read all groups|
| App wants to read all content in all Microsoft 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | Read items in all site collections, Read all groups|
| App wants to read and write all content in all Microsoft 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  Read and write all groups, Edit or delete items in all site collections |
| App wants to discover (find) a Microsoft 365 group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | Read and write all groups|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | Read and write all groups|
