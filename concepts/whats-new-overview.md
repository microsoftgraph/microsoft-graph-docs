---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [December](changelog.md#december-2019) and [November](changelog.md#november-2019) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## January 2020: New and generally available

### Security
As part of customer alert management, use the [update alert](/graph/api/alert-update?view=graph-rest-1.0) method and update the **comments** field as either `Closed in IPC` or `Closed in MCAS`.

## December 2019: New and generally available

### Cloud communications
The cloud communications API has GA'd and APIs for [call](/graph/api/resources/call?view=graph-rest-1.0) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-1.0) are [available in v1.0](/graph/api/resources/communications-api-overview?view=graph-rest-1.0).

### Education
Use the **classSettings** property to manage class-specific settings, such as enabling the sending of weekly assignment digests. This property is available on the [team](/graph/api/resources/team?view=graph-rest-1.0) resource when the team represents an [education class](/graph/api/resources/educationclass?view=graph-rest-1.0).

### Identity and access 
[Attempting to get container objects with limited permissions returns partial data](permissions-reference.md#limited-information-returned-for-inaccessible-member-objects). An example is a [group](/graph/api/resources/group?view=graph-rest-1.0) instance that's associated with a [user](/graph/api/resources/user?view=graph-rest-1.0), another **group**, and a [device](/graph/api/resources/device?view=graph-rest-1.0). An app having only the permissions User.Read.All and Group.Read.All and attempting to access this **group** instance would get the **user** and **group** objects, but limited data for the **device** object (only data type and object ID and not property values).

### People and workplace intelligence
The insights API has GA'd. Use the API in production apps to identify the most relevant documents that are:

- [Trending around](/graph/api/insights-list-trending?view=graph-rest-1.0) a user
- [Used by](/graph/api/insights-list-used?view=graph-rest-1.0) a user
- [Shared with or shared by](/graph/api/insights-list-shared?view=graph-rest-1.0) a user

### Reports
To get Office 365 usage reports using permissions delegated by a user, administrators must have assigned the user an Azure AD limited administrator role. This can be one of the following roles: company administrator, Exchange administrator, SharePoint administrator, Lync administrator, global reader, or reports reader. See [Authorization for APIs to read Office 365 usage reports](reportroot-authorization.md) for details.

### Toolkit
Microsoft Graph Toolkit v1.1 has released. For a list of enhancements and bug fixes, see the [December 2019 section](changelog.md#december-2019) of the changelog.

## December 2019: New in preview

### Cloud communications
- Use the new [presence](/graph/api/resources/presence?view=graph-rest-beta) resource to get information about the availability and current activity of one or more users.
- [Delete](/graph/api/onlinemeeting-delete?view=graph-rest-beta) an instance of an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta).
- See the [December 2019 section](changelog.md#december-2019) of the changelog for the renaming and removal of a few members of the [call](/graph/api/resources/call?view=graph-rest-beta) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) resources, to be in parity with the v1 version of these resources.

### Devices and apps
Intune [December](changelog.md#december-2019) updates

### Identity and access 
- Behavior fix to the **appRoleAssignments** and **appRoleAssignedTo** relationships on [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta).
- Use [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta) in [Azure AD entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta) to request adding a resource to a [catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta), so that the roles of that resource can be used in an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta).
- Use the [threat assessment API](/graph/api/resources/threatassessment-api-overview?view=graph-rest-beta) to empower administrators to report suspicious emails, phishing URLs, email attachments, or other files. The thread scanning verdict can then inform them to adjust organizational policy appropriately.

### Teamwork
- [Set up change notifications that include resource data](webhooks-with-resource-data.md) for [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resources in Microsoft Teams channels and chats.
- [Subscribe to notifications](/graph/api/resources/subscription?view=graph-rest-beta) for new or modified [channel messages or chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).
- Use the [shiftPreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta) resource to enable specifying a user's availability to be assigned shifts in a [schedule](/graph/api/resources/schedule?view=graph-rest-beta). Get or set this as part of the user's [settings](/graph/api/resources/usersettings?view=graph-rest-beta).


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

