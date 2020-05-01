---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [April](changelog.md#april-2020) and [March](changelog.md#march-2020) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## April 2020: New and generally available

### Calendar
- [Share or delegate calendars](outlook-share-or-delegate-calendar.md) programmatically, in closer parity with the Outlook user experience. In addition to tracking the current user's permissions and sharing status for a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-1.0), you can now manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-1.0) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0), you can now specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- [Create or update an event as an online meeting](outlook-calendar-online-meetings.md):
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-1.0) to be available online, and provide details for attendees to join the meeting online. 
  - In particular, use the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** to set or identify Microsoft Teams as an online meeting provider, a workaround for a [known issue](known-issues.md#onlinemeetingurl-property-support-for-microsoft-teams) with the **onlineMeetingUrl** property.
- Add [file attachments up to 150MB](outlook-large-attachments.md) to an [event](/graph/api/resources/event?view=graph-rest-1.0).

### Files
- [Check out](/graph/api/driveitem-checkout?view=graph-rest-1.0) or [check in](/graph/api/driveitem-checkin?view=graph-rest-1.0) a file to OneDrive to manage updating the file and making updates available to others when the updates are ready.

### Identity and access
- To manage roles and assign access to resources in role-based access control (RBAC) providers such as Microsoft Intune, use [unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple?view=graph-rest-1.0). The **unifiedRoleAssignmentMultiple** resource supports defining a single role over an array of scopes, and assigning the role to multiple principals (such as users).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-1.0) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-1.0). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-1.0/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-1.0), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancetimepolicy?view=graph-rest-1.0). 

### Mail
Add [file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-1.0).

### Sites and lists
[List sites](/graph/api/sites-list-followed?view=graph-rest-1.0) that the signed-in user has followed.

## April 2020: New in preview only

### Devices and apps | Cloud printing

Designate allowed users and groups to use specific [printer shares](/graph/api/resources/printershare?view=graph-rest-beta) on Universal Print, the Microsoft 365 cloud-based print infrastructure. To experience robust and centralized print management capabilities, and offer a simple yet rich and secure print experience for print users, see the [Universal Print announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/announcing-universal-print-a-cloud-based-print-solution/ba-p/1204775) and join their preview program.

### Devices and apps | Corporate management
Intune [April](changelog.md#april-2020) updates.

### Groups
Identify the app that created a [group](/graph/api/resources/group?view=graph-rest-beta) by its app ID.

### Identity and access
- [Track changes](/graph/api/administrativeunit-delta?view=graph-rest-beta) for [administrative units](/graph/api/resources/administrativeunit?view=graph-rest-beta).
- [Track changes](/graph/api/oauth2permissiongrant-delta?view=graph-rest-beta) for [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant?view=graph-rest-beta).
- [Manage](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta) a user's [authentication methods](/graph/api/resources/authenticationmethod?view=graph-rest-beta) which include [password](/graph/api/resources/passwordauthenticationmethod?view=graph-rest-beta) or [phone](/graph/api/resources/phoneauthenticationmethod?view=graph-rest-beta). For example, [reset a user password](/graph/api/passwordauthenticationmethod-resetpassword?view=graph-rest-beta) and [get the reset status](/graph/api/authenticationoperation-get?view=graph-rest-beta), or [add a phone number](/graph/api/authentication-post-phonemethods?view=graph-rest-beta) for a user for SMS or voice call authentication, if the policy is enabled for the user.

### Reports | Identity and access reports
[List](/graph/api/relyingpartydetailedsummary-list?view=graph-rest-beta) [relying parties](https://docs.microsoft.com/windows-server/identity/ad-fs/technical-reference/understanding-key-ad-fs-concepts) configured in Active Directory Federation Services.

### Reports | Office 365 usage reports
View **Meeting Created** and **Meeting Interacted** data in CSV reports for [email activity counts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta), [email activity user counts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta), and [email activity user detail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta).


## March 2020: New and generally available

### Cloud communications
- Get the call routing and incoming context of a [call](/graph/api/resources/call?view=graph-rest-1.0).
- [Update the recording status](/graph/api/call-updaterecordingstatus?view=graph-rest-1.0) of a call.
- Specify recording information for a [participant](/graph/api/resources/participant?view=graph-rest-1.0), including the initiator and status of the recording.
- Uniquely identify participants in a conference or participant-to-participant [call](/graph/api/resources/call?view=graph-rest-1.0) using the **callChainId** property.
- Identify as part of [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-1.0) the country code and endpoint type (such as Skype for Business, or Skype for Business VOIP) of the participant.
- Third-party video teleconferencing (VTC) device partners can log and provide media quality data for their video teleconferencing devices through a Cloud Video Interop (CVI) bot and using the [logTeleconferenceDeviceQuality](/graph/api/call-logteleconferencedevicequality?view=graph-rest-1.0) function. Media quality includes open-type data for [audio](/graph/api/resources/teleconferencedeviceaudioquality?view=graph-rest-1.0), [video](/graph/api/resources/teleconferencedevicevideoquality?view=graph-rest-1.0), and [screen-sharing](/graph/api/resources/teleconferencedevicescreensharingquality?view=graph-rest-1.0).

### Files
- [Remote items](/graph/api/resources/remoteitem?view=graph-rest-1.0) that are shared with a user, added to the user's OneDrive, or returned as a search result can contain metadata for an image or video.
- [Follow](/graph/api/driveitem-follow?view=graph-rest-1.0) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) for convenient access, or for faciliating actions such as move, copy, and save-as. Use [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-1.0) to stop following the drive item.
- [Grant](/graph/api/permission-grant?view=graph-rest-1.0) permissions to users to access a sharing link, in order to share the corresponding drive item.

### Identity and access
- [Track changes](/graph/api/orgcontact-delta?view=graph-rest-1.0) for [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0).
- Use the **riskEventTypes_v2** property to get the risk event types associated with a [sign-in](/graph/api/resources/signin?view=graph-rest-1.0).
- Use the `User.ManageIdentities.All` delegated permission to allow an app to read, update, or delete identities that are associated with a user's account, that the signed-in user has access to. Use that permission at the application-level without a signed-in user present. This allows the app to [manage](/graph/api/user-update?view=graph-rest-1.0) which identities a user can sign-in with.

### Reports
Use Teams Service Administrator and Teams Communications Administrator as accepted user roles to allow apps to read Office 365 service usage reports on behalf of a user, as [forms of user-delegated authorization](reportroot-authorization.md). 

### Sites
- Let users [follow](/graph/api/site-follow?view=graph-rest-1.0) or [unfollow](/graph/api/site-unfollow?view=graph-rest-1.0) SharePoint sites.
- [Subscribe to change notifications](/graph/api/resources/subscription?view=graph-rest-1.0) for a SharePoint [list](/graph/api/resources/list?view=graph-rest-1.0).

## March 2020: New in preview only

### Calendar
- Use the **calendarGroupId** property to get the [calendar group](/graph/api/resources/calendargroup?view=graph-rest-beta) in which a [calendar](/graph/api/resources/calendar?view=graph-rest-beta) has been created.
- Use the **isDraft** property to identify an [event](/graph/api/resources/event?view=graph-rest-beta) as a meeting that the user has updated in Outlook but has not sent to update attendees.

### Cloud communications
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta) to get an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) instance by a custom external ID, and create one when none already exists.
- Have the option to use the **externalId** property to identify an online meeting with the custom external ID.
- Use the optional `Accept-Language` HTTP request header to [create](/graph/api/application-post-onlinemeetings?view=graph-rest-beta) or [get](/graph/api/onlinemeeting-get?view=graph-rest-beta) an instance of online meeting, so that the successful operation displays the content of the **joinInformation** property in the specified language and locale variant.

### Devices and apps
Intune [March](changelog.md#march-2020) updates.

### Identity and access
- Use the `Auditlogs.Read.All` permission to list the [sign-in activity](/graph/api/resources/signinactivity?view=graph-rest-beta) of a [user](/graph/api/resources/user?view=graph-rest-beta).
- Use the `PrivilegedAccess.Read.AzureResources` application-level permission for [Privileged Identity Management (PIM) of Azure resources](/graph/api/resources/privilegedidentitymanagement-resources?view=graph-rest-beta), to set up just-in-time access workflow for Azure infrastructure roles at a management group, subscription, resource group, or resource level.
- Use the [identitySecurityDefaultsEnforcementPolicy](/graph/api/resources/identitysecuritydefaultsenforcementpolicy?view=graph-rest-beta) entity to [get](/graph/api/identitysecuritydefaultsenforcementpolicy-get?view=graph-rest-beta) or [update](/graph/api/identitysecuritydefaultsenforcementpolicy-update?view=graph-rest-beta) pre-configured default security settings that protect organizations against common attacks.
- Use an `identity` segment when calling the conditional access APIs. For example, to [get](/graph/api/conditionalaccesspolicy-get?view=graph-rest-beta) a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta): `GET https://graph.microsoft.com/beta/identity/conditionalAccess/policies/{id}`.
- Use the **authenticationRequirement** property to get the highest level of authentication that is needed through all the sign-in steps in order for [sign-in](/graph/api/resources/signin?view=graph-rest-beta) to succeed.
- Use pagination when [listing provisioning events](/graph/api/provisioningobjectsummary-list?view=graph-rest-beta) that occurred in your tenant.

### Search
- To add data in a file to search results, index the data simply as an [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta). The **externalFile** type has been deprecated.
- [Update](/graph/api/externalitem-update?view=graph-rest-beta) an [item in the index](/graph/api/resources/externalitem?view=graph-rest-beta), by specifically updating the plain-text representation of the item (represented by the **content** property), or the properties bag of the item (represented by the **properties** property). Updating any property in the properties bag overwrites the entire properties bag, so make sure to explicitly include all the properties of the item in the update.
- Check for `HTTP 429` and the `Retry-After` response header after calling the [create](/graph/api/externalconnection-put-items?view=graph-rest-beta), [update](/graph/api/externalitem-update?view=graph-rest-beta), or [delete](/graph/api/externalitem-delete?view=graph-rest-beta) operation of **externalItem**. Backing off requests using the `Retry-After` delay is the fastest way to recover from [throttling](throttling.md#best-practices-to-handle-throttling).

### Teamwork
Use the `ChannelMessage.Read.All` application-level permission to read [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) instances in channels without a signed-in user.

### Universal Print
Debut of the [Universal Print API](universal-print-concept-overview.md) which allows users to print on the web or from an app. The API lets IT administrators manage user and group access to printers in the Microsoft 365 cloud, remote printer sharing to maintain availability, monitor printer status, and report on archived print jobs and usage. 

Note that as of March 2020, the Universal Print _service_ is in private preview. See [Announcing Universal Print: a cloud-based print solution](https://aka.ms/announcinguniversalprint) for information regarding participation.


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

