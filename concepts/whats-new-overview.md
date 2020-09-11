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

### Reports
[Get a report that includes the count of unique users](/graph/api/reportroot-getemailappusageversionsusercounts) for Outlook 2019 and for Outlook on Microsoft 365.

### Users
Aside from getting the SMTP address of a [user](/graph/api/resources/user) through the **mail** property, you can now set that property and udpate the user's email address. 

## September 2020: New in preview only

### Cloud communications
- Deprecation of the **autoAdmittedUsers** property of [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta). Instead, use the new **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings?view=graph-rest-beta#lobbybypassscope-values).
- Use additional settings about announcing callers joining or leaving an online meeting (**isEntryExitAnnounced** property), and allowing specific presenters in the meeting (**allowedPresenters** property).

### Devices and apps | Cloud printing
- [Get the documents for each of the print jobs associated with a printer](/graph/api/printer-list-jobs?view=graph-rest-beta), by applying an `$expand` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta#optional-query-parameters). 
- Filter print jobs by the user who created them, by applying a `$filter` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta#optional-query-parameters).

### Identity and access
Be able to include a [schedule](/graph/api/resources/requestschedule?view=graph-rest-beta) when requesting or removing an [assignment of a user to an access package](/graph/api/resources/accesspackageassignment?view=graph-rest-beta), that specifies access to groups, applications, or SharePoint sites.

### Teamwork
Get the date/time at which a Teams [channel](/graph/api/resources/channel?view=graph-rest-beta) or [team](/graph/api/resources/team?view=graph-rest-beta) is created.

## August 2020: New and generally available

### Change notifications
[Track changes](delta-query-overview.md) of supported resources in the Microsoft Graph for US Government national cloud.

### Cloud communications
- [Cancel](/graph/api/call-cancelmediaprocessing) any Interactive Voice Response (IVR) actions that are in prcess or in queue, that are either [playing an audio prompt](/graph/api/call-playprompt) or [recording a response](/graph/api/call-record).
- Get [call transciption information](/graph/api/resources/calltranscriptioninfo) through the **transciption** property.

### Teamwork
- Use an alternative way to [create a team](/graph/api/team-post) directly without first creating a group.
- Use the **members** navigation property to add members to a team with increased reliability and lower latency.
- Get the publishing status of a Microsoft Teams [app](/graph/api/resources/teamsapp) through the **publishingState** property of the [app definition](/graph/api/resources/teamsappdefinition). The possible status values are `submitted`, `published`, and `rejected`. See an [example](/graph/api/teamsapp-list?view=graph-rest-1.0&tabs=http#example-3-list-applications-with-a-given-id-and-return-the-submission-review-state).
- Use the `AppCatalog.Submit` delegated permission to allow a user to [submit an app](/graph/api/teamsapp-publish) and request administrator review. Use the same permission for a user to [cancel](/graph/api/teamsapp-delete) an app submitted in the past that has not been published. 


## August 2020: New in preview only

### Applications
Support password-based single-sign-on in [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) application resources and specify such [settings](/graph/api/resources/passwordsinglesignonsettings?view=graph-rest-beta) in the **passwordSingleSignOnSettings** property. For information about password-based single sign-on in Azure AD, see [configure password-based single-sign-on](/azure/active-directory/manage-apps/configure-password-single-sign-on-non-gallery-applications).

### Calendar
Enhance programmatic support for scenarios involving a recurring [event](/graph/api/resources/event?view=graph-rest-beta):
- Reliably identify any occurrence in a recurring series, including a modified or cancelled occurrence, by using the **occurrenceId** property .
- Get any exceptions in a recurring series by using the **exceptionOccurrences** property.
- Get any cancellations in a series using the **cancelledOccurrences** property.

### Change notifications
- Use the **includeResourceData** property of a [subscription](/graph/api/resources/subscription?view=graph-rest-beta), to [set up change notifications that include resource data](webhooks-with-resource-data.md). Do not use the **includeProperties** property.
- Get [change notifications delivered via Event Hub](change-notifications-delivery.md).

### Devices and apps | Cloud printing
- Grant all users and groups access to a [printer share](/graph/api/resources/printershare?view=graph-rest-beta) by using the **allowAllUser** property.
- Use new delegated and application permissions to access or manage a [print document](/graph/api/resources/printDocument?view=graph-rest-beta), [print job](/graph/api/resources/printjob?view=graph-rest-beta), [printer](/graph/api/resources/printer?view=graph-rest-beta), [printer share](/graph/api/resources/printershare?view=graph-rest-beta), or [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta). For details, see cloud printing [August](changelog.md#august-2020) updates.

### Devices and apps | Corporate management
Intune [August](changelog.md#august-2020) updates in beta.

### Identity and access | Governance
- Customize a [terms of use agreement](/graph/api/resources/agreement?view=graph-rest-beta) to support an agreement expiration date and cadence, require the user to accept the agreement per device, or to re-accept the agreement on a set frequency. 
- Use the **file** property to navigate to a [custom agreement](/graph/api/resources/agreementfile?view=graph-rest-beta) for terms of use. Do not use the **files** property.
- Add, remove, and list internal or external sponsors who can approve requests from a [connected organization](/graph/api/resources/connectedorganization?view=graph-rest-beta) to access a group, application, or SharePoint Online site. See [entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta) for more information.

### Identity and access | Identity and sign-in
- Enable further customizing an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) for a tenant, such as allowing the [default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta) to create applications or security groups or to read other users, allowing users to sign up for email-based subscriptions or to join the tenant by email validation, or letting users self-serve password resets.
- Manage [predefined, configurable policies as user flows within an Azure Active Directory B2C tenant](/graph/api/resources/b2cuserflows?view=graph-rest-beta). See more information about [B2C user flows](/azure/active-directory-b2c/user-flow-overview).
- Enable [self-service sign-up experience as B2X user flows in an Azure Active Directory tenant](/graph/api/resources/b2xuserflows?view=graph-rest-beta). See more information about [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview).

### People and workplace intelligence | Profile
Add and manage the following additional properties in a user's [profile](/graph/api/resources/profile?view=graph-rest-beta), and that can be surfaced in shared, people experiences across Microsoft 365 and third-party apps:
- [addresses](/graph/api/resources/itemAddress?view=graph-rest-beta)
- [anniversaries](/graph/api/resources/personAnniversary?view=graph-rest-beta)
- [awards](/graph/api/resources/personAward?view=graph-rest-beta)
- [certifications](/graph/api/resources/personCertification?view=graph-rest-beta)
- [notes](/graph/api/resources/personAnnotation?view=graph-rest-beta)
- [patents](/graph/api/resources/itemPatent?view=graph-rest-beta)
- [publications](/graph/api/resources/itemPublication?view=graph-rest-beta)


### Reports | Microsoft 365 usage reports
Get [reports on Microsoft 365 apps usage](/graph/api/resources/microsoft-365-apps-usage-report?view=graph-rest-beta), specifically on user detail, user counts, and platform user counts.

### Teamwork
Get [content hosted in a chat message](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta), such as images or code snippets. See an [example](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta&branch=master#example-2-get-hosted-content-bytes-for-an-image) to get the content bytes of an image.

### To-do tasks
- Debut of a new set of API for [Microsoft To Do](todo-concept-overview.md), allowing app users to organize and track personal tasks across Microsoft 365 client apps. See [Use the Microsoft To Do API](/graph/api/resources/todo-overview?view=graph-rest-beta) for more information.
- Deprecation of the [Outlook tasks API](/graph/api/resources/outlooktask?view=graph-rest-beta).


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

