---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [May](changelog.md#may-2020) and [April](changelog.md#april-2020) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## May 2020: New and generally available

### Calendar | Place
GA of the [places API](/graph/api/resources/place) in v1.0 - use this API in production apps to get, update, or delete a [room](/graph/api/resources/room) or [room list](/graph/api/resources/roomlist) in a tenant. [Find out more](outlook-calendar-concept-overview.md#build-apps-with-location-awareness-and-provide-intelligent-context) about the places API.

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in v1.0.

### Graph Explorer
Use the many new features of [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) that enhance learning and prototyping in the sandbox. For example:
- View code snippets that correspond to the REST API query you entered, in C#, Java, JavaScript, and Objective C.
- Signed in with a tenant, view and copy an access token to your favorite REST client application.

See [New Graph Explorer is now GA](https://developer.microsoft.com/graph/blogs/new-graph-explorer-is-now-ga/) for more details.

### Identity and access
- GA of the [service principals API] in v1.0 - use [servicePrincipals](/graph/api/resources/serviceprincipal?view=graph-rest-1.0) in production apps to programmatically manage instances of applications and control what an application can do within your tenant. You can control who can use an application, what resources the application has access to, such as adding password credentials, rolling expiring certificates, and managing delegated permission grants and application role assignments.
- GA of the [appRoleAssignment](/graph/api/resources/appRoleAssignment?view=graph-rest-1.0) API, which records the assignment of an [appRole](/graph/api/resources/approle?view=graph-rest-1.0) (representing the `roles` claim in ID tokens and access tokens) to a [user](/graph/api/resources/user?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), or [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0).
- Use the delegated or application permission of `AppRoleAssignment.ReadWrite.All` to allow an app to manage grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, respectively with or without the signed-in user.


### Microsoft Graph SDKs
See new SDK guidance on the following:
- [Paging](/graph/sdks/paging)
- [Batching](/graph/sdks/batch-requests)
- [Uploading large files on OneDrive](/graph/sdks/large-file-upload)
- [Customizing SDK service client through HTTP middleware components](/graph/sdks/customize-client).

### Teamwork
- If your scenario involves online meetings on Teams, see new guidance on [how to choose](choose-online-meeting-api.md) between the [calendar API](outlook-calendar-online-meetings.md) and [cloud communications API](cloud-communications-online-meetings.md) to create and join online meetings.
- [Send](/graph/api/channel-post-messages?view=graph-rest-1.0) and [reply](/graph/api/channel-post-messagereply?view=graph-rest-1.0) to messages in a [channel](/graph/api/resources/channel?view=graph-rest-1.0).
- Get the OneDrive for Business location of the files for a [channel](/graph/api/resources/channel?view=graph-rest-1.0), by using the **fileFolder** navigation property.

### Teamwork | Shifts
GA of the [shifts API](/graph/api/resources/shift?view=graph-rest-1.0) in v1.0 - use this API in production apps to create, update, and manage schedules of firstline workers, to let them stay in touch and collaborate effectively.


## May 2020: New in preview only

### Devices and apps | Cloud printing
- The [printer](/graph/api/resources/printer?view=graph-rest-beta) and [printerShare](/graph/api/resources/printershare?view=graph-rest-beta) resources are now in parity and have the same properties as each other.
- Some property and type name clean-up around printer shares:
  - Use the **shared** navigation property of [print](/graph/api/resources/print?view=graph-rest-beta) to get the list of printer shares registered in the tenant. 
  - See details in the [May](changelog.md#may-2020) changelog.

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in beta.

### Groups
- [Evaluate](/graph/api/group-evaluatedynamicmembership?view=graph-rest-beta) whether a user or device is or would be a member of a dynamic group, using the existing rule for the [group](/graph/api/resources/group?view=graph-rest-beta) or a specified rule. [Rule-based dynamic membership](/azure/active-directory/users-groups-roles/groups-dynamic-membership) reduces administrative overhead of adding and removing members.
- When creating an Office 365 [group](/graph/api/resources/group?view=graph-rest-beta), configure the behaviors of the group by specifying them in the **resourceBehaviorOptions** property. For example, allow members to post, subscribe new members to conversation, disable welcome email, and hide the group in Outlook experiences.
- Specify the resources to provision in the **resourceProvisioningOptions** property that are normally not part of the default [group](/graph/api/resources/group?view=graph-rest-beta) creation. Currently supported is provisioning a group as a [team](/graph/api/resources/team?view=graph-rest-beta) with Microsoft Teams capabilities.

### Identity and access
- Apply OData system query options (`$count`, `$filter`, `$search`) when getting collections of entities that are derived from [directoryObject](). 
You can [search for soecific tokens](/graph/query-parameters?#using-search-on-directory-object-collections) in the **displayName** and **description** properties 
of these entities, and use OData cast to trim **directoryObject** results to certain derived types. See more details in 
[Build advanced queries in Microsoft Graph with $count, $filter, $search, and $orderby](https://developer.microsoft.com/en-us/graph/blogs/build-advanced-queries-with-count-filter-search-and-orderby/).
- As part of the [identity protection API](/graph/api/resources/identityprotection-root?view=graph-rest-beta), use the **riskEventType** property to [get the type of risk detected](/graph/api/riskdetection-get?view=graph-rest-beta), or [get the type of risk in a user's history](/graph/api/riskyuser-list-history?view=graph-rest-beta). Do not use the **riskType** property as it has been deprecated.
- Specify client application types in the **clientAppTypes** property of the [condition set](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) for a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta).
- Use the delegated permission of `EntitlementManagement.Read.All` to allow an app to read access packages and related entitlement management resources on behalf of the signed-in user.

### Teamwork
- Teams apps that [support single sign-on (SSO)](/microsoftteams/platform/tabs/how-to/authentication/auth-aad-sso) can specify the `WebApplicationInfo.id` from the Teams app manifest, in the **azureADAppId** property of the [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta).
- Use [finer grained permissions](/graph/permissions-reference#teams-resource-specific-consent-permissions) to access [team](/graph/api/resources/team?view=graph-rest-beta) and [channel](/graph/api/resources/channel?view=graph-rest-beta) resources.


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
- Apply optional password and expiration date/time as parameters of the [invite](/graph/api/driveitem-invite?view=graph-rest-1.0) and [create sharing link](/graph/api/driveitem-createlink?view=graph-rest-1.0) actions to share a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0).
- Get or set password and expiration date/time of a [permission](/graph/api/resources/permission?view=graph-rest-1.0), and track the [identitySet](/graph/api/resources/identityset?view=graph-rest-1.0) of users granted the permission to share a **driveItem**.
- Get the [permission](/graph/api/resources/permission?view=graph-rest-1.0) of a [shared drive item](/graph/api/resources/shareddriveitem?view=graph-rest-1.0) by using the **permission** navigation property.
- Limit users with a [sharing link](/graph/api/resources/sharinglink?view=graph-rest-1.0) to only view and may not download the contents of a shared**driveItem** on OneDrive for Business or SharePoint.

### Identity and access
- To manage roles and assign access to resources in role-based access control (RBAC) providers such as Microsoft Intune, use [unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple?view=graph-rest-1.0). The **unifiedRoleAssignmentMultiple** resource supports defining a single role over an array of scopes, and assigning the role to multiple principals (such as users).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-1.0) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-1.0). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-1.0/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-1.0), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancetimepolicy?view=graph-rest-1.0). 

### Mail
Add [file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-1.0).

### Sites and lists
- [List sites](/graph/api/sites-list-followed?view=graph-rest-1.0) that the signed-in user has followed.
- Identify the geographic region of a [site collection](/graph/api/resources/sitecollection?view=graph-rest-1.0) by using the **dataLocationCode** property.
- Identify the tenant of a file, folder, or other item on SharePoint by accessing the **tenantId** property that is part of the **sharepointIds** of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0).

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

