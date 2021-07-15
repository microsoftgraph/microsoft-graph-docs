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

## July 2021: New and generally available

### Cloud communications | Calls
Support for a capacity limit for the number of participants that an application can handle when [answering](/graph/api/call-answer) a [call](/graph/api/resources/call), in organizations that adopt [Teams policy-based recording](/microsoftteams/teams-recording-policy).

### Users
Let a user [change their own password](/graph/api/user-changepassword) without requiring an administrator role.


## July 2021: New in preview only

### Devices and apps | Cloud PC
An on-premises connection [health check](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can identify a few more possible health check error types:
- Cloud PC computer account is not found in the organizational unit (`adJoinCheckComputerObjectAlreadyExists`).
- Cloud PC object is not found in Azure AD (`azureAdDeviceSyncCheckDeviceNotFound`).
- Timeout from checking if a cloud PC object has been synchronized to Azure AD (`azureAdDeviceSyncCheckLongSyncCircle`). 

See the [reference](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true#cloudpconpremisesconnectionhealthcheckerrortype-values) for details and recommended remedial actions.

### Devices and apps | Multi-tenant management
Debut of the [Microsoft 365 Lighthouse API](managedtenants-concept-overview.md) that lets Managed Service Providers (MSPs) remotely manage multiple customer tenants at scale for compliance and threat detection, and help get tenant devices in a healthy and secure state.

### Search
Use the [Microsoft Search API to retrieve information about the people](search-concept-person.md) who are most relevant to a user. Relevance is determined by the user’s communication and collaboration patterns and business relationships. 

### Teamwork
- [Subscribe to change notifications on the chat resource](teams-changenotifications-chat.md).
- [Subscribe to change notifications of users in a chat](teams-changenotifications-chatmembership.md), in a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) (i.e., [conversationMember](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true) resources).

## June 2021: New and generally available

### Applications
Get or set the status of an [application](/graph/api/resources/application) or [servicePrincipal](/graph/api/resources/serviceprincipal) to identify if Microsoft has disabled the application through the **disabledByMicrosoftStatus** property. Disabling reasons include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement.

### Change notifications
Extended the maximum length of a subscription before expiring for the following resources:
- OneDrive [driveItem](/graph/api/resources/driveitem) and SharePoint [list](/graph/api/resources/list) from 3 to 30 days.
- [group](/graph/api/resources/group), [user](/graph/api/resources/user), or other directory resources from 3 to 29 days.

### Change tracking
Removed limitation for tracking changes in non-root folders in OneDrive for Business and SharePoint.

### Education
The APIs for the education [assignments service](/graph/api/resources/educationassignment) are now generally available. 

### Identity and access | Governance
GA of the [access review](/graph/api/resources/accessreviewsv2-root) API. Check out the [overview](accessreviews-overview.md) and tutorials to [review access to security groups](tutorial-accessreviews-securitygroup.md) and [access to Microsoft 365 groups](tutorial-accessreviews-m365group.md). Note that the [legacy access review API](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true) is being deprecated and will stop returning data in May 2023.


## June 2021: New in preview only

### Cloud communications | Online meetings
Customize audio and video control in an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) by enabling or disabling attendees from turning on their cameras and microphones, through the **allowAttendeeToEnableCamera** and **allowAttendeeToEnableMic** respectively.

### Devices and apps | Cloud PC
- [Assign](/graph/api/cloudpcusersetting-assign?view=graph-rest-beta&preserve-view=true) and manage [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to enable local admin or self-service option for a user on a cloud PC. Currently assignments can be made at a group level (users belonging to a Microsoft 365 group or security group).
- [Get](/graph/api/cloudpc-get?view=graph-rest-beta&preserve-view=true) a few new properties of a [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true): the names of the provisioning policy and of the on-premises connection used during provisioning, and the end date/time of the grace period by which reprovisioning or deprovisioning happens.
- Support for more status and error types upon a [health check](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) on an [on-premises connection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true).

### Education
- Teachers can now select the default behavior for a calendar when they publish assignments. Teachers can control the assignment calendar behavior by using the **addToCalendarAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can now also set a default behavior for a calendar when they publish assignments. Teachers can control the assignment default calendar behavior by using the **addToCalendarAction** property of the [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) resource.

### Groups
Allow a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) to be assigned to an Azure AD role on creation by setting the **isAssignableToRole** property. If set, this property makes it convenient to manage roles for individuals - instead of having to assign a role to each individual person, eligible persons can join a group, and assigning the role to the group would by default assign the role to each new person joining the group. 

### Identity and access | Governance
Set users or group members to be notified of the progress of an [access review](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true), by using the **additionalNotificationRecipients** property of the [schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
Define a filter to dynamically include or exclude devices, using the **deviceFilter** property of [conditionalAccessDevices](/graph/api/resources/conditionalAccessDevices?view=graph-rest-beta&preserve-view=true).

### Sites and lists
Create or get an existing [sharingLink](/graph/api/resources/sharinglink?view=graph-rest-beta&preserve-view=true) for a [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) by calling [createLink](/graph/api/listitem-createlink?view=graph-rest-beta&preserve-view=true).

### Teamwork
- [Get](/graph/api/chat-get?view=graph-rest-beta&preserve-view=true) an opaque URL to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) via the **webUrl** property.
- [Subscribe to change notifications](/graph/webhooks?view=graph-rest-beta&preserve-view=true) of a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), [conversationMember](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true), or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) resource.
- Use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions with the APIs for [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true), [chatMessage](/graph/api/resources/chatMessage?view=graph-rest-beta&preserve-view=true), [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta&preserve-view=true), or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true).
- Get a list of [resource-specific permissions grants](/graph/api/resources/resourcespecificpermissiongrant?view=graph-rest-beta&preserve-view=true) for a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), that specifies that team's apps and the corresponding resource-specific permissions that they have been granted.
- [Get](/graph/api/teamsasyncoperation-get?view=graph-rest-beta&preserve-view=true) a specific [asynchronous operation](/graph/api/resources/teamsasyncoperation?view=graph-rest-beta&preserve-view=true), or [list](/graph/api/chat-list-operations?view=graph-rest-beta&preserve-view=true) all the asynchronous operations that run on a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- Can specify a [Teams app](/graph/api/resources/teamsapp?view=graph-rest-beta&preserve-view=true) when [creating a chat](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true).
- Use a single action [provisionEmail](/graph/api/channel-provisionemail?view=graph-rest-beta&preserve-view=true) to get the email address of a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) if one exists, or create one otherwise. Use the [removeEmail](/graph/api/channel-removeemail?view=graph-rest-beta&preserve-view=true) action to remove the email address.

### Teamwork | Shifts
- Support for the [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [timeOff](/graph/api/resources/timeoff?view=graph-rest-beta&preserve-view=true), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta&preserve-view=true), and [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true) entities for synchronous change notifications.
- Support for managing [time card](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true) resources and common functionality such as [clock in](/graph/api/timecard-clockin?view=graph-rest-beta&preserve-view=true), [clock out](/graph/api/timecard-clockout?view=graph-rest-beta&preserve-view=true), [start break](/graph/api/timecard-startbreak?view=graph-rest-beta&preserve-view=true), [end break](/graph/api/timecard-endbreak?view=graph-rest-beta&preserve-view=true), [confirm](/graph/api/timecard-confirm?view=graph-rest-beta&preserve-view=true), and [replace](/graph/api/timecard-replace?view=graph-rest-beta&preserve-view=true).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
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
