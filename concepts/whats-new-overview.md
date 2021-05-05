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
New to the [Microsoft Graph Toolkit](/graph/toolkit/overview)? Try the new [Toolkit learning path](https://docs.microsoft.com/learn/paths/m365-msgraph-toolkit/?WT.mc_id=m365-19989-cxa), use the Toolkit set of web components and authentication providers to connect a web app to Microsoft Graph, and load data from Microsoft 365.

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
- Try a new learning path to [explore Microsoft Graph scenarios for JavaScript development](https://docs.microsoft.com/learn/paths/m365-msgraph-scenarios/?WT.mc_id=m365-16105-cxa).


## March 2021: New and generally available

### Applications
- GA of the [applicationTemplate](/graph/api/resources/applicationtemplate) resource which supports [listing](/graph/api/applicationtemplate-list) applications in the Azure AD application gallery, and [adding](/graph/api/applicationtemplate-instantiate) an instance of such an application to a directory.
- Use app-only permission `Application.ReadWrite.OwnedBy` when [adding](/graph/api/applicationtemplate-instantiate) such an instance.
- Use the **signInAudience** property of [servicePrincipal](/graph/api/resources/serviceprincipal) to get the user accounts supported by the current application.

### Devices and apps | Cloud printing
- GA of the [cloud printing API](universal-print-concept-overview.md) for Universal Print! See the [announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/universal-print-is-ready-for-business/ba-p/2176778), and check out how to [get started with Universal Print](/universal-print/fundamentals/universal-print-license).
- [Subscribe to change notifications](universal-print-webhook-notifications.md) on a [print task definition](/graph/api/resources/printtaskdefinition) or [printer](/graph/api/resources/printer) resource.

### Identity and access | Governance
- Use Azure Active Directory (Azure AD) [consent requests](/graph/api/resources/consentrequests-root) to manage the request workflow for users attempting to access apps that require admin approval. The API makes use of the following resources:
  - The [adminConsentRequestPolicy](/graph/api/resources/adminconsentrequestpolicy) resource for creating and managing requests for app access for the organization.
  - The [appConsentRequest](/graph/api/resources/appconsentrequest) resource for aggregating and managing user requests to access a specific app.
  - The [userConsentRequest](/graph/api/resources/userConsentRequest) resource for users requesting access to an app which requires admin authorization. 
  - The [accessReviewReviewerScope](/graph/api/resources/accessReviewReviewerScope) resource defines who is specified in the **adminConsentRequestPolicy** to review **appConsentRequest** and **userConsentRequest** objects.
  - The [approval](/graph/api/resources/approval) resource represents an approval decision for a request.
- GA of the Terms of Use API which supports a tenant's customizable [Terms of Use agreement](/graph/api/resources/agreement) in Azure AD.

### Identity and access | Identity and sign-in
- GA of [authentication methods](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta&preserve-view=true) including [FIDO2 security keys](/graph/api/resources/fido2authenticationmethod), [Microsoft Authenticator app](/graph/api/resources/microsoftauthenticatorauthenticationmethod), and [Windows Hello for Business](/graph/api/resources/windowshelloforbusinessauthenticationmethod).
- GA of [authentication method policies](/graph/api/resources/authenticationmethodspolicies-overview) that define authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure AD. Authentication methods policies that can be managed in Microsoft Graph include [FIDO2 security keys](/graph/api/resources/fido2authenticationmethodconfiguration), Passwordless Phone Sign-in with [Microsoft Authenticator app](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration), and tenant's [email OTP authentication methods policy](/graph/api/resources/emailauthenticationmethodconfiguration).
- GA of [feature rollout policy](/graph/api/resources/featureRolloutPolicy) that helps tenant administrators to pilot features to specific groups before enabling them for the entire organization.
- GA of the [organization branding properties](/graph/api/resources/organizationalbrandingproperties) which enables a custom look and feel of Azure Active Directory sign-in screens. Organizations can customize based on locale for specific users.

### Tasks and plans
- Use the delegated permission of `Tasks.Read` to read operations of all Planner resources.
- Use the delegated permission of `Tasks.ReadWrite` to read and write operations of all Planner resources.

### Teamwork
- GA of [chat](/graph/api/resources/chat) operations, chat [conversationMember](/graph/api/resources/conversationmember), chat [app](/graph/api/resources/teamsappinstallation), chat [tab](/graph/api/resources/teamstab), and their methods.
- GA of a few more properties of [teamsAppDefinition](/graph/api/resources/teamsAppDefinition), which represent details of a version of an app in the Microsoft Teams app catalog, including the following:
  - **createdBy**, **description**, **shortDescription**, **lastModifiedDateTime**
  - **publishingState** which can be one of `submitted` and under review, `published`, or `rejected` by the admin
  - **bot** relationship of the [teamworkBot](/graph/api/resources/teamworkbot) type, representing the details of the bot specified in the teams app manifest.
- Use the activity feed notifications API to better engage users in three contexts:
  - [Send notification to user in a chat](/graph/api/chat-sendactivitynotification)
  - [Send notification to user in a team](/graph/api/team-sendactivitynotification)
  - [Send notification to user](/graph/api/userteamwork-sendactivitynotification)
- Migrate users' message history and data from an external system into a Teams channel, allowing users to continue their communications seamlessly. Use the following methods that support the migration scenario:
  - [Create team](/graph/api/team-post)
  - [Create channel](/graph/api/channel-post)
  - [Create chatMessage in a channel](/graph/api/channel-post-messages)
  - [Reply to a message in a channel](/graph/api/channel-post-messagereply)
  - [Complete message migration in a team](/graph/api/team-completemigration)
  - [Complete message migration in a channel](/graph/api/channel-completemigration)
- [List](/graph/api/chatmessage-list-chatmessagehostedcontents) or [get](/graph/api/chatmessagehostedcontent-get) rich content hosted in a [chatMessage](/graph/api/resources/chatmessage), such as images or code snippets.
- Delegated permissions support of `ChannelMessage.Read.All` for subscribing change notifications on [chatMessage](/graph/api/resources/chatmessage) resources.

## March 2021: New in preview only

### Applications
[Create and add self-signed certificates](/graph/api/servicePrincipal-addTokenSigningCertificate?view=graph-rest-beta&preserve-view=true) to your SAML applications. Use this to help enable single sign-on for Azure AD gallery apps in your tenant by allowing Azure AD to sign SAML responses.

### Devices and apps | Cloud PC
Added to the [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) resource two more reasons for failure to upload a device source image: operating system not supported (`osVersionNotSupported`), or an invalid source image to provision a Windows VM (`sourceImageInvalid`).

### Devices and apps | Cloud printing
Get the most recent date/time (**lastSeenDateTime** property) when a printer interacted with Universal Print.

### Devices and apps | Corporate management
Intune [March](https://developer.microsoft.com/graph/changelog/?from=2021-03-01&to=2021-03-31&filterBy=Corporate%20management) updates for the beta version.

### Identity and access | Governance
Apply the new model of [access reviews](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) to group memberships and all other supported resource types. Deprecate the [legacy model of access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true).

### Sites and lists
- Support a specific content type or template for documents or document sets in specific site collections, through a set of new properties and methods on the [contentType](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) entity. The methods include the following:
  - [addCopy](/graph/api/contenttype-addcopy?view=graph-rest-beta&preserve-view=true)
  - [associateWithHubSites](/graph/api/contenttype-associatewithhubsites?view=graph-rest-beta&preserve-view=true)
  - [copyToDefaultContentLocation](/graph/api/contenttype-copytodefaultcontentlocation?view=graph-rest-beta&preserve-view=true)
  - [isPublished](/graph/api/contenttype-ispublished?view=graph-rest-beta&preserve-view=true)
  - [publish](/graph/api/contenttype-publish?view=graph-rest-beta&preserve-view=true)
  - [unpublish](/graph/api/contenttype-unpublish?view=graph-rest-beta&preserve-view=true)
- Customize content types by their columns. Columns are represented by the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta&preserve-view=true) entity, and support the full set of CRUD operations.
- [Get content types of a site that can be applied to a list](/graph/api/site-getApplicableContentTypesForList?view=graph-rest-beta&preserve-view=true).
- Differentiate column types by the following properties in the **columnDefinition** entity: boolean, calculated, choice, currency, dateTime, lookup, number, personOrGroup, text. These properties are mutually exclusive.

### Sites and lists | Taxonomy
- Navigate from a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) to a [taxonomy term store](/graph/api/resources/termstore-store?view=graph-rest-beta&preserve-view=true) using the **termStore** relationship.
- In the reverse direction, get the ID of the parent site of a term store using the **parentSiteId** property.

### Users
- [Get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta&preserve-view=true) a user's [preferences for translating languages](/graph/api/resources/translationpreferences?view=graph-rest-beta&preserve-view=true). For example, whether or not to translate, translate automatically, or prompt before translating specific languages in messages, chats, and web pages, and any [translation overrides](/graph/api/resources/translationlanguageoverride?view=graph-rest-beta&preserve-view=true).
- [Activate a service plan](/graph/api/user-activateServicePlan?view=graph-rest-beta&preserve-view=true) for a user.

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