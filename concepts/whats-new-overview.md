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

## June 2021: New and generally available

### Education
The APIs for the education [assignments service](/graph/api/resources/educationassignment?view=graph-rest-1.0&preserve-view=true) are now generally available. 

## June 2021: New in preview only

### Education
- Teachers can now select the default behavior for a calendar when they publish assignments. Teachers can control the assignment calendar behavior by using the **addToCalendarAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can now also set a default behavior for a calendar when they publish assignments. Teachers can control the assignment default calendar behavior by using the **addToCalendarAction** property of the [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) resource.

## May 2021: New and generally available

### Devices and apps | Cloud printing
Find out when a printer last interacted with Universal Print, by using the **lastSeenDateTime** property of [printer](/graph/api/resources/printer).

### Identity and access | Identity and sign-in
Get or update the role of a guest user by using the **guestUserRoleId** property of [authorizationPolicy](/graph/api/resources/authorizationpolicy).

### Mail
- [Create drafts and send Outlook messages in MIME format](outlook-send-mime-message.md), attach S/MIME digital signatures, and encrypt message content in S/MIME.
- Create a [mailFolder](/graph/api/resources/mailfolder) as a [hidden folder](/graph/api/resources/mailfolder#hidden-mail-folders) by [setting the isHidden property](/graph/api/user-post-mailfolders#example).

### Microsoft Graph Toolkit
Try the following new features in the Microsoft Graph Toolkit 2.2:
- [File](/graph/toolkit/components/file) and [file list](/graph/toolkit/components/file-list) components
- [MSAL 2.0 authentication provider](/graph/toolkit/providers/msal2)
- [SharePoint Framework library](/graph/toolkit/get-started/mgt-spfx)

### Reports | Azure AD activity reports
GA of the reporting API to [list](/graph/api/provisioningobjectsummary-list) actions performed by the Azure AD provisioning service and its associated properties. Aligned the prior beta version to the v1.0 version of the API.

## May 2021: New in preview only

### Connecting external content
- Be aware of [implementation and operational limits](connecting-external-content-api-limits.md) when designing connectors.
- Try the [connectors API with Postman](connecting-external-content-connectors-api-postman.md).

### Devices and apps | Cloud PC
Request the least privileged application permissions, `CloudPC.Read.All` or `CloudPC.ReadWrite.All`, to access methods of the following resources:
  - Read and write operations, and [reprovision](/graph/api/cloudpc-reprovision?view=graph-rest-beta&preserve-view=true) method of [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [getSourceImages](/graph/api/cloudpcdeviceimage-getsourceimages?view=graph-rest-beta&preserve-view=true) method of [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [updateAdDomainPassword](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) method of [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [assign](/graph/api/cloudpcprovisioningpolicy-assign?view=graph-rest-beta&preserve-view=true) method of [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true).

### Education
- [Set up a SharePoint resource folder](/graph/api/educationAssignment-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources in the same location for an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true).
- [Set up a SharePoint resource folder](/graph/api/educationsubmission-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources, such as a Word or Excel file, in the same location for an [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Get a collection of [accessPackageAssignment](/graph/api/resources/accessPackageAssignment?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignment-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).
- Get a collection of [accessPackageAssignmentRequest](/graph/api/resources/accessPackageAssignmentRequest?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignmentrequest-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).

### Use SDKs
Try the preview version of [Microsoft Graph .NET SDK v4](https://www.nuget.org/packages/Microsoft.Graph/4.0.0-preview.4), and take advantage of the following improvements:
- Use a single API to authenticate against Microsoft Graph and Azure .NET clients.
- New support for JSON serialization and deserialization.
- Easy access to response information.
- Better experience upgrading dependencies.

## April 2021: New and generally available

### Identity and access | Identity and sign-in
- Manage an [authentication policy](/graph/api/resources/authenticationflowspolicy) at a tenant level, to enable or disable [self-service sign-up](/graph/api/resources/selfservicesignupauthenticationflowconfiguration) of external users.
- Administrators can associate user flows with apps that are shared with external users and enable [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview) on those apps. They can customize a self-service sign-up user flow and create a personalized sign-up experience. Once an application is associated with the user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.
- Configure [user flow attributes](/graph/api/resources/identityuserflowattribute) in your Azure AD tenant allows you to collect information about a user during sign-up. You can collect a built-in set of attributes, or configure custom user flow attributes to collect information from a user that is not built in to the directory. 
- In an [Azure Active Directory user flow](/graph/api/resources/b2xidentityuserflow), you can manage language defaults and [customize the language and strings displayed to users in the user flow](/graph/api/resources/userflowlanguageconfiguration).
- Use an [API connector](/graph/api/resources/identityapiconnector) in user flows for Azure AD self-service sign-up and Azure AD B2C sign-up, to call an API at a specific step to affect the execution of the user flow.

### Teamwork
- Identify the channel by the **channelIdentity** property, if a [chatMessage](/graph/api/resources/chatmessage) is within a [channel](/graph/api/resources/channel).
- Identify the chat by the **chatId** property, if the **[chatMessage](/graph/api/resources/chatmessage)** is in a [chat](/graph/api/resources/chat).
- Use the **messages** relationship to get all the [chatMessage](/graph/api/resources/chatmessage) resources in a [chat](/graph/api/resources/chat).
- Use application permissions to [get](/graph/api/chat-get) the properties of a specified [chat](/graph/api/resources/chat).
- Use application permissions to [get a specified chat member](/graph/api/chat-get-members) or [get all the chat members](/graph/api/chat-list-members) included in a chat. Because data for users as chat members is sensitive, other than obtaining application permissions, please [request additional access](teams-protected-apis.md) to these operations.

### Use the Toolkit
New to the [Microsoft Graph Toolkit](/graph/toolkit/overview)? Try the new [Toolkit learning path](/learn/paths/m365-msgraph-toolkit/?WT.mc_id=m365-19989-cxa), use the Toolkit set of web components and authentication providers to connect a web app to Microsoft Graph, and load data from Microsoft 365.

## April 2021: New in preview only

### Cloud communications | Online meetings
- Get a [report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) of [each attendee's attendance](/graph/api/resources/attendancerecord?view=graph-rest-beta&preserve-view=true) in a scheduled online meeting, through the **meetingAttendanceReport** property of the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- Enable, disable, or limit duration of chat for an online meeting by using the **allowMeetingChat** property.
- Enable or disable reactions for an online meeting, by using the **allowTeamworkReactions** property.

### Compliance
[Get](/graph/api/ediscovery-settings-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/ediscovery-settings-update?view=graph-rest-beta&preserve-view=true), or [reset to default](/graph/api/ediscovery-settings-resettodefault?view=graph-rest-beta&preserve-view=true) the following [settings](/graph/api/resources/ediscovery-settings?view=graph-rest-beta&preserve-view=true) for an eDiscovery [case](/graph/api/resources/ediscovery-case?view=graph-rest-beta&preserve-view=true):
- [Detection of duplicates, near-duplicate](/microsoft-365/compliance/near-duplicate-detection-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true), and [email threading](/microsoft-365/compliance/email-threading-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true), through the **redundancyDetection** property.
- [Identifying themes](/microsoft-365/compliance/themes-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true) which are prevalent ideas in documents of a review set, through the **topicModeling** property.
- [Extracting text from image files by optical character recognition (OCR)](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true#optical-character-recognition-ocr), through the **ocr** property.

These settings provide analytics functionality that [culls data intelligently](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide&preserve-view=true#cull-data-intelligently) in the end-to-end workflow of [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide&preserve-view=true).

### Devices and apps | Device updates
Debut of APIs for the Windows Update for Business deployment service. The service supports deploying Windows 10 feature updates and expediting Windows 10 security updates on devices. To learn more, start with the [Windows updates API overview](windowsupdates-concept-overview.md).

### Education
- Associate a folder with an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) to  store all the related file resources, through the **resourcesFolderUrl** property.
- Deep link into an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) through the **webUrl** property.

### Identity and access | Governance
Administrators can [get](/graph/api/accessreviewpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/accessreviewpolicy-update?view=graph-rest-beta&preserve-view=true) policies at the directory-level to review access, by using the [accessReviewPolicy](/graph/api/resources/accessreviewpolicy?view=graph-rest-beta&preserve-view=true) resource. For example, administrators can use an access review policy to enable or disable group owners reviewing access on groups that they own.

### Search
[Enable spelling suggestions or corrections](search-concept-speller.md) for a user query. This is useful when a user query contains typing errors, or when the errors render no search results.

### Teamwork
- Use [resource-specific permission grant](/graph/api/resources/resourcespecificpermissiongrant?view=graph-rest-beta&preserve-view=true) to list the apps with access to a specified [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/teamsappicon-get?view=graph-rest-beta&preserve-view=true) the properties of an [icon](/graph/api/resources/teamsAppIcon?view=graph-rest-beta&preserve-view=true) associated with a Teams app. To get the actual image of the icon, use [get hosted content](/graph/api/teamworkhostedcontent-get?view=graph-rest-beta&preserve-view=true).

### Use SDKs
- Try the [preview release of the Microsoft Graph JavaScript client library, version 3.0.0](https://www.npmjs.com/package/@microsoft/microsoft-graph-client/v/3.0.0-Preview.1).This release enables multiple authentication flows, server-side authentication, Node.js Stream large file upload and progress tracking, and more. See the [upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/changelogs/v3-upgrade-guide.md) for details.
- Try a new learning path to [explore Microsoft Graph scenarios for JavaScript development](/learn/paths/m365-msgraph-scenarios/?WT.mc_id=m365-16105-cxa).


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
