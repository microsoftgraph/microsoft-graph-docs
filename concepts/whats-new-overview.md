---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [November](changelog.md#november-2019) and [October](changelog.md#october-2019) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## November 2019: New and generally available

### Identity and access

Register [applications](/graph/api/resources/application?view=graph-rest-1.0) that authenticate with Azure Active Directory (Azure AD). Use delegated [permissions](/graph/permissions-reference#application-resource-permissions), Application.Read.All and Application.ReadWrite.All, or application permission, Application.Read.All, as appropriate.


## November 2019: New in preview

### Calendar

[Set properties](/graph/api/place-update?view=graph-rest-beta) for the rich location types of [room](/graph/api/resources/room?view=graph-rest-beta) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta).

### Devices and apps
Intune [November](changelog.md#november-2019) updates

### People and workplace intelligence

Debut of the [profile](/graph/api/resources/profile?view=graph-rest-beta) resource which is a rich representation of the next generation of people entities in Microsoft services. This resource relates to common and practical people attributes, including information for any meaningful dates such as [anniversaries](/graph/api/resources/personanniversary?view=graph-rest-beta), [education](/graph/api/resources/educationalactivity?view=graph-rest-beta), [employment positions](/graph/api/resources/workposition?view=graph-rest-beta), [interests](/graph/api/resources/personinterest?view=graph-rest-beta), [language](/graph/api/resources/languageproficiency?view=graph-rest-beta) and [skill](/graph/api/resources/skillproficiency?view=graph-rest-beta) proficiencies, [project participation](/graph/api/resources/projectparticipation?view=graph-rest-beta), [web site association](/graph/api/resources/personwebsite?view=graph-rest-beta), and other [account](/graph/api/resources/useraccountinformation?view=graph-rest-beta) and contact information.


### Search
Debut of the [Microsoft Search API](search-concept-overview.md) which allows app users to get more up-to-date, personalized, and relevant search results powered by Microsoft Graph. Use the [query](/graph/api/search-query?view=graph-rest-beta) capability that by default, searches Outlook messages and events, and OneDrive and SharePoint files in the Microsoft cloud. Use [connectors](/microsoftsearch/connectors-overview), available in the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery), to include search data outside of the Microsoft cloud. Alternatively, [build your own connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta#common-use-cases), index external custom items and files, and query specific external data sources.


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
- Use the new light-weight notification SDKs for Windows, iOS, Android, and JavaScript, in place of the [Project Rome SDK](https://github.com/Microsoft/project-rome), to take advantage of an improved authentication model and support for web apps using web push.
 
### PowerShell SDK 
Developers and IT professionals can note the coming of the [Microsoft Graph Powershell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell), which will generate modules that contain cmdlets to make Microsoft Graph REST API requests.

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

