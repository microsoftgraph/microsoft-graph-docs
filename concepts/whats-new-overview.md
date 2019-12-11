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


## December 2019: New in preview

### Teamwork
- [Set up change notifications that include resource data](webhooks-with-resource-data.md) for [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resources in Microsoft Teams channels and chats.
- [Subscribe to notifications](/graph/api/resources/subscription?view=graph-rest-beta) for new or modified [channel messages or chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).

## November 2019: New and generally available

### Groups
- Use delegated or application permissions, GroupMember.Read.All and GroupMember.ReadWrite.All, to list groups, read basic group properties, read (and update if read/write permission) the membership of the groups the app has access to.
- Use the application permission, Group.Create, to create groups without a signed-in user.
- For a specified [group](/graph/api/resources/group?view=graph-rest-1.0), [check for membership](/graph/api/group-checkmemberobjects?view=graph-rest-1.0) in other groups or directory roles.

### Identity and access
- Register [applications](/graph/api/resources/application?view=graph-rest-1.0) that authenticate with Azure Active Directory (Azure AD). Use delegated [permissions](/graph/permissions-reference#application-resource-permissions), Application.Read.All and Application.ReadWrite.All, or application permission, Application.Read.All, as appropriate.
- For a specified [device](/graph/api/resources/device?view=graph-rest-1.0), [check for membership](/graph/api/device-checkmemberobjects?view=graph-rest-1.0) in other groups or directory roles.

### Mail
- Use the **conversationIndex** property to get the position of a message in an Outlook email conversation.
- Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to get [message](/graph/api/resources/message?view=graph-rest-1.0) or [mail folder](/graph/api/resources/mailfolder?view=graph-rest-1.0) resources, track their changes, and manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-1.0) for change notifications on messages.

### Users
- [Check for group memberships](/graph/api/user-checkmemberobjects?view=graph-rest-1.0) for a specified [user](/graph/api/resources/user?view=graph-rest-1.0).
- Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.

## November 2019: New in preview

### Calendar
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md).
- [Set properties](/graph/api/place-update?view=graph-rest-beta) for the rich location types of [room](/graph/api/resources/room?view=graph-rest-beta) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta).

### Cloud communication
The [call](/graph/api/resources/call?view=graph-rest-beta) resource type supports the following additional features:

- The [context of an incoming call](/graph/api/resources/incomingcontext?view=graph-rest-beta)
- The type of endpoint for a participant, such as voice mail or Skype for Business
- The ability to [update](/graph/api/call-updaterecordingstatus?view=graph-rest-beta) the [recording information](/graph/api/resources/recordinginfo?view=graph-rest-beta) for a [participant](/graph/api/resources/participant?view=graph-rest-beta)

### Devices and apps
Intune [November](changelog.md#november-2019) updates

### Education
Administrators can enable class-wide settings through the **classSettings** property of the [team](/graph/api/resources/team?view=graph-rest-beta) associated with the [class](/graph/api/resources/educationclass?view=graph-rest-beta). Currently, there is a setting to notify guardians about weekly assignments.

### Identity and access
- Use the application permission, Policy.Read.All, to read all your organization's conditional access policies and named locations, without a signed-in user present.
- Allow a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta) to be in a report-only state, `enabledForReportingButNotEnforced`.
- Use the delegated permission, ThreatAssessment.ReadWrite.All, or application permission, ThreatAssessment.Read.All, to read (or create, if read/write permission) requests to assess threats in an organization.

### Mail
Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-beta) for change notifications on the [message](/graph/api/resources/message?view=graph-rest-beta) resource.

### Notifications
Use the new light-weight notifications [web SDK](https://aka.ms/GNSDK) in place of the [Project Rome SDK](https://github.com/Microsoft/project-rome), to take advantage of an improved authentication model and support for web apps using web push. 

### People and workplace intelligence
Debut of the [profile](/graph/api/resources/profile?view=graph-rest-beta) resource which is a rich representation of the next generation of people entities in Microsoft services. This resource relates to common and practical people attributes, including information for any meaningful dates such as [anniversaries](/graph/api/resources/personanniversary?view=graph-rest-beta), [education](/graph/api/resources/educationalactivity?view=graph-rest-beta), [employment positions](/graph/api/resources/workposition?view=graph-rest-beta), [interests](/graph/api/resources/personinterest?view=graph-rest-beta), [language](/graph/api/resources/languageproficiency?view=graph-rest-beta) and [skill](/graph/api/resources/skillproficiency?view=graph-rest-beta) proficiencies, [project participation](/graph/api/resources/projectparticipation?view=graph-rest-beta), [web site association](/graph/api/resources/personwebsite?view=graph-rest-beta), and other [account](/graph/api/resources/useraccountinformation?view=graph-rest-beta) and contact information.

### Search
Debut of the [Microsoft Search API](search-concept-overview.md) which allows app users to get more up-to-date, personalized, and relevant search results powered by Microsoft Graph. Use the [query](/graph/api/search-query?view=graph-rest-beta) capability that by default, searches Outlook messages and events, and OneDrive and SharePoint files in the Microsoft cloud. Use [connectors](/microsoftsearch/connectors-overview), available in the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery), to include search data outside of the Microsoft cloud. Alternatively, [build your own connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta#common-use-cases), index external custom items and files, and query specific external data sources.

### Teamwork
Get the [file](/graph/api/resources/driveitem?view=graph-rest-beta) resources associated with a [team](/graph/api/resources/team?view=graph-rest-beta) and [channel](/graph/api/resources/channel?view=graph-rest-beta) by using the following HTTP request syntax:

```http
GET /teams/{teamId}/channels/{channelId}/filesFolder
```

### Users
Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.

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

