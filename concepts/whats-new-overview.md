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

### Cloud communications
- Deprecation of the **autoAdmittedUsers** property of [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true). Instead, use the new **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings?view=graph-rest-beta&preserve-view=true#lobbybypassscope-values).
- Use additional settings about announcing callers joining or leaving an online meeting (**isEntryExitAnnounced** property), and allowing specific presenters in the meeting (**allowedPresenters** property).

### Devices and apps | Cloud printing
- [Get the documents for each of the print jobs associated with a printer](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true), by applying an `$expand` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters). 
- Filter print jobs by the user who created them, by applying a `$filter` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters).

### Devices and apps | Corporate management
Intune [September](changelog.md#september-2020) updates for the beta version.

### Identity and access | Directory management
[Get a BitLocker recovery key](/graph/api/bitlockerrecoverykey-get?view=graph-rest-beta&preserve-view=true) on behalf of the signed-in user who's the device owner or in an appropriate role. Getting a recovery key generates an [audit log](/azure/active-directory/reports-monitoring/concept-audit-logs), in parity with the end user experience.

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
- [Update](/graph/api/chatmessage-update?view=graph-rest-beta&preserve-view=true) the **policyViolation** property of a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) within a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true), enabling data loss prevention (DLP) apps to monitor [chat message policy violation](/graph/api/resources/chatmessagepolicyviolation?view=graph-rest-beta&preserve-view=true) to prevent messages from containing data that users are not supposed to send.


## August 2020: New and generally available

### Change notifications
[Track changes](delta-query-overview.md) of supported resources in the Microsoft Graph for US Government national cloud.

### Cloud communications
- [Cancel](/graph/api/call-cancelmediaprocessing) any Interactive Voice Response (IVR) actions that are in process or in queue, that are either [playing an audio prompt](/graph/api/call-playprompt) or [recording a response](/graph/api/call-record).
- Get [call transcription information](/graph/api/resources/calltranscriptioninfo) through the **transcription** property.

### Teamwork
- Use an alternative way to [create a team](/graph/api/team-post) directly without first creating a group.
- Use the **members** navigation property to add members to a team with increased reliability and lower latency.
- Get the publishing status of a Microsoft Teams [app](/graph/api/resources/teamsapp) through the **publishingState** property of the [app definition](/graph/api/resources/teamsappdefinition). The possible status values are `submitted`, `published`, and `rejected`. See an [example](/graph/api/teamsapp-list?view=graph-rest-beta&preserve-view=true#example-3-list-applications-with-a-given-id-and-return-the-submission-review-state).
- Use the `AppCatalog.Submit` delegated permission to allow a user to [submit an app](/graph/api/teamsapp-publish) and request administrator review. Use the same permission for a user to [cancel](/graph/api/teamsapp-delete) an app submitted in the past that has not been published. 


## August 2020: New in preview only

### Applications
Support password-based single-sign-on in [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) application resources and specify such [settings](/graph/api/resources/passwordsinglesignonsettings?view=graph-rest-beta&preserve-view=true) in the **passwordSingleSignOnSettings** property. For information about password-based single sign-on in Azure AD, see [configure password-based single-sign-on](/azure/active-directory/manage-apps/configure-password-single-sign-on-non-gallery-applications).

### Calendar
Enhance programmatic support for scenarios involving a recurring [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true):
- Reliably identify any occurrence in a recurring series, including a modified or cancelled occurrence, by using the **occurrenceId** property.
- Get any exceptions in a recurring series by using the **exceptionOccurrences** property.
- Get any cancellations in a series using the **cancelledOccurrences** property.

### Change notifications
- Use the **includeResourceData** property of a [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true), to [set up change notifications that include resource data](webhooks-with-resource-data.md). Do not use the **includeProperties** property.
- Get [change notifications delivered via Event Hub](change-notifications-delivery.md).

### Devices and apps | Cloud printing
- Grant all users and groups access to a [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) by using the **allowAllUser** property.
- Use new delegated and application permissions to access or manage a [print document](/graph/api/resources/printDocument?view=graph-rest-beta&preserve-view=true), [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true), [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true), [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true), or [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true). For details, see cloud printing [August](changelog.md#august-2020) updates.

### Devices and apps | Corporate management
Intune [August](changelog.md#august-2020) updates in beta.

### Identity and access | Governance
- Customize a [terms of use agreement](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true) to support an agreement expiration date and cadence, require the user to accept the agreement per device, or to re-accept the agreement on a set frequency. 
- Use the **file** property to navigate to a [custom agreement](/graph/api/resources/agreementfile?view=graph-rest-beta&preserve-view=true) for terms of use. Do not use the **files** property.
- Add, remove, and list internal or external sponsors who can approve requests from a [connected organization](/graph/api/resources/connectedorganization?view=graph-rest-beta&preserve-view=true) to access a group, application, or SharePoint Online site. See [entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta&preserve-view=true) for more information.

### Identity and access | Identity and sign-in
- Enable further customizing an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) for a tenant, such as allowing the [default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta&preserve-view=true) to create applications or security groups or to read other users, allowing users to sign up for email-based subscriptions or to join the tenant by email validation, or letting users self-serve password resets.
- Manage [predefined, configurable policies as user flows within an Azure Active Directory B2C tenant](/graph/api/resources/b2cuserflows?view=graph-rest-beta&preserve-view=true). See more information about [B2C user flows](/azure/active-directory-b2c/user-flow-overview).
- Enable [self-service sign-up experience as B2X user flows in an Azure Active Directory tenant](/graph/api/resources/b2xuserflows?view=graph-rest-beta&preserve-view=true). See more information about [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview).

### People and workplace intelligence | Profile
Add and manage the following additional properties in a user's [profile](/graph/api/resources/profile?view=graph-rest-beta&preserve-view=true), and that can be surfaced in shared, people experiences across Microsoft 365 and third-party apps:
- [addresses](/graph/api/resources/itemAddress?view=graph-rest-beta&preserve-view=true)
- [anniversaries](/graph/api/resources/personAnniversary?view=graph-rest-beta&preserve-view=true)
- [awards](/graph/api/resources/personAward?view=graph-rest-beta&preserve-view=true)
- [certifications](/graph/api/resources/personCertification?view=graph-rest-beta&preserve-view=true)
- [notes](/graph/api/resources/personAnnotation?view=graph-rest-beta&preserve-view=true)
- [patents](/graph/api/resources/itemPatent?view=graph-rest-beta&preserve-view=true)
- [publications](/graph/api/resources/itemPublication?view=graph-rest-beta&preserve-view=true)


### Reports | Microsoft 365 usage reports
Get [reports on Microsoft 365 apps usage](/graph/api/resources/microsoft-365-apps-usage-report?view=graph-rest-beta&preserve-view=true), specifically on user detail, user counts, and platform user counts.

### Teamwork
Get [content hosted in a chat message](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta&preserve-view=true), such as images or code snippets. See an [example](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta&preserve-view=true&branch=master#example-2-get-hosted-content-bytes-for-an-image) to get the content bytes of an image.

### To-do tasks
- Debut of a new set of API for [Microsoft To Do](todo-concept-overview.md), allowing app users to organize and track personal tasks across Microsoft 365 client apps. See [Use the Microsoft To Do API](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) for more information.
- Deprecation of the [Outlook tasks API](/graph/api/resources/outlooktask?view=graph-rest-beta&preserve-view=true).


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