---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the and [June](changelog.md#june-2020) and [May](changelog.md#may-2020) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## July 2020: New and generally available
      
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
Subscribe to notifications on changes to the availability of a user on Microsoft Teams, as represented by the [presence](/graph/api/resources/presence?view=graph-rest-beta) resource.

### Devices and apps | Cloud printing
- Use the application permission `Printer.ReadWrite.All` and [Internet Printing Protocol (IPP) encoding](https://tools.ietf.org/html/rfc8010) to [update a printer](/graph/api/printer-update?view=graph-rest-beta).
- Use one of the application permissions, `PrintJob.ReadBasic.All`, `PrintJob.Read.All`, `PrintJob.ReadWriteBasic.All`, or `PrintJob.ReadWrite.All`, to [get a print job](/graph/api/printjob-get?view=graph-rest-beta) or [list print jobs for a printer](/graph/api/printer-list-jobs?view=graph-rest-beta).
- When [getting a print job](/graph/api/printjob-get?view=graph-rest-beta), use `$expand` to get [print tasks](/graph/api/resources/printtask?view=graph-rest-beta) that are executing or have executed against the job. Print tasks, [task definitions](/graph/api/resources/printtaskdefinition?view=graph-rest-beta), and [task triggers](/graph/api/resources/printtasktrigger?view=graph-rest-beta) are used in [pull printing](universal-print-concept-overview.md#extending-universal-print-to-support-pull-printing).
- [Redirect a print job](/graph/api/printjob-redirect?view=graph-rest-beta) to a different printer, as part of pull printing.

### Devices and apps | Corporate management
Intune [July](changelog.md#july-2020) updates in beta.

### Identity and access
- [Acquire an access token](/graph/api/synchronization-synchronization-acquireAccessToken?view=graph-rest-beta) to authorize the Azure AD provisioning service to provision users into an application.
- [Get](/graph/api/entitlementmanagementsettings-get?view=graph-rest-beta) or [update](/graph/api/entitlementmanagementsettings-update?view=graph-rest-beta) entitlement management settings that control access to groups, applications, and SharePoint Online sites for users internal and external to your organization. 

### Identity and access | Identity and sign-in
- Include user risk levels (`low`, `medium`, `high`, `none`) as a consideration for applying a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta).
- [Use password change as a grant control](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta#special-considerations-when-using-passwordchange-as-a-control) in order to pass a conditional access policy.

### People and workplace intelligence | Insights
Use more [granular privacy control](insights-customize-item-insights-privacy.md) over the availability and display of [item insights](/graph/api/resources/iteminsights?view=graph-rest-beta) in Microsoft 365. These insights represent the relationships between a user and documents in OneDrive for Business, calculated using advanced analytics and machine learning techniques. 

### People and workplace intelligence | Profile card customization
Administrators can [customize the properties exposed on the profile card for their organizations](add-properties-profilecard.md) by using the API for [profile card property](/graph/api/resources/profilecardproperty?view=graph-rest-beta).

### Workbooks and charts
[Get the status and any result](/graph/api/workbookoperation-get?view=graph-rest-beta) of a long running [operation](/graph/api/resources/workbookoperation?view=graph-rest-beta) in a [workbook](/graph/api/resources/workbook?view=graph-rest-beta).

## June 2020: New and generally available

### Calendar
GA of the feature that allows organizers to allow alternate meeting time proposals, and invitees to [propose new times for a meeting](outlook-calendar-meeting-proposals.md) when they [tentatively accept](/graph/api/event-tentativelyaccept?view=graph-rest-1.0) or [decline](/graph/api/event-decline?view=graph-rest-1.0) an event.

### Cloud communications | Online meeting
- Use the `Accept-Language` HTTP header when [creating an online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-1.0) to provide locale-based join information.
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-1.0) to return an online meeting that has a specified **externalId** value, or create one if none already exists, to streamline embedding the resultant meeting in a third-party calendar.

### Files
- Enhanced synchronization support:
  - Use the **pendingOperations** property to identify any [operations](/graph/api/resources/pendingoperations) that might update the binary content of a [driveItem](/graph/api/resources/driveitem) file, that are pending completion.
  - [Restore](/graph/api/driveitem-restore) a **driveItem** that has been deleted and is in the recycle bin on OneDrive Personal.
- Get or set the orientation of a [photo](/graph/api/resources/photo). Setting is supported on OneDrive Personal.
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file) data security and integrity.
- Use the `deferCommit` parameter to defer final creation when [uploading typically a large file](/graph/api/driveitem-createuploadsession) to OneDrive for Business, until an app makes a request to complete the upload.
- Use the **fileSize** property to provide as part of the **item** parameter an estimate, so to do a quota check prior to [uploading a file](/graph/api/driveitem-createuploadsession) on OneDrive Personal.
- Find [storagePlanInformation](/graph/api/resources/storageplaninformation) through the **quota** property of a [drive](/graph/api/resources/drive) resource to see if there are higher storage quota plans available.

### Groups
Use application permissions `Group.Read.All` and `Group.ReadWrite.All` to get group [conversation](/graph/api/resources/conversation) and [conversation thread](/graph/api/resources/conversationthread) resources.

### Identity and access 
- GA of two sets of API for [identity protection](/graph/api/resources/identityprotectionroot): [risk detection](/graph/api/resources/riskdetection) and [risky user](/graph/api/resources/riskyuser) APIs.

### Security
- Track the following as properties of an [alert](/graph/api/resources/alert?view=graph-rest-1.0):
  - IDs of incidents related to the alert.
  - Identify a [resource](/graph/api/resources/securityResource?view=graph-rest-1.0#securityresourcetype-values) as attacked or as a related resource in the alert.
  - Specify the source and destination locations of a [network connection](/graph/api/resources/networkconnection?view=graph-rest-1.0) related to the alert.

### Sites and lists
Specify geolocation data in a [column definition](/graph/api/resources/columndefinition) for a SharePoint [list](/graph/api/resources/list) resource.

### Teamwork
- Use the delegated permission [AppCatalog.Read.All](/graph/permissions-reference#appcatalog-resource-permissions) to list [apps](/graph/api/resources/teamsapp?view=graph-rest-1.0) from the Microsoft Teams app catalog.
- [Get information about the folder](/graph/api/channel-get-filesfolder) that maps to the **Files** tab of a Teams [channel](/graph/api/resources/channel).
- [Get the default channel](/graph/api/team-get-primarychannel), labelled as **General**, of a [team](/graph/api/resources/team).


## June 2020: New in preview only

### Calendar
In addition to tracking incremental changes on events in a **calendarView** (collection or events delimited by start _and_ end dates), use the [delta](/graph/api/event-delta?view=graph-rest-beta) function on events in a user mailbox, or events in a specific user calendar.

### Cloud communications | Presence
[Get the presence status](/graph/api/presence-get?view=graph-rest-beta) of all the users in an organization, or a specific user in the organization.

### Devices and apps | Cloud printing
- Specify [print margins](/graph/api/resources/printmargin?view=graph-rest-beta) when configuring a [document for printing](/graph/api/resources/printdocument?view=graph-rest-beta).
- Support for the following [printer capabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta):
  - feed directions
  - printing page ranges
  - print resolution in DPI
  - maximum print job queue size in bytes
  - input bins
  - margins
  - collation
  - document scaling
- Support for print resolution (DPI) and document scaling as part of [default printer settings](/graph/api/resources/printerdefaults?view=graph-rest-beta).
- Support for the following [document configuration](/graph/api/resources/printerdocumentconfiguration?view=graph-rest-beta) settings:
  - input bins
  - output bins
  - media sizes
  - margins
  - media types
  - finishings such as stapling or binding
  - pages per sheet
  - multi-page layout specifying the direction to lay out pages per sheet
  - collation
  - scaling
- Expand documents when [listing pring jobs](/graph/api/printer-list-jobs?view=graph-rest-beta).
- [Register a printer]() and use the [printerCreateOperation](/graph/api/resources/printercreateoperation?view=graph-rest-beta) resource to track and verify the registration of the printer.
- [Get long-running printer registration operation](/graph/api/printoperation-get?view=graph-rest-beta) within current user or app's tenant.
- A few renaming of properties and enum types - see details in the [June](changelog.md#june-2020) changelog updates for cloud printing.

### Devices and apps | Corporate management
Intune [June](changelog.md#june-2020) updates in beta.

### Education
- Can use delegated permissions `EduRoster.ReadBasic` to [get](/graph/api/educationuser-get?view=graph-rest-beta) the ID of a [teacher](/graph/api/resources/educationteacher?view=graph-rest-beta) or [student](/graph/api/resources/educationstudent?view=graph-rest-beta) in an external source program, as the **externalId** property.
- Use the **externalSource** property to track the value `lms` if an education [organization](/graph/api/resources/educationorganization?view=graph-rest-beta) or [class](/graph/api/resources/educationclass?view=graph-rest-beta) is created from a learning management system (LMS).

### Identity and access
- IT professionals can use [connector](/graph/api/resources/connector?view=graph-rest-beta) resources that are lightweight agents to connect to [Azure AD Application Proxy](/azure/active-directory/manage-apps/what-is-application-proxy), and [publish on-premises web applications apps externally](/graph/api/resources/onpremisespublishing?view=graph-rest-beta), so that remote users of their organizations can access these apps in a secure manner.
- Manage an [authentication policy](/graph/api/resources/authenticationflowspolicy?view=graph-rest-beta) at a tenant level, to enable or disable [self-service sign-up](/graph/api/resources/selfservicesignupauthenticationflowconfiguration?view=graph-rest-beta) of external users.
- [Provision a user account on demand](/graph/api/synchronization-synchronizationjob-provision-on-demand?view=graph-rest-beta), and be able to specify the objects to provision and synchronization rules to execute.

### Search
- Make use of enhancements on a [property](/graph/api/resources/property?view=graph-rest-beta) in a [schema](/graph/api/resources/schema?view=graph-rest-beta): **isRefinable** to enable filtering of search results and for a more refined control of the search experience, and **aliases** and **labels** for better relevance.
- Be able to specify up to 128 **property** resources in a **schema**.
- Use [get externalItem](/graph/api/externalitem-get?view=graph-rest-beta) for diagnostic purposes.

### Users
- Use the **userPurpose** property of [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta) to identify and differentiate a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. 
- Use [user settings](/graph/api/resources/usersettings?view=graph-rest-beta) to [get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta) [preferred languaes and regional settings](/graph/api/resources/regionalandlanguagesettings?view=graph-rest-beta).
- User settings is a relationship accessible through [user](/graph/api/resources/user?view=graph-rest-beta) that enables a consistent user experience across apps, by tapping into the Azure AD user profile to reflect the same user preferences. See [how user settings differentiate from mailbox settings](/graph/api/resources/user?view=graph-rest-beta#user-preferences-for-languages-and-regional-formats).


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

