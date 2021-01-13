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

### Calendar
- Meeting organizers can use the **hideAttendees** property of an [event](/graph/api/resources/event) to control whether attendees can see one another in the meeting **Tracking** list.
- GA of the **isDraft** property and [cancel](/graph/api/event-cancel) method that are available to organizers, and the [forward](/graph/api/event-forward) method available to organizers and attendees to better manage [event](/graph/api/resources/event) resources in a calendar.
- GA of the **hexColor** and **isDefault** properties of a [calendar](/graph/api/resources/calendar) to better manage calandars.

### Cloud communications
GA of the [presence](/graph/api/resources/presence) resource, allowing getting presence information of one or more users, such as their availability and user activity.

### Identity and access | Identity and sign-in
Try a new [tutorial](tutorial-riskdetection-api.md) to learn how to use the [identity protection API](/graph/api/resources/identityprotectionroot) to identify risk and configure a workflow to confirm compromise or enable remediation.

### Teamwork
- GA of the [API to manage the installation of a Teams app](/graph/api/resources/teamsappinstallation), including getting installed apps, or adding, removing, or upgrading of the app in a team or in the personal scope of a user.
- [Get a chat between a user and a Teams app](/graph/api/userscopeteamsappinstallation-get-chat).

### Use the Toolkit
GA of Microsoft Graph Toolkit 2.0 - this release includes a new [component for Microsoft Graph To-Do tasks](/graph/toolkit/components/todo), distinct from the[Planner tasks component](/graph/toolkit/components/tasks), and an enhanced [person card component](/graph/toolkit/components/person-card). See the [related blog post](https://developer.microsoft.com/en-us/graph/blogs/announcing-the-general-availability-of-microsoft-graph-toolkit-2-0/) for more information.

## December 2020: New in preview only

### Compliance | eDiscovery
Continuing to fulfill the pipeline of [Microsoft 365 compliance APIs](/graph/api/resources/ediscoveryapioverview?view=graph-rest-beta&preserve-view=true) are the [custodian](/graph/api/resources/custodian?view=graph-rest-beta&preserve-view=true) resource and its related operations and methods to [release](/graph/api/custodian-release?view=graph-rest-beta&preserve-view=true) or [activate](/graph/api/custodian-activate?view=graph-rest-beta&preserve-view=true) a custodian. Use the **custodian** resource to access the custodian's data ([userSource](/graph/api/resources/userSource?view=graph-rest-beta&preserve-view=true)) in an Exchange Online mailbox and OneDrive for Business, SharePoint sites ([siteSource](/graph/api/resources/siteSource?view=graph-rest-beta&preserve-view=true)), and Microsoft 365 groups ([unifiedGroupSource](/graph/api/resources/unifiedGroupSource?view=graph-rest-beta&preserve-view=true)).

### Devices and apps | Cloud PC
Identify the failure status of a cloud-managed virtual desktop collectively as `failed`, in the **status** property of the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource.

### Devices and apps | Cloud printing
- [Update](/graph/api/printjob-update-configuration?view=graph-rest-beta&preserve-view=true) the [configuration](/graph/api/resources/printjobconfiguration?view=graph-rest-beta&preserve-view=true) of a [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).
- For details on the renaming of a few properties and retyping of relationships, see the [December 2020](changelog.md#december-2020) section of the [API changelog](changelog.md) for details.

### Education
- If students are added after publishing the assignment, teachers can control the assignment behavior by using the **addedStudentAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can post assignment publish notification through the **notificationChannelUrl** property of the **educationAssignment** resource.

### Identity and access
Get or set the version and creation metadata for an Azure AD [terms of use](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true) [agreement](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true), [agreement file](/graph/api/resources/agreementfile?view=graph-rest-beta&preserve-view=true), and [agreementfilelocalization](/graph/api/resources/agreementfilelocalization?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
As part of Azure Active Directory [entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta&preserve-view=true), when users wishing to access groups, applications, or SharePoint Online sites request an assignment to an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true), they can now respond to [questions](/graph/api/resources/accesspackagequestion?view=graph-rest-beta&preserve-view=true) represented in [localized content](/graph/api/resources/accesspackagelocalizedcontent?view=graph-rest-beta&preserve-view=true) in the [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Administrators can associate user flows with apps that are shared with external users and enable [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview) on those apps. They can customize a self-service sign-up user flow and create a personalized sign-up experience. Specifically, they create a [listener for a sign-up-start event to invoke a custom user flow](/graph/api/resources/invokeuserflowlistener?view=graph-rest-beta&preserve-view=true). Once an application is associated with the user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.
- In an [Azure Active Directory user flow](/graph/api/resources/b2xidentityuserflow?view=graph-rest-beta&preserve-view=true) or [Azure Active Directory B2C tenant user flow](/graph/api/resources/b2cidentityuserflow?view=graph-rest-beta&preserve-view=true), you can manage language defaults and [customize the language and strings displayed to users in the user flow](/graph/api/resources/userflowlanguageconfiguration?view=graph-rest-beta&preserve-view=true).
- Use an [API connector](/graph/api/resources/identityapiconnector?view=graph-rest-beta&preserve-view=true) in user flows for Azure AD self-service sign-up and Azure AD B2C sign-up, to call an API at a specific step to affect the execution of the user flow.
- Define an [email OTP authentication methods policy](/graph/api/resources/emailauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) for a tenant.

### Teamwork
- For a [member](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true) resource in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) context, you can now:
  - Differentiate a member who is an [Azure AD user](/graph/api/resources/aaduserconversationmember?view=graph-rest-beta&preserve-view=true), noting the user ID, email address, and Azure AD tenant ID. 
  - [Add multiple users as members of a team](/graph/api/conversationmembers-add?view=graph-rest-beta&preserve-view=true).
- For a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) resource:
  - [Get all the messages in chats that the specified user has participated in](/graph/api/chats-getallmessages?view=graph-rest-beta&preserve-view=true), including one-on-one chats, group chats, and meeting chats.
  - Use the full range of functionality to list, get, add, remove, and update an [app](/graph/api/resources/teamsappinstallation?view=graph-rest-beta&preserve-view=true) or a [tab](/graph/api/resources/teamstab?view=graph-rest-beta&preserve-view=true) in a chat.
  - Use the **chatType** property to distinguish a one-on-one chat from a group chat or from a chat associated with an online meeting.
  - [Create](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/chat-patch?view=graph-rest-beta&preserve-view=true) a chat.
  - For a member in a chat context, use the **visibleHistoryStartDateTime** property to set or get a timestamp that represents how far back a conversation's history is shared with that member.
  - [Create](/graph/api/chat-post-members?view=graph-rest-beta&preserve-view=true) to or [delete](/graph/api/chat-delete-members?view=graph-rest-beta&preserve-view=true) a member from a specified chat. 
- For a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) resource:
  - [Get all the messages across all the channels in a team](/graph/api/channels-getallmessages?view=graph-rest-beta&preserve-view=true).
  - Team owners can turn on [moderation for a channel](/graph/api/resources/channelmoderationsettings?view=graph-rest-beta&preserve-view=true) to control who can start new posts or reply to posts in that channel, using the **moderationSettings** property of the channel.
- As part of a [Teams app definition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta&preserve-view=true), use the **bot** relationship to connect to a [teamwork bot](/graph/api/resources/teamworkbot?view=graph-rest-beta&preserve-view=true).

### To-do tasks
Subscribe to [change notifications](webhooks.md) of a [To Do task](/graph/api/resources/todoTask?view=graph-rest-beta&preserve-view=true).

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
