---
title: "Hightlights of earlier releases in Microsoft Graph"
description: "What was new earlier in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Highlights of earlier releases

## July 2019: New and generally available 

### Example code snippets
There are now Objective-C code snippets in all API topics in the v1.0 and beta references. See the Objective-C example for [getting an event](/graph/api/event-get?view=graph-rest-1.0&tabs=objective-c#example).

### Group
- Use the [validateProperties](/graph/api/group-validateproperties?view=graph-rest-1.0) function to make sure the display name or mail nickname of an existing Office 365 group complies with naming policies.
- Alternatively, before creating the group, you can use the [validateProperties](/graph/api/directoryobject-validateproperties?view=graph-rest-1.0) function for a [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-1.0) to validate the names first.

### Identity and access
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-1.0) and related resources such as [subscribed SKUs](/graph/api/resources/subscribedsku?view=graph-rest-1.0).
- Use [new delegated and application permissions](permissions-reference.md#role-management-permissions), _RoleManagement.Read.Directory_ and _RoleManagement.ReadWrite.Directory_, for role-based access control (RBAC) for your company's directory:

  - Use the read/write permission to first [activate](/graph/api/directoryrole-post-directoryroles?view=graph-rest-1.0) a directory role. 
  - With the role activated, you can use the read permission to [read directory roles](/graph/api/directoryrole-list?view=graph-rest-1.0), [list role members](/graph/api/directoryrole-list-members?view=graph-rest-1.0), and [list directory role templates](/graph/api/directoryroletemplate-list?view=graph-rest-1.0). 
  - You can also use the read/write permission to [add](/graph/api/directoryrole-post-members?view=graph-rest-1.0) and [remove](/graph/api/directoryrole-delete-member?view=graph-rest-1.0) role members.


## July 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Calendar 
Use the new [places API](/graph/api/resources/place?view=graph-rest-beta) to make use of rich location types such as [room](/graph/api/resources/room?view=graph-rest-beta) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta), as set up by Exchange Online administrators.

### Devices and apps
Intune [July](changelog.md#july-2019) updates

### Files 
Apply expiration date/time or password when [creating a sharing link](/graph/api/driveitem-createlink?view=graph-rest-beta) to a file, folder, or some other [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta).

### Identity and access
- Use [new application permission](/graph/permissions-reference?#accessreviews-permissions) _AccessReview.ReadWrite.Membership_ for CRUD operations on [access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta). 
- Use [new delegated and application permissions](permissions-reference.md#administrative-units-permissions), _AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_, to respectively read or write (including create, update, delete, or manage membership) [administrative unit](/graph/api/resources/administrativeunit?view=graph-rest-beta) resources.
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-beta) and related resources such as a [subscribed SKU](/graph/api/resources/subscribedsku?view=graph-rest-beta).
- Use the new [discover](/graph/api/directorydefinition-discover?view=graph-rest-beta) function to find the latest directory [synchronization schema](/graph/api/resources/synchronization-synchronizationschema?view=graph-rest-beta), so as to sync directory objects, attributes, and their types to an app.
- Use [feature rollout policy](/graph/api/resources/featureRolloutPolicy?view=graph-rest-beta) to help tenant administrators to pilot features to specific groups before enabling them for entire organization.

### Mail
Use more granular application permission, _Mail.ReadBasic.All_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Now applicable to [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta) and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta) and **mailFolder**.

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta) about deleted item count and size.

### Teamwork
- [Install](/graph/api/user-add-teamsappinstallation?view=graph-rest-beta), [uninstall](/graph/api/user-delete-teamsappinstallation?view=graph-rest-beta), [upgrade](/graph/api/user-upgrade-teamsappinstallation?view=graph-rest-beta), and [list installed Microsoft Teams apps](/graph/api/user-list-teamsappinstallation?view=graph-rest-beta) for a user.
- Use app-only access to read channel messages, replies to channel messages, and messages in a chat. [Request and get approval](teams-protected-apis.md) for such access.

## May - June, 2019: New and generally available

### Calendar, mail, and personal contacts
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [blog announcement](https://developer.microsoft.com/en-us/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and access Outlook email search results. See related [blog announcement](https://developer.microsoft.com/en-us/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

### Postman
As an alternative to Graph Explorer, try the Microsoft Graph API on the [Microsoft Graph Postman collection](use-postman.md) to learn the API behavior and speed up app development.

### Tutorials
Try the new [tutorial to build a Java console app](/graph/tutorials/java) to get information about a user calendar.

### User
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) all issued refresh tokens for a user. This is usually used to prevent apps on a lost or stolen device from accessing an organization's data.


## May - June, 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta).

### Group
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta) to help protect sensitive data of an Office 365 group and meet compliance policies. These labels are [assignedLabel](/graph/api/resources/assignedlabel?view=graph-rest-beta) objects, published by administrators in Microsoft 365 Security & Compliance Center, as part of Microsoft Information Protection capabilities. 

### Identity and access
- Get an instance of an [application](/graph/api/resources/applicationtemplate?view=graph-rest-beta), or add an instance from the Azure AD application gallery into your directory as a template.
- Get a log of all directory [provisioning events](/graph/api/resources/provisioningobjectsummary?view=graph-rest-beta) in a tenant.
- Get information about [detected user or sign-in risks](/graph/api/resources/riskdetection?view=graph-rest-beta) in an Azure AD environment. This risk detection functionality is part of Azure AD Identity Protection.

### Mail
Use more granular delegated permission, _Mail.ReadBasic_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Available to read methods of [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta), and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta) and **mailFolder**.

### Microsoft Graph toolkit
The [Microsoft Graph toolkit](/graph/toolkit/overview) is a set of framework-agnostic web components and helpers that provides convenience to authenticate and access data in Microsoft Graph. Because the Microsoft Graph toolkit is in preview status, use toolkit providers and components in only non-production apps.

### Reports
- Get [reports on the authentication methods](/graph/api/resources/authenticationmethods-usage-insights-overview?view=graph-rest-beta) adopted by users in an organization, such as self-service password rest and multi-factor authentication (MFA).

### Sites
Let users [follow](/graph/api/site-follow?view=graph-rest-beta) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta) SharePoint sites.

### Teamwork
- Host [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).
- Support [configuring](/graph/api/resources/teamdiscoverysettings?view=graph-rest-beta) how a private team can be discovered.


## January - April, 2019: New and generally available

[Microsoft Graph data connect](data-connect-concept-overview.md)

### Calendar
[Get free-busy schedule](outlook-get-free-busy-schedule.md)

### Identity and access
[Identity providers](/graph/api/resources/identityprovider?view=graph-rest-1.0)
[Improved auth guides](/graph/auth)
[Migrating apps from Azure AD Graph to Microsoft Graph](migrate-azure-ad-graph-overview.md)

### SDKs
[SDK guides](/sdks/sdks-overview.md)
API snippets ([example](/graph/api/user-get?view=graph-rest-1.0&tabs=cs#sdk-sample-code))

### Security
[Tenant secure score](/graph/api/resources/securescore?view=graph-rest-1.0)

## January - April, 2019: New in preview

### Calendar, group, mail, to-do tasks
[Get raw/MIME content of file or item attachments](/graph/api/attachment-get?view=graph-rest-beta#get-the-raw-contents-of-a-file-or-item-attachment) in an event, message, Outlook task, or group post

### Change notifications
[Reduce missing change notifications for Outlook resources](webhooks-outlook-authz.md)

### Devices and apps
- Intune [January](changelog.md#january-2019) updates 
- Intune [February](changelog.md#february-2019) updates
- Intune [March](changelog.md#march-2019) updates
- Intune [April](changelog.md#april-2019) updates

### Files
[Sharing invitation](/graph/api/driveitem-invite?view=graph-rest-beta) includes expiration and password

### Financials
[Dynamics 365 Business Central](dynamics-business-central-concept-overview.md)

### Identity and access
[Access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) support application permissions
[Audit and sign-in logs](/graph/api/resources/azure-ad-auditlog-overview?view=graph-rest-beta)
[Custom sign-in and sign-up in Azure AD B2C](/graph/api/resources/trustframeworkpolicy?view=graph-rest-beta)
[Risky user](/graph/api/resources/riskyuser?view=graph-rest-beta) and [history](/graph/api/resources/riskyuserhistoryitem?view=graph-rest-beta)

### Mail
[Get MIME content of messages](outlook-get-mime-message.md)

### Reports
[Application sign-in reports](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta)

### Security
[Security actions](/graph/api/resources/securityaction?view=graph-rest-beta)
[Threat indicators](/graph/api/resources/tiindicator?view=graph-rest-beta)

### Teamwork
[1:1 chats](/graph/api/resources/chat?view=graph-rest-beta)
[Shifts management](/graph/api/resources/shift?view=graph-rest-beta)

## See also
- See [what's currently new](whats-new-overview.md) in Microsoft Graph.
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).