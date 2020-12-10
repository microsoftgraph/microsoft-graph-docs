---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](changelog.md). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## December 2020: New and generally available

### Cloud communications
GA of the [presence](/graph/api/resources/presence) resource, allowing getting the presence information of one or more users.

### Teamwork
- GA of the [API to manage the installation of a Teams app](/graph/api/resources/teamsappinstallation), including getting installed apps, or adding, removing, or upgrading of the app in a team or in the personal scope of a user.
- [Get a chat between a user and a Teams app](/graph/api/userscopeteamsappinstallation-get-chat).

## December 2020: New in preview only

### Identity and access
Get or set the version and creation metadata for an Azure AD [terms of use](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true) [agreement](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true), [agreement file](/graph/api/resources/agreementfile?view=graph-rest-beta&preserve-view=true), and [agreementfilelocalization](/graph/api/resources/agreementfilelocalization?view=graph-rest-beta&preserve-view=true)

## November 2020: New and generally available

### Cloud communications
- GA of the **role** property of the [meetingParticipantInfo](/graph/api/resources/meetingParticipantInfo) type, that distinguishes the role of a participant in an [online meeting](/graph/api/resources/onlinemeeting) as an attendee or presenter.
- GA of the **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings#lobbybypassscope-values) to admit users to an online meeting.
- GA of the **isEntryExitAnnounced** property to customize settings for announcing callers joining or leaving an online meeting.
- GA of the **allowedPresenters** property to allow specific presenters in the meeting.

### Search
- GA of the Microsoft Search [query API](/graph/api/resources/search-api-overview), supporting scoped searching of the following types of data:
  - [Outlook messages](/graph/search-concept-messages)
  - [Outlook calendar events](/graph/search-concept-events)
  - [OneDrive and SharePoint resources](/graph/search-concept-files).

### Teamwork

- GA of resource-specific consent (RSC) permissions. RSC permissions allow team owners to grant granular consent to a production app to access and/or modify specific data of a team, for example, reading the team's settings, or modifying channel names, descriptions, and other settings.
- GA of APIs that apply to a [channel](/graph/api/resources/channel) or messages within a channel. The APIs include:
  - [Create](/graph/api/conversationmember-add) or [delete](/graph/api/conversationmember-delete) a conversation member from a channel.
  - [Update the role of a member](/graph/api/conversationmember-update) in a channel.
  - Get a specific message or all messages in a channel.
  - Get a specific reply or all replies in a channel.
  - [Track new or updated messages in a channel](/graph/api/chatmessage-delta).


## November 2020: New in preview only

### Devices and apps | Cloud PC
Debut of the [cloud PC API](/graph/api/resources/virtualendpoint?view=graph-rest-beta&preserve-view=true) that lets organizations provision and manage virtual desktops for employees. Use it in conjunction with the Intune API to manage physical and virtual endpoints.

### Devices and apps | Cloud printing
[Subscribe to change notifications](webhooks.md) on a [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Corporate management
Intune [November](changelog.md#november-2020) updates for the beta version.

### Identity and access
- Specify URLs for sending sign-in user tokens, and URIs for authorization codes and access tokens, in the **spa** property of [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true).
- Customize the look and feel of Azure Active Directory sign-in screens through the [organization branding properties](/graph/api/resources/organizationalbrandingproperties?view=graph-rest-beta&preserve-view=true). Organizations can customize based on locale for specific users.

### Identity and access | Governance
Debut of [access review API for group membership](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) to review user access regularly, make sure only the right people have continued access, and efficiently manage group memberships.

### Search
You can aggregate numeric or string type search results that are imported by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and that are set to be refinable in the [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true). See more information about [refining search results using aggregations](search-concept-aggregation.md).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
