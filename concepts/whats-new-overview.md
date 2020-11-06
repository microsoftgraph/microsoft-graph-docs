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

## October 2020: New and generally available

### Application
- Allow [email as an alternate login ID to Azure AD](/azure/active-directory/authentication/howto-authentication-use-email-signin), using a [Home Realm Discovery](/azure/active-directory/manage-apps/configure-authentication-for-federated-users-portal#home-realm-discovery) policy. A Home Realm Discovery policy determines after a user provides a sign-in ID, whether to prompt the user to authenticate. In this case, setting the **AlternateIdLogin** property of a [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy) resource can enable a user to sign in with an email address.
- Get the verified publisher information for an [application](/graph/api/resources/application) or [servicePrincipal](/graph/api/resources/serviceprincipal), and [set](/graph/api/application-setverifiedpublisher) or [remove](/graph/api/application-unsetverifiedpublisher) verified publisher information for an **application**.

### Change notifications
Production apps can now subscribe to lifecycle notifications of Outlook [message](/graph/api/resources/message), [event](/graph/api/resources/event), and [contact](/graph/api/resources/contact), and Teams [chatMessage](/graph/api/resources/chatmessage), in order to [reduce missing subscriptions and change notifications](webhooks-lifecycle.md).

### Identity and access
- GA of advanced OData system query options (`$count`, `$search`, and `$filter`) on directory objects.
- Check out examples that show OData cast on directory objects.
- See the Identity and access section of the [October](changelog.md#october-2020) updates in the changelog for the lists of enhanced APIs.

### Teamwork
- GA of the full set of CRUD operations for [conversationMember](/graph/api/resources/conversationmember) and [aadUserConversationMember](/graph/api/resources/aaduserconversationmember). These resources represent a member in a chat or channel conversation, who may or may not be a user in Azure AD.
- GA of lifecycle notifications for Teams [chatMessage](/graph/api/resources/chatmessage) resources, to [reduce missing subscriptions and change notifications](webhooks-lifecycle.md).

### To-do tasks
GA of the [Microsoft To Do API](/graph/api/resources/todo-overview?view=graph-rest-1.0&preserve-view=true) - use the to-do API in a production app to create and manage tasks that are part of a user's workflow, such as creating a task off an email.  

### Users
Get new properties applicable to a [user](/graph/api/resources/user) who is corporate employee: hire date, organizational association such as division and cost center, and employee type such as consultant, contractor, or vendor. These properties require specifying the `$select` OData query parameter in the GET operation.

## October 2020: New in preview only

### Cloud communications | Online meeting
- Distinguish the role of a participant in an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) as an attendee or presenter, by using the **role** property of the [meetingParticipantInfo](/graph/api/resources/meetingParticipantInfo?view=graph-rest-beta&preserve-view=true) type.
- Get an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) by [filtering on the joinWebUrl property of the meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-3-retrieve-an-online-meeting-by-joinweburl).

### Devices and apps | Cloud printing

- Deprecate the **uploadData** action in favor of [creating an upload session](/graph/api/printdocument-createuploadsession?view=graph-rest-beta&preserve-view=true) to [upload a document](upload-data-to-upload-session.md) to a printer or printer share.
- Deprecate the **configuration** property on [printDocument](/graph/api/resources/printdocument?view=graph-rest-beta&preserve-view=true) in favor of a similar **configuration** property on [printJob](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).
- Get the source or destination job URL for a **printJob** that is being redirected, by using the **redirectedFrom** or **redirectedTo** property.
- Get the current status of a **printJob** by using the **state** property and new **details** property.
- Get the collection of printer shares associated with a [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true) by using the **shares** relationship. 
- Deprecate the **processingStateReasons** property of **printer** in favor of the **status** property. The **status** property is of the type [printer status](/graph/api/resources/printerstatus?view=graph-rest-beta&preserve-view=true) and exposes a **details** property. Use the **details** property to identify the reason for a printer to be in the current state.
- Deprecate the **feedDirections** property on [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true) in favor of the **feedOrientations** property, to get feed orientations supported by a printer.
- See the cloud printing section of the [October](changelog.md#october-2020) updates in the changelog for a few renaming of API and properties, and a few other deprecations.

### Devices and apps | Corporate management
Intune [October](changelog.md#october-2020) updates for the beta version.

### Files
[Revoke](/graph/api/permission-revokegrants?view=graph-rest-beta&preserve-view=true) access to a [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) or [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) granted via a sharing link.

### Identity and access | Identity and sign-in
- Manage [authentication method policies](/graph/api/resources/authenticationmethodspolicies-overview?view=graph-rest-beta&preserve-view=true) to identify users who can use specific multi-factor authentication methods to sign into Azure Active Directory. Configure policies to define the following:
  - The types of FIDO2 security keys that can be used in the Azure AD tenant.
  - The users or groups of users who are allowed to use FIDO2 Security Keys or Passwordless Phone Sign-in to sign in to Azure AD.
- Configure an [email authentication method](/graph/api/resources/emailauthenticationmethod?view=graph-rest-beta&preserve-view=true) for users to self-serve password resets.
- Use [Azure AD B2C](/azure/active-directory-b2c/overview) and [choose a mechanism to configure and let end users authenticate via local accounts](/graph/api/resources/b2cauthenticationmethodspolicy?view=graph-rest-beta&preserve-view=true).
- Use `Policy.ReadWrite.AuthenticationMethod` to read or write an organization's authentication method policies, as a delegated permission on behalf of a signed-in user, or as an application permission without a signed-in user present.
- Specify in an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) if and who can invite external users to an organization.

### People and workplace intelligence | Insights 
Administrators can see [examples of using PowerShell cmdlets](insights-customize-item-insights-privacy.md#how-to-configure-item-insights-setting-via-powershell) to customize item insight settings for an organization.

### Teamwork
- Use the instance attribute **channelCreationMode** to indicate that a [channel](https://docs.microsoft.com/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true#instance-attributes) is being created to serve migration of data. Use the [completeMigration](/graph/api/channel-completemigration?view=graph-rest-beta&preserve-view=true) to indicate migration is over, such that members can post and read messages.
- Use the instance attribute **teamCreationMode** to indicate that a [team](https://docs.microsoft.com/graph/api/resources/team?view=graph-rest-beta&preserve-view=true#instance-attributes) is being created to serve migration. Use the [completeMigration](/graph/api/team-completemigration?view=graph-rest-beta&preserve-view=true) to indicate migration is over, such that member operations can happen, and members can post messages.


## September 2020: New and generally available

### Calendar
GA of the **transactionId** property of the [event](/graph/api/resources/event) resource, which is optionally set by a client app to avoid redundant POST operations in case of client retries to create the same event. This is useful when low network connectivity causes the client to time out before receiving a response from the server for the client's prior create-event request.

### Cloud communications
[Delete a participant](/graph/api/participant-delete) from a [call](/graph/api/resources/call). You can use this operation even in situations where it's necessary to delete a participant from an active call.

### Devices and apps | Corporate management
Intune [September](changelog.md#september-2020) updates for the v1.0 version.

### Identity and access | Directory management
GA of the [administrative units API](/graph/api/resources/administrativeunit) that allow organizations to subdivide their Azure Active Directory, manage and delegate administrative duties to these subdivisions. These subdivisions can represent regions, departments, cost centers, and so on.

### Reports
[Get a report that includes the count of unique users](/graph/api/reportroot-getemailappusageversionsusercounts) for Outlook 2019 and for Outlook on Microsoft 365.

### Teamwork
- Get the **lastEditedDateTime** property to find out when a sender last edits a [chat message](/graph/api/resources/chatmessage).
- Get the **lastModifiedDateTime** property to find out when a sender creates a chat message or when anyone modifies it in other ways, including adding or removing a reaction. 
- [Get notifications on changes](webhooks.md) in [chat messages](/graph/api/resources/chatmessage).
- [Update](/graph/api/chatmessage-update?view=graph-rest-beta&preserve-view=true) the **policyViolation** property of a [chatMessage](/graph/api/resources/chatmessagepreserve-view=true) within a [channel](/graph/api/resources/channel&preserve-view=true) or [chat](/graph/api/resources/chat&preserve-view=true), enabling data loss prevention (DLP) apps to monitor [chat message policy violation](/graph/api/resources/chatmessagepolicyviolation?preserve-view=true) to prevent messages from containing data that users are not supposed to send.

### Use the SDKs
GA of the [Microsoft Graph PowerShell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell) which enables access to the entire surface of Microsoft Graph in a straightforward and consistent way.

### Use the Toolkit
Try the new step-by-step getting-started tutorials for Microsoft Graph Toolkit and experience the convenience the toolkit brings:
- [Build a web application in JavaScript](./toolkit/get-started/build-a-web-app.md)
- [Build a SharePoint web part](./toolkit/get-started/build-a-sharepoint-web-part.md)
- [Build a Microsoft Teams tab](./toolkit/get-started/build-a-microsoft-teams-tab.md)
- [Use the toolkit with React](./toolkit/get-started/use-toolkit-with-react.md)
- [Use the toolkit with Angular](./toolkit/get-started/use-toolkit-with-angular.md)

### Users
Aside from getting the SMTP address of a [user](/graph/api/resources/user) through the **mail** property, you can now set that property and update the user's email address. 

## September 2020: New in preview only

### Application
Create, list, or delete [classifications of delegated permissions](/graph/api/resources/delegatedpermissionclassification?view=graph-rest-beta&preserve-view=true) that a [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) exposes. Use delegated permission classifications in combination with [user consent settings](/azure/active-directory/manage-apps/configure-user-consent) to set limits on when end-users are allowed to grant consent to apps.

### Cloud communications
- Deprecation of the **autoAdmittedUsers** property of [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true). Instead, use the new **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings?view=graph-rest-beta&preserve-view=true#lobbybypassscope-values).
- Use additional settings about announcing callers joining or leaving an online meeting (**isEntryExitAnnounced** property), and allowing specific presenters in the meeting (**allowedPresenters** property).

### Devices and apps | Cloud printing
- [Get the documents for each of the print jobs associated with a printer](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true), by applying an `$expand` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters). 
- Filter print jobs by the user who created them, by applying a `$filter` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters).

### Devices and apps | Corporate management
Intune [September](changelog.md#september-2020) updates for the beta version.

### Identity and access | Directory management
- [Get a BitLocker recovery key](/graph/api/bitlockerrecoverykey-get?view=graph-rest-beta&preserve-view=true) on behalf of the signed-in user who's the device owner or in an appropriate role. Getting a recovery key generates an [audit log](/azure/active-directory/reports-monitoring/concept-audit-logs), in parity with the end user experience.
- Get the total and used amount of the [directory quota](/graph/api/resources/directorysizequota?view=graph-rest-beta&preserve-view=true) of an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true), through the **directorySizeQuota** property.

### Identity and access | Governance
Be able to include a [schedule](/graph/api/resources/requestschedule?view=graph-rest-beta&preserve-view=true) when requesting or removing an [assignment of a user to an access package](/graph/api/resources/accesspackageassignment?view=graph-rest-beta&preserve-view=true), that specifies access to groups, applications, or SharePoint sites.

### Identity and access | Identity and sign-in
Organizations can [get](/graph/api/continuousaccessevaluationpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/continuousaccessevaluationpolicy-update?view=graph-rest-beta&preserve-view=true) a [continuous access evaluation policy](/graph/api/resources/continuousAccessEvaluationPolicy?view=graph-rest-beta&preserve-view=true) to manage authentication sessions in real time.

### Search

- Use additional capabilities in the [Microsoft Search API](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true) for OneDrive, SharePoint, Microsoft Graph connectors: 

  - Get [additional types](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#scope-search-based-on-entity-types) of content from OneDrive and SharePoint: **drive**, **list**, **listItem**, and **site**. 
  - Scope properties in search results to [selected properties](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#get-selected-properties). 
  - Get custom properties on [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) resources.
  - [Sort](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#sort-search-results) search results for OneDrive and SharePoint on any sortable property.
  - [Refine results using aggregations](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#refine-results-using-aggregations) for OneDrive and SharePoint.
- Query external data ingested by Microsoft Graph connectors across [more than one connection](./search-concept-custom-types.md).
- Take advantage of enhanced content for Microsoft Graph connectors to learn about:
  - [Managing connections](search-index-manage-connections.md)
  - [Managing schema](search-index-manage-schema.md)
  - [Managing items](search-index-manage-items.md)
- Track the state of a Microsoft Graph [connection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true).
- Define an [external group](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) to set permissions on [external item](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) objects added to a Microsoft Graph [connection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true). External groups can represent non-Azure Active Directory groups or group-like constructs, such as business units, that determine permissions over the content in the external data source.

### Teamwork
- Get the date/time at which a Teams [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) is created.


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
