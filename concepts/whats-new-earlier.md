---
title: "Hightlights of earlier releases in Microsoft Graph"
description: "What was new earlier in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Highlights of earlier releases

## October 2019: New and generally available

### Identity and access
- Use [organization contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0) in production apps. Organization contacts are managed by organization administrators, synchronized either from an on-premises Active Directory or from Exchange Online.
- Configure [certificate-based authentication](https://docs.microsoft.com/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started) in an [organization](/graph/api/resources/organization?view=graph-rest-1.0).
- Add and remove [password credentials](/graph/api/resources/passwordcredential?view=graph-rest-1.0) for [applications](/graph/api/resources/application?view=graph-rest-1.0).

### Mail
Use the new **message** parameter to update any writeable [message](/graph/api/resources/message?view=graph-rest-1.0) properties when [replying](/graph/api/message-reply?view=graph-rest-1.0) to a message, for example, [adding a recipient to the reply](/graph/api/message-reply#example?view=graph-rest-1.0).

### Microsoft Graph data connect
Developers and data scientists can now use [tools to translate Office 365 data into Common Data Model format](https://github.com/OfficeDev/MS-Graph-Data-Connect/blob/master/Common-Data-Model/README.md), making it schematically consistent with other Open Data Initiative (ODI)-ready datasets. 


### Microsoft Graph SDKs
- Use chaos handlers in the JavaScript SDK to verify if an app is resilient to server failures that are tricky to initiate.
- Read about [making API calls using the SDKs](/graph/sdks/create-requests).

### Users
- [Get](/graph/api/user-get-mailboxsettings?view=graph-rest-1.0) or [set](/graph/api/user-update-mailboxsettings?view=graph-rest-1.0) a user's preferred date and time format [settings for the user's mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0). 
- Track the date/time of the last password change on a [user](/graph/api/resources/user?view=graph-rest-1.0).

## October 2019: New in preview

### Calendar
- Meeting organizers can [allow invitees to propose alternate meeting times](outlook-calendar-meeting-proposals.md). When receiving a meeting response that includes a proposed alternate time, the organizer can decide to accept the proposal and [update](/graph/api/event-update?view=graph-rest-beta) the meeting time.
- Programmatic calendar sharing is in closer parity with the Outlook user experience. In addition to tracking the current user's permissions and sharing status for a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-beta), you can now manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-beta) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta), you can now specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- Additional online meeting support:
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-beta) to be available online, and provide details for attendees to join the meeting online. 
  - In particular, use the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** to set or identify Microsoft Teams as an online meeting provider, a workaround for a [known issue](known-issues.md#onlinemeetingurl-property-support-for-microsoft-teams) with the **onlineMeetingUrl** property.

### Devices and apps
Intune [October](changelog.md#october-2019) updates

### Graph Explorer
Try the [next version of Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/preview) and see handy contextual information such as permissions, access tokens, and SDK code snippets in the new **Permissions**, **Auth**, and **Snippets** tabs. Use the **Preview** slider to switch between the [production](https://developer.microsoft.com/graph/graph-explorer) and new preview version of Graph Explorer.

### Groups
- Use the **hideFromAddressLists** and **hideFromOutlookClients** properties to control the visibility of a [group](/graph/api/resources/group?view=graph-rest-beta) in certain parts of the Outlook user interface or in an Outlook client.
- [Assign](/graph/api/group-assignlicense?view=graph-rest-beta) or remove licenses on users in a [group](/graph/api/resources/group?view=graph-rest-beta).

### Identity and access
- Use [conditional access policies](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta) to customize access rules for an organization. These rules consider signals about a user or a device identity, such as user or group membership, IP location, and behaviors such as attempts to access specific applications, and risky sign-in behaviors.
- Use [entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta) to manage access to groups, applications, and SharePoint Online sites for users in and outside of an organization.
- Add and remove [password credentials](/graph/api/resources/passwordcredential?view=graph-rest-beta) for [applications](/graph/api/resources/application?view=graph-rest-beta) and [service principals](/graph/api/resources/serviceprincipal?view=graph-rest-beta).
- Manage Azure AD B2C [trust framework policy keys](/graph/api/resources/trustframeworkkeyset?view=graph-rest-beta).
- Define Azure AD B2C [user flow](/graph/api/resources/identityuserflow?view=graph-rest-beta) policies for sign in, sign up, combined sign up and sign in, password reset, and profile update.
- Configure [information protection labels](/graph/api/resources/informationprotectionlabel?view=graph-rest-beta) to classify sensitivity for a user or tenant.
- Existing apps using APIs for [identity risk events](/graph/api/resources/identityriskevent?view=graph-rest-beta) should transition to those for [risk detection](/graph/api/resources/riskdetection?view=graph-rest-beta) in Azure AD Identity Protection. See the related [blog post](https://developer.microsoft.com/graph/blogs/deprecatation-of-the-identityriskevents-api/) for more details and deprecation timeline.


### Mail
[Attach large files up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-beta) instance, by creating an [upload session](/graph/api/resources/uploadsession?view=graph-rest-beta), and iteratively uploading ranges of the file until all the bytes of the file have been uploaded. 

### Microsoft Graph Security API
- Preview integration with RSA NetWitness, ServiceNow, and Splunk, to correlate and synchronize [alerts](/graph/api/resources/security-api-overview?view=graph-rest-beta#alerts), and improve threat protection and response.
- New triggers added to the [Microsoft Graph security connector](https://docs.microsoft.com/connectors/microsoftgraphsecurity/) and [playbooks](https://docs.microsoft.com/azure/security-center/security-center-playbooks) for Logic Apps and Flow. See [playbook examples](https://github.com/microsoftgraph/security-api-solutions/tree/master/Playbooks).
- Support for sending [threat indicators](/graph/api/resources/security-api-overview?view=graph-rest-beta#threat-indicators-preview) to Microsoft Defender ATP to block or alert on threats using their own intelligence sources. Integrations with partners like ThreatConnect enable customers to send indicators directly from threat intelligence and automation solutions. 

### Notifications
- [Create and send notifications](/graph/api/user-post-notifications?view=graph-rest-beta) to all app clients on all device endpoints that a user is signed in to, without having to manage user-delegated permissions.
- Use [target policy endpoints](/graph/api/resources/targetpolicyendpoints?view=graph-rest-beta) on user [notifications](/graph/api/resources/notification?view=graph-rest-beta) to specifically target notifications for the Windows, iOS, Android, or WebPush platform.
- Specify a [fall back policy](/graph/api/resources/fallbackpolicy?view=graph-rest-beta) on notifications for iOS endpoints, to send high-priority raw notifications that might not be delivered to devices otherwise due to platform specific restrictions, such as battery saver mode.

 
### PowerShell SDK 
Developers and IT professionals can note the coming of the [Microsoft Graph Powershell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell), which will generate modules that contain cmdlets to make Microsoft Graph REST API requests.

## September 2019: New and generally available

### Calendar, mail, and group
[Get the raw content of a file, or the MIME content of an item](/graph/api/attachment-get?view=graph-rest-1.0#get-the-raw-contents-of-a-file-or-item-attachment) that has been added as an [attachment](/graph/api/resources/attachment?view=graph-rest-1.0) to an [event](/graph/api/resources/event?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), or group [post](/graph/api/resources/post?view=graph-rest-1.0).

### Calendar, mail, Outlook task, personal contact
Use the [translateExchangeId](/graph/api/user-translateexchangeids?view=graph-rest-1.0) function to convert an Outlook item ID between supported [formats](/graph/api/user-translateexchangeids?view=graph-rest-1.0#exchangeidformat-values), including the Microsoft Graph default ID format and immutable ID format. 

The following resources support ID format conversion:

- [attachment](/graph/api/resources/attachment?view=graph-rest-1.0)
- [contact](/graph/api/resources/contact?view=graph-rest-1.0)
- [event](/graph/api/resources/event?view=graph-rest-1.0)
- [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0)
- [message](/graph/api/resources/message?view=graph-rest-1.0)
- [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-1.0)

### Mail
[Get the MIME content of a message](outlook-get-mime-message.md).

### Microsoft Graph Toolkit
Use the [Microsoft Graph Toolkit](toolkit/overview.md) to develop production apps that offer a consistent Microsoft 365 look-and-feel, and save time in authenticating and accessing data from Microsoft Graph.

## September 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [September](changelog.md#september-2019) updates

### Files
- Enhanced synchronization support:

  - Use the new **pendingOperations** property to identify operations that may affect the binary content of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta).
  - [Restore](/graph/api/driveitem-restore?view=graph-rest-beta) a deleted **driveItem**. 
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file?view=graph-rest-beta) data security and integrity.
- Get or set the orientation of a [photo](/graph/api/resources/photo?view=graph-rest-beta). Setting is supported on OneDrive Personal.

### Identity and access
- Use the new **identities** property and get the identities that a [user](/graph/api/resources/user?view=graph-rest-beta) can use to sign in to an account. Identities can be provided by organizations, or social identity providers such as Facebook, Google, and Microsoft.
- Incremental enhancements for [synchronizing identities](/graph/api/resources/synchronization-overview?view=graph-rest-beta) in a cloud application for a tenant:

  - Store settings for a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta)
  - Specify a reason to impose [quarantine](/graph/api/resources/synchronization-quarantine?view=graph-rest-beta) on a synchronization job

### Teamwork
Use the **General** channel of a [team](/graph/api/resources/team?view=graph-rest-beta), or customize [member settings](/graph/api/resources/teammembersettings?view=graph-rest-beta) to let team members create private channels in the **team**.

### Users
- Get or update the identities with which a [user](/graph/api/resources/user?view=graph-rest-beta) can sign in to an account. These identities can be provided by business organizations, or by social identity providers such as Facebook, Google, and Microsoft.
- Get or update a user's preferred date and time format [settings for the mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta).


## August 2019: New and generally available 

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-1.0) about deleted item count and size.
- Track Office 365 group IDs when [getting group activity details](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-1.0).
- Track the owner principal name when getting [OneDrive usage account detail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-1.0) and [SharePoint site usaged detail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0).
- Get the number of active and inactive users on Office 365, when [getting a report on user counts per Office 365 service](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-1.0).

### Security
- Use the new [Microsoft Graph security API add-on for Splunk](https://aka.ms/graphsecuritysplunkaddon) to stream security alerts and insights from many partner products into Splunk, enabling easier real-time correlation of their security data. See the [announcement](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Introducing-the-new-Microsoft-Graph-Security-API-add-on-for/ba-p/815972) for more information. 
- [See a list of other solutions and connectors](security-integration.md) built by Microsoft or by Microsoft partners that connect with the security API and let you work with data in a unified format.


## August 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [August](changelog.md#august-2019) updates

### Education
- Associate a [teacher](/graph/api/resources/educationuser?view=graph-rest-beta) or [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta) with a [grading rubric](/graph/api/resources/educationrubric?view=graph-rest-beta) to account for specific qualities and levels in assignments. An example of a quality is spelling and grammar, and examples of levels are "good" and "poor". You can further associate points and weights to the rubric. For more information, see [education rubric overview](education-rubric-overview.md).
- Evaluate an assignment and present the results in terms of [feedback](/graph/api/resources/educationfeedbackoutcome?view=graph-rest-beta), a [numeric grade](/graph/api/resources/educationpointsoutcome?view=graph-rest-beta), or [rubric](/graph/api/resources/educationrubricoutcome?view=graph-rest-beta).

### Files
Up till this point, you have been able to [follow](/graph/api/driveitem-follow?view=graph-rest-beta) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) for convenient access, or for faciliating actions such as move, copy, and save-as. You can now use the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-beta) action to stop following such drive items.

### Identity and access
- Providers of role-based access control (RBAC) can [manage roles](/graph/api/resources/rolemanagement?view=graph-rest-beta) in Azure Active Directory, by [defining role actions](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta) that can be performed on specific resources, and [assigning roles](/graph/api/resources/unifiedroleassignment?view=graph-rest-beta) to users based on such role definitions, giving them the corresponding access to those resources.
- Administrators can [list access reviews](/graph/api/accessreview-list?view=graph-rest-beta) to efficiently facilitate reviewing group memberships, access to enterprise applications, and role assignments. Regular access reviews make sure only the appropriate people have continued access to resources in specific ways.

### Social and workplace intelligence
End users have been able to use the Office 365 [MyAnalytics](social-intel-concept-overview.md#why-integrate-with-document-based-insights-preview) app to get insights on managing time, collaboration at work, and work-life balance. Now, you can use the [analytics API](/graph/api/resources/social-overview?view=graph-rest-beta#help-users-gain-insights-into-their-work-patterns) to integrate data on time spent on work activities such as calls, chats, and email, to help improve a user's productivity and wellbeing. 


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
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [blog announcement](https://developer.microsoft.com/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and access Outlook email search results. See related [blog announcement](https://developer.microsoft.com/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

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
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).