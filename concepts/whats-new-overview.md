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

## August 2020: New and generally available

### Change notifications
[Track changes](delta-query-overview.md) of supported resources in the Microsoft Graph for US Government national cloud.


## August 2020: New in preview only

### Applications
Support password-based single-sign-on in [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) application resources and specify such [settings](/graph/api/resources/passwordsinglesignonsettings?view=graph-rest-beta) in the **passwordSingleSignOnSettings** property. For information about password-based single sign-on in Azure AD, see [configure password-based single-sign-on](/azure/active-directory/manage-apps/configure-password-single-sign-on-non-gallery-applications).

### Change notifications
- Use the **includeResourceData** property of a [subscription](/graph/api/resources/subscription?view=graph-rest-beta), to [set up change notifications that include resource data](webhooks-with-resource-data.md). Do not use the **includeProperties** property.
- Get [change notifications delivered via Event Hub](change-notifications-delivery.md).

### Identity and access | Governance
- Customize a [terms of use agreement](/graph/api/resources/agreement?view=graph-rest-beta) to support an agreement expiration date and cadence, require the user to accept the agreement per device, or to re-accept the agreement on a set frequency. 
- Use the **file** property to navigate to a [custom agreement](/graph/api/resources/agreementfile?view=graph-rest-beta) for terms of use. Do not use the **files** property.

### Reports | Microsoft 365 usage reports
Get [reports on Microsoft 365 apps usage](/graph/api/resources/microsoft-365-apps-usage-report?view=graph-rest-beta), specifically on user detail, user counts, and platform user counts.

### Teamwork
Get [content hosted in a chat message](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta), such as images or code snippets. See an [example](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta&branch=master#example-2-get-hosted-content-bytes-for-an-image) to get the content bytes of an image.

## July 2020: New and generally available

### Calendar
GA of the feature that allows organizers to allow alternate meeting time proposals, and invitees to [propose new times for a meeting](outlook-calendar-meeting-proposals.md) when they [tentatively accept](/graph/api/event-tentativelyaccept?view=graph-rest-1.0) or [decline](/graph/api/event-decline?view=graph-rest-1.0) an event.

### Change notifications
Removed the erroneously introduced **sequenceNumber** property from the [changeNotification](/graph/api/resources/changenotification) resource.

### Groups
GA of the following properties for the [group](/graph/api/resources/group?view=graph-rest-v1.0) entity: **assignedLabels**, **expirationDateTime**, **membershipRule**, **membershipRuleProcessingState**, **preferredLanguage**, and **theme**.

### Identity and access
- Remove a user as a registered owner or user of a [device](/graph/api/resources/device).
- Track changes to newly created, updated, or deleted local representation of applications (represented by [servicePrincipals](/graph/api/resources/serviceprincipal) resources) and delegated permissions grants (represented by [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) resources) without performing a full read of the entire resource collection.
- GA of the [policy to enforce security defaults](/graph/api/resources/identitysecuritydefaultsenforcementpolicy) that protect organizations against common attacks.

### Identity and access | Identity and sign-in
- GA of [conditional access policies](/graph/api/resources/conditionalAccessPolicy) that are custom rules that define an access scenario.
- GA of [named locations](/graph/api/resources/namedLocation) representing custom rules that define network locations used in a conditional access policy.

### Schema extensions
The [schema extensions](/graph/api/resources/schemaextension) feature is now generally available in [Microsoft Cloud for US Government](/graph/deployments).

### Teamwork
Use the delegated permissions of `TeamsAppInstallation.ReadForTeam` or `TeamsAppInstallation.ReadWriteForTeam`, or application permissions of `TeamsAppInstallation.ReadForTeam.All` or `TeamsAppInstallation.ReadWriteForTeam.All` to [list apps that are installed in a team](/graph/api/teamsappinstallation-list).

## July 2020: New in preview only

### Cloud communications
- Use the [update](/graph/api/onlinemeeting-update?view=graph-rest-beta) operation to update the **startDateTime**, **endDateTime**, **participants**, or **subject** property of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta).
- Subscribe to notifications on changes to the availability of a user on Microsoft Teams, as represented by the [presence](/graph/api/resources/presence?view=graph-rest-beta) resource.

### Cloud communications | Call records
- [Get](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta) records of Public Switch Telephone Network (PSTN) calls.
- [Get](/graph/api/callrecords-callrecord-getdirectroutingcalls?view=graph-rest-beta) records of direct routing calls.

### Compliance | eDiscovery
Debut of [eDiscovery cases](/graph/api/resources/ediscoverycase?view=graph-rest-beta) that can contain custodians, holds, collections, review sets, and exports that can be used as evidence in legal cases.
Apps can now [query](/graph/api/resources/reviewsetquery?view=graph-rest-beta) and cull [review set data](/graph/api/resources/reviewset?view=graph-rest-beta) collected for use in a litigation, investigation, or regulatory request. This debut is part of Microsoft 365 [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide).

### Devices and apps | Cloud printing
- Use the application permission `Printer.ReadWrite.All` and [Internet Printing Protocol (IPP) encoding](https://tools.ietf.org/html/rfc8010) to [update a printer](/graph/api/printer-update?view=graph-rest-beta).
- Use one of the application permissions, `PrintJob.ReadBasic.All`, `PrintJob.Read.All`, `PrintJob.ReadWriteBasic.All`, or `PrintJob.ReadWrite.All`, to [get a print job](/graph/api/printjob-get?view=graph-rest-beta) or [list print jobs for a printer](/graph/api/printer-list-jobs?view=graph-rest-beta).
- When [getting a print job](/graph/api/printjob-get?view=graph-rest-beta), use `$expand` to get [print tasks](/graph/api/resources/printtask?view=graph-rest-beta) that are executing or have executed against the job. Print tasks, [task definitions](/graph/api/resources/printtaskdefinition?view=graph-rest-beta), and [task triggers](/graph/api/resources/printtasktrigger?view=graph-rest-beta) are used in [pull printing](universal-print-concept-overview.md#extending-universal-print-to-support-pull-printing).
- [Redirect a print job](/graph/api/printjob-redirect?view=graph-rest-beta) to a different printer, as part of pull printing.

### Devices and apps | Corporate management
Intune [July](changelog.md#july-2020) updates in beta.

### Groups
Use the **isAssignableToRole** property of a Microsoft 365 [group](/graph/api/resources/group?view=graph-rest-beta) and set it during group creation to indicate whether the group can be assigned to an Azure AD role. This [helps manage role assignments in Azure AD](/azure/active-directory/users-groups-roles/roles-groups-concept), such that instead of assigning individual users an Azure AD role, a privileged role admin or global admin can create a Microsoft 365 group and assign the group that role, so that when users join the _group_, they are assigned the intended role indirectly.

### Identity and access
- [Acquire an access token](/graph/api/synchronization-synchronization-acquireAccessToken?view=graph-rest-beta) to authorize the Azure AD provisioning service to provision users into an application.
- [Get](/graph/api/entitlementmanagementsettings-get?view=graph-rest-beta) or [update](/graph/api/entitlementmanagementsettings-update?view=graph-rest-beta) entitlement management settings that control access to groups, applications, and SharePoint Online sites for users internal and external to your organization. 

### Identity and access | Identity and sign-in
- Include user risk levels (`low`, `medium`, `high`, `none`) as a consideration for applying a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta).
- [Use password change as a grant control](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta#special-considerations-when-using-passwordchange-as-a-control) in order to pass a conditional access policy.
- Use an [Open ID Connect provider](/graph/api/resources/openidconnectprovider?view=graph-rest-beta) (ODIC) as an identity provider in an Azure AD tenant and an Azure AD B2C tenant. Its **claimsMapping** property allows Azure AD to [map the claims](/graph/api/resources/claimsmapping?view=graph-rest-beta) from an OIDC provider to the claims that Azure AD recognizes and uses.

### People and workplace intelligence | Insights
Use more [granular privacy control](insights-customize-item-insights-privacy.md) over the availability and display of [item insights](/graph/api/resources/iteminsights?view=graph-rest-beta) in Microsoft 365. These insights represent the relationships between a user and documents in OneDrive for Business, calculated using advanced analytics and machine learning techniques. 

### People and workplace intelligence | Profile card customization
Administrators can [customize the properties exposed on the profile card for their organizations](add-properties-profilecard.md) by using the API for [profile card property](/graph/api/resources/profilecardproperty?view=graph-rest-beta).

### Sites and lists
Access the SharePoint [term store](/graph/api/resources/termstore-store?view=graph-rest-beta) taxonomy, the hierarchy that consists of [group](/graph/api/resources/termstore-group?view=graph-rest-beta), [set](/graph/api/resources/termstore-set?view=graph-rest-beta), and [term](/graph/api/resources/termstore-term?view=graph-rest-beta) resources, and [relation](/graph/api/resources/termstore-relation?view=graph-rest-beta) resources between terms.

### Workbooks and charts
[Get the status and any result](/graph/api/workbookoperation-get?view=graph-rest-beta) of a long running [operation](/graph/api/resources/workbookoperation?view=graph-rest-beta) in a [workbook](/graph/api/resources/workbook?view=graph-rest-beta).


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

