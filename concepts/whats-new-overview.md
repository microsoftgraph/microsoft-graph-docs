---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## January 2021: New in preview only

### Cloud communications
- Organize a live event as an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) - see an [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true#example-3-create-a-live-event-with-a-user-token). 
- Get the content stream of an [attendee report](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-4-retrieve-the-attendee-report-of-a-live-event), [recording](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-5-retrieve-the-recording-of-a-live-event), or alternative recording of the live event.
- Get the [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) status of a user who is [out-of-office](/graph/api/resources/outofofficesettings?view=graph-rest-beta&preserve-view=true), and any message set for that status.

### Devices and apps | Cloud PC
- [Update an Active Directory domain password](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) for a successful [on-premises network connection](/graph/api/resources/cloudPcOnPremisesConnection?view=graph-rest-beta&preserve-view=true).
- [Running health checks on an on-premises network connection](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can now expose 5 additional error types in the [on-premises connection health check](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true) resource. For more information on the error types, see the [changelog](https://developer.microsoft.com/graph/changelog) for January 2021.

### Devices and apps | Cloud printing
Use delegated permissions in apps on behalf of the signed-in user:
- `PrinterShare.ReadBasic.All` to read basic information about printer shares, excluding access control information.
- `PrintConnector.Read.All` to read print connectors.
- `PrintConnector.ReadWrite.All` to read or write print connectors.
- `PrintJob.Create` to create print jobs and upload content to print jobs.
- `PrintSettings.Read.All` to read tenant-wide print settings.
- `PrintSettings.ReadWrite.All` to read or write tenant-wide print settings.
- `Reports.Read.All` to read print usage summary per specified user or per printer.

### Groups
Get the processing status of a rule-based dynamic group by using the **membershipRuleProcessingStatus** property. This is useful when an attribute of a user changes, the user's membership in a rule-based [Microsoft 365 group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) is re-evaluated based on the group membership rules set for the organization. 

### Identity and access | Identity and sign-in
- Apps can use application permissions to let administrators manage [authentication methods](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta&preserve-view=true) for users.
- Support [Microsoft Authenticator](/graph/api/resources/microsoftauthenticatorauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in or perform multi-factor authentication to Azure AD.
- Use [Microsoft Authenticator policy](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) to define configuration settings and users or groups that are enabled to use Microsoft Authenticator as an authentication method. Use Microsoft Authenticator policy in place of [Microsoft Authenticator passwordless phone sign-in policy](/graph/api/resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) which is deprecated. 
- Support [Windows Hello for Business](/graph/api/resources/windowshelloforbusinessauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in on Windows devices without using a password.

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
GA of Microsoft Graph Toolkit 2.0 - this release includes a new [component for Microsoft Graph To-Do tasks](./toolkit/components/todo.md), distinct from the[Planner tasks component](./toolkit/components/tasks.md), and an enhanced [person card component](./toolkit/components/person-card.md). See the [related blog post](https://developer.microsoft.com/graph/blogs/announcing-the-general-availability-of-microsoft-graph-toolkit-2-0/) for more information.


## December 2020: New in preview only

### Compliance | eDiscovery
Continuing to fulfill the pipeline of [Microsoft 365 compliance APIs](/graph/api/resources/ediscoveryapioverview?view=graph-rest-beta&preserve-view=true) are the [custodian](/graph/api/resources/custodian?view=graph-rest-beta&preserve-view=true) resource and its related operations and methods to [release](/graph/api/custodian-release?view=graph-rest-beta&preserve-view=true) or [activate](/graph/api/custodian-activate?view=graph-rest-beta&preserve-view=true) a custodian. Use the **custodian** resource to access the custodian's data ([userSource](/graph/api/resources/userSource?view=graph-rest-beta&preserve-view=true)) in an Exchange Online mailbox and OneDrive for Business, SharePoint sites ([siteSource](/graph/api/resources/siteSource?view=graph-rest-beta&preserve-view=true)), and Microsoft 365 groups ([unifiedGroupSource](/graph/api/resources/unifiedGroupSource?view=graph-rest-beta&preserve-view=true)).

### Devices and apps | Cloud PC
Identify the failure status of a cloud-managed virtual desktop collectively as `failed`, in the **status** property of the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource.

### Devices and apps | Cloud printing
- [Update](/graph/api/printjob-update-configuration?view=graph-rest-beta&preserve-view=true) the [configuration](/graph/api/resources/printjobconfiguration?view=graph-rest-beta&preserve-view=true) of a [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).
- For details on the renaming of a few properties and retyping of relationships, see the December 2020 section of the [API changelog](https://developer.microsoft.com/graph/changelog/) for details.

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
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).