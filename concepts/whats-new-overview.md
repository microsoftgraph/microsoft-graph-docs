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


## February 2021: New in preview only

### Identity and access | Governance
- Assign geolocation information to an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true) resource in the [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true).
- Get a list of all [access package resource environments](/graph/api/resources/accesspackageresourceenvironment?view=graph-rest-beta&preserve-view=true) that represent the geolocations that store SharePoint Online resources.

### Reports | Microsoft 365 usage reports
Get more properties included in [detail reports for SharePoint site usage](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta&preserve-view=true): anonymousLinkCount, companyLinkCount, externalSharing, geolocation, secureLinkForGuestCount, secureLinkForMemberCount, siteSensitivityLabelId, and unmanagedDevicePolicy.

### Use SDKs
Try the preview release of the [Microsoft Graph Java SDK v3](https://github.com/microsoftgraph/msgraph-sdk-java/tree/feature/v3)! For more information, see the related [blog post](https://developer.microsoft.com/graph/blogs/announcing-the-public-preview-of-microsoft-graph-java-sdk-v3/).

## January 2021: New in preview only

### Cloud communications
- Organize a live event as an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) - see an [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true#example-3-create-a-live-event-with-a-user-token). 
- Get the content stream of an [attendee report](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-4-retrieve-the-attendee-report-of-a-live-event), [recording](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-5-retrieve-the-recording-of-a-live-event), or alternative recording of the live event.
- Get the [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) status of a user who is [out-of-office](/graph/api/resources/outofofficesettings?view=graph-rest-beta&preserve-view=true), and any message set for that status.

### Devices and apps | Cloud PC
- [Update an Active Directory domain password](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) for a successful [on-premises network connection](/graph/api/resources/cloudPcOnPremisesConnection?view=graph-rest-beta&preserve-view=true).
- [Running health checks on an on-premises network connection](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can now expose 5 additional error types in the [on-premises connection health check](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true) resource. For more information on the error types, see the [changelog](https://developer.microsoft.com/graph/changelog) for January 2021.

### Devices and apps | Cloud printing
- [Subscribe to change notifications of cloud printing](universal-print-webhook-notifications.md) - when a print job is started, and when the print job is ready to be downloaded by a printer.
- Get a fuller range of [possible values](/graph/api/resources/printerstatus?view=graph-rest-beta&preserve-view=true#printerprocessingstatedetail-values) for the status of a [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true).
- Use delegated permissions in apps on behalf of the signed-in user:
  - `PrinterShare.ReadBasic.All` to read basic information about printer shares, excluding access control information.
  - `PrintConnector.Read.All` to read print connectors.
  - `PrintConnector.ReadWrite.All` to read or write print connectors.
  - `PrintJob.Create` to create print jobs and upload content to print jobs.
  - `PrintSettings.Read.All` to read tenant-wide print settings.
  - `PrintSettings.ReadWrite.All` to read or write tenant-wide print settings.
  - `Reports.Read.All` to read print usage summary per specified user or per printer.

### Education
Use class-level [assignment settings](/graph/api/resources/educationAssignmentSettings?view=graph-rest-beta&preserve-view=true) to enable or disable animation to celebrate turning in an assignment.

### Groups
Get the processing status of a rule-based dynamic group by using the **membershipRuleProcessingStatus** property. This is useful when an attribute of a user changes, the user's membership in a rule-based [Microsoft 365 group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) is re-evaluated based on the group membership rules set for the organization. 

### Identity and access | Directory management
Get the [usage right](/graph/api/resources/UsageRight?view=graph-rest-beta&preserve-view=true) that a user or device has over third-party software built on PowerApps, or, usage right of a device over a subscription. Usage right includes identifiers for the corresponding service or product, and the current state of the usage right such as active, inactive, in warning, or suspended.

### Identity and access | Identity and sign-in
- Apps can use application permissions to let administrators manage [authentication methods](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta&preserve-view=true) for users.
- Support [Microsoft Authenticator](/graph/api/resources/microsoftauthenticatorauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in or perform multi-factor authentication to Azure AD.
- Use [Microsoft Authenticator policy](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) to define configuration settings and users or groups that are enabled to use Microsoft Authenticator as an authentication method. Use Microsoft Authenticator policy in place of [Microsoft Authenticator passwordless phone sign-in policy](/graph/api/resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) which is deprecated. 
- Support [Windows Hello for Business](/graph/api/resources/windowshelloforbusinessauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in on Windows devices without using a password.

### Reports | Identity and access reports
- [Get a report of the number of users who are registered, or who are capable of various registration features](/graph/api/authenticationmethodsroot-usersregisteredbyfeature?view=graph-rest-beta&preserve-view=true), including multi-factor authentication, self-service password reset, or passwordless authentication.
- [Get a report of the number of users registered for each authentication method](/graph/api/authenticationmethodsroot-usersregisteredbymethod?view=graph-rest-beta&preserve-view=true), including password, Windows Hello for Business, or passwordless phone sign-in.

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
