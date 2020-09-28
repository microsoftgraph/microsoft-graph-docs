---
title: "Hightlights of earlier releases in Microsoft Graph"
description: "What was new earlier in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Highlights of earlier releases

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
The [schema extensions](/graph/api/resources/schemaextension) feature is now generally available in [Microsoft Cloud for US Government](./deployments.md).

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



## June 2020: New and generally available

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
- Use the delegated permission [AppCatalog.Read.All](./permissions-reference.md#appcatalog-resource-permissions) to list [apps](/graph/api/resources/teamsapp?view=graph-rest-1.0) from the Microsoft Teams app catalog.
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


## May 2020: New and generally available

### Calendar | Place
GA of the [places API](/graph/api/resources/place) in v1.0 - use this API in production apps to get, update, or delete a [room](/graph/api/resources/room) or [room list](/graph/api/resources/roomlist) in a tenant. [Find out more](outlook-calendar-concept-overview.md#build-apps-with-location-awareness-and-provide-intelligent-context) about the places API.

### Change notifications
- Subscribe to change notifications in Microsoft Cloud for US Government.

### Cloud communications | Call records
- GA of the [call records API](/graph/api/resources/callrecords-api-overview?view=graph-rest-1.0) - use the [callRecord](/graph/api/resources/callrecord?view=graph-rest-1.0) resource to get the metadata of calls and online meetings on Microsoft Teams and Skype.
- Subscribe to [change notifications](./webhooks.md) for changes to all **callRecord** resources in an organization.
- [List sessions](/graph/api/callrecords-session-list?view=graph-rest-1.0) in a **callRecord**, and optionally [expand each session to list segments](/graph/api/callrecords-session-list?view=graph-rest-1.0#example-2-get-session-list-with-segments) in the call record.
- Support for 60-GHz (`frequency60GHz`) and `unknownFutureValue` WiFi band values of a media endpoint in a segment.
- Support for voice mail as a possible type of service-side end point in a communication [segment](/graph/api/resources/callrecords-segment).

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in v1.0.

### Graph Explorer
Use the many new features of [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) that enhance learning and prototyping in the sandbox. For example:
- View code snippets that correspond to the REST API query you entered, in C#, Java, JavaScript, and Objective C.
- Signed in with a tenant, view and copy an access token to your favorite REST client application.

See [New Graph Explorer is now GA](https://developer.microsoft.com/graph/blogs/new-graph-explorer-is-now-ga/) for more details.

### Groups
- Synchronizing on-premises directory to Azure Active Directory via Azure AD Connect now returns the **onPremisesDomainName**, **onPremisesNetBiosName** and **onPremisesSamAccountName** properties as part of the [group](/graph/api/resources/group?view=graph-rest-1.0) resource.
- Subscribe to change notifications for [group](/graph/api/resources/group) resources in Microsoft Cloud China operated by 21Vianet.

### Identity and access
- GA of the service principals API in v1.0 - use the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0) resource in production apps to programmatically manage instances of applications and control what an application can do within your tenant. You can control who can use an application, what resources the application has access to, such as adding password credentials, rolling expiring certificates, and managing delegated permission grants and application role assignments.
- GA of the [appRoleAssignment](/graph/api/resources/appRoleAssignment?view=graph-rest-1.0) API, which records the assignment of an [appRole](/graph/api/resources/approle?view=graph-rest-1.0) (representing the `roles` claim in ID tokens and access tokens) to a [user](/graph/api/resources/user?view=graph-rest-1.0), [group](/graph/api/resources/group?view=graph-rest-1.0), or [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0).
- Use Facebook as an identity provider on Azure Active Directory.
- Use the delegated or application permission of `AppRoleAssignment.ReadWrite.All` to allow an app to manage grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, respectively with or without the signed-in user.


### Microsoft Graph SDKs
See new SDK guidance on the following:
- [Paging](./sdks/paging.md)
- [Batching](./sdks/batch-requests.md)
- [Uploading large files on OneDrive](./sdks/large-file-upload.md)
- [Customizing SDK service client through HTTP middleware components](./sdks/customize-client.md).

### Teamwork
- If your scenario involves online meetings on Teams, see new guidance on [how to choose](choose-online-meeting-api.md) between the [calendar API](outlook-calendar-online-meetings.md) and [cloud communications API](cloud-communications-online-meetings.md) to create and join online meetings.
- [Send](/graph/api/channel-post-messages?view=graph-rest-1.0) and [reply](/graph/api/channel-post-messagereply?view=graph-rest-1.0) to messages in a [channel](/graph/api/resources/channel?view=graph-rest-1.0).
- Get the OneDrive for Business location of the files for a [channel](/graph/api/resources/channel?view=graph-rest-1.0), by using the **fileFolder** navigation property.

### Teamwork | Shifts
GA of the [shifts API](/graph/api/resources/shift?view=graph-rest-1.0) in v1.0 - use this API in production apps to create, update, and manage schedules of firstline workers, to let them stay in touch and collaborate effectively.

### Users
- Subscribe to change notifications for [user](/graph/api/resources/user) resources in Microsoft Cloud China operated by 21Vianet.
- Track the status and date/time of the last status change of an external user, who has been [invited](/graph/api/invitation-post?view=graph-rest-1.0) to join the organization, by using the **externalUserState** and **externalUserStateChangeDateTime** properties of the **user** resource.

## May 2020: New in preview only

### Change notifications
- Use formally schematized types [changeNotification](/graph/api/resources/changenotification?view=graph-rest-beta) and [changeNotificationCollection](/graph/api/resources/changenotificationcollection?view=graph-rest-beta) to process resource change notifications. 
- Track if notifications are in sequence or if a notification is missing by using the **sequenceNumber** property on the **changeNotification** resource.

### Devices and apps | Cloud printing
- The [printer](/graph/api/resources/printer?view=graph-rest-beta) and [printerShare](/graph/api/resources/printershare?view=graph-rest-beta) resources are now in parity and have the same properties as each other.
- Some property and type name clean-up around printer shares:
  - Use the **shared** navigation property of [print](/graph/api/resources/print?view=graph-rest-beta) to get the list of printer shares registered in the tenant. 
  - See details in the [May](changelog.md#may-2020) changelog.

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in beta.

### Groups
- [Evaluate](/graph/api/group-evaluatedynamicmembership?view=graph-rest-beta) whether a user or device is or would be a member of a dynamic group, using the existing rule for the [group](/graph/api/resources/group?view=graph-rest-beta) or a specified rule. [Rule-based dynamic membership](/azure/active-directory/users-groups-roles/groups-dynamic-membership) reduces administrative overhead of adding and removing members.
- When creating a Microsoft 365 [group](/graph/api/resources/group?view=graph-rest-beta), configure the behaviors of the group by specifying them in the **resourceBehaviorOptions** property. For example, allow members to post, subscribe new members to conversation, disable welcome email, and hide the group in Outlook experiences.
- Specify the resources to provision in the **resourceProvisioningOptions** property that are normally not part of the default [group](/graph/api/resources/group?view=graph-rest-beta) creation. Currently supported is provisioning a group as a [team](/graph/api/resources/team?view=graph-rest-beta) with Microsoft Teams capabilities.

### Identity and access
- Apply OData system query options (`$count`, `$filter`, `$search`) when getting collections of entities that are derived from [directoryObject](). 
You can [search for specific tokens](./query-parameters.md#using-search-on-directory-object-collections) in the **displayName** and **description** properties 
of these entities, and use OData cast to trim **directoryObject** results to certain derived types. See more details in 
[Build advanced queries in Microsoft Graph with $count, $filter, $search, and $orderby](https://developer.microsoft.com/en-us/graph/blogs/build-advanced-queries-with-count-filter-search-and-orderby/).
- As part of the [identity protection API](/graph/api/resources/identityprotection-root?view=graph-rest-beta), use the **riskEventType** property to [get the type of risk detected](/graph/api/riskdetection-get?view=graph-rest-beta), or [get the type of risk in a user's history](/graph/api/riskyuser-list-history?view=graph-rest-beta). Do not use the **riskType** property as it has been deprecated.
- Specify client application types in the **clientAppTypes** property of the [condition set](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) for a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta).
- Use the delegated permission of `EntitlementManagement.Read.All` to allow an app to read access packages and related entitlement management resources on behalf of the signed-in user.
- Use the delegated or application permissions of `Application.Read.All` and `Application.ReadWrite.All` to [list applications](/graph/api/application-list?view=graph-rest-beta) in an organization.
- Control authorization settings in Azure AD using the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) resource type.

### Teamwork
- Teams apps that [support single sign-on (SSO)](/microsoftteams/platform/tabs/how-to/authentication/auth-aad-sso) can specify the `WebApplicationInfo.id` from the Teams app manifest, in the **azureADAppId** property of the [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta).
- Use [finer grained permissions](./permissions-reference.md#teams-resource-specific-consent-permissions) to access [team](/graph/api/resources/team?view=graph-rest-beta) and [channel](/graph/api/resources/channel?view=graph-rest-beta) resources.


## April 2020: New and generally available

### Calendar
- [Share or delegate calendars](outlook-share-or-delegate-calendar.md) programmatically, in closer parity with the Outlook user experience. In addition to tracking the current user's permissions and sharing status for a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-1.0), you can now manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-1.0) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0), you can now specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- [Create or update an event as an online meeting](outlook-calendar-online-meetings.md):
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-1.0) to be available online, and provide details for attendees to join the meeting online. 
  - In particular, use the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** to set or identify Microsoft Teams as an online meeting provider, a workaround for a [known issue](known-issues.md#onlinemeetingurl-property-support-for-microsoft-teams) with the **onlineMeetingUrl** property.
- Add [file attachments up to 150MB](outlook-large-attachments.md) to an [event](/graph/api/resources/event?view=graph-rest-1.0).

### Files
- [Check out](/graph/api/driveitem-checkout?view=graph-rest-1.0) or [check in](/graph/api/driveitem-checkin?view=graph-rest-1.0) a file to OneDrive to manage updating the file and making updates available to others when the updates are ready.
- Apply optional password and expiration date/time as parameters of the [invite](/graph/api/driveitem-invite?view=graph-rest-1.0) and [create sharing link](/graph/api/driveitem-createlink?view=graph-rest-1.0) actions to share a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0).
- Get or set password and expiration date/time of a [permission](/graph/api/resources/permission?view=graph-rest-1.0), and track the [identitySet](/graph/api/resources/identityset?view=graph-rest-1.0) of users granted the permission to share a **driveItem**.
- Get the [permission](/graph/api/resources/permission?view=graph-rest-1.0) of a [shared drive item](/graph/api/resources/shareddriveitem?view=graph-rest-1.0) by using the **permission** navigation property.
- Limit users with a [sharing link](/graph/api/resources/sharinglink?view=graph-rest-1.0) to only view and may not download the contents of a shared**driveItem** on OneDrive for Business or SharePoint.

### Identity and access
- To manage roles and assign access to resources in role-based access control (RBAC) providers such as Microsoft Intune, use [unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple?view=graph-rest-1.0). The **unifiedRoleAssignmentMultiple** resource supports defining a single role over an array of scopes, and assigning the role to multiple principals (such as users).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-1.0) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-1.0). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-1.0/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-1.0), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancetimepolicy?view=graph-rest-1.0). 

### Mail
Add [file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-1.0).

### Sites and lists
- [List sites](/graph/api/sites-list-followed?view=graph-rest-1.0) that the signed-in user has followed.
- Identify the geographic region of a [site collection](/graph/api/resources/sitecollection?view=graph-rest-1.0) by using the **dataLocationCode** property.
- Identify the tenant of a file, folder, or other item on SharePoint by accessing the **tenantId** property that is part of the **sharepointIds** of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0).

## April 2020: New in preview only

### Devices and apps | Cloud printing

Designate allowed users and groups to use specific [printer shares](/graph/api/resources/printershare?view=graph-rest-beta) on Universal Print, the Microsoft 365 cloud-based print infrastructure. To experience robust and centralized print management capabilities, and offer a simple yet rich and secure print experience for print users, see the [Universal Print announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/announcing-universal-print-a-cloud-based-print-solution/ba-p/1204775) and join their preview program.

### Devices and apps | Corporate management
Intune [April](changelog.md#april-2020) updates.

### Groups
Identify the app that created a [group](/graph/api/resources/group?view=graph-rest-beta) by its app ID.

### Identity and access
- [Track changes](/graph/api/administrativeunit-delta?view=graph-rest-beta) for [administrative units](/graph/api/resources/administrativeunit?view=graph-rest-beta).
- [Track changes](/graph/api/oauth2permissiongrant-delta?view=graph-rest-beta) for [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant?view=graph-rest-beta).
- [Manage](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta) a user's [authentication methods](/graph/api/resources/authenticationmethod?view=graph-rest-beta) which include [password](/graph/api/resources/passwordauthenticationmethod?view=graph-rest-beta) or [phone](/graph/api/resources/phoneauthenticationmethod?view=graph-rest-beta). For example, [reset a user password](/graph/api/passwordauthenticationmethod-resetpassword?view=graph-rest-beta) and [get the reset status](/graph/api/authenticationoperation-get?view=graph-rest-beta), or [add a phone number](/graph/api/authentication-post-phonemethods?view=graph-rest-beta) for a user for SMS or voice call authentication, if the policy is enabled for the user.

### Reports | Identity and access reports
[List](/graph/api/relyingpartydetailedsummary-list?view=graph-rest-beta) [relying parties](/windows-server/identity/ad-fs/technical-reference/understanding-key-ad-fs-concepts) configured in Active Directory Federation Services.

### Reports | Microsoft 365 usage reports
View **Meeting Created** and **Meeting Interacted** data in CSV reports for [email activity counts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta), [email activity user counts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta), and [email activity user detail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta).


## March 2020: New and generally available

### Cloud communications
- Get the call routing and incoming context of a [call](/graph/api/resources/call?view=graph-rest-1.0).
- [Update the recording status](/graph/api/call-updaterecordingstatus?view=graph-rest-1.0) of a call.
- Specify recording information for a [participant](/graph/api/resources/participant?view=graph-rest-1.0), including the initiator and status of the recording.
- Uniquely identify participants in a conference or participant-to-participant [call](/graph/api/resources/call?view=graph-rest-1.0) using the **callChainId** property.
- Identify as part of [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-1.0) the country code and endpoint type (such as Skype for Business, or Skype for Business VOIP) of the participant.
- Third-party video teleconferencing (VTC) device partners can log and provide media quality data for their video teleconferencing devices through a Cloud Video Interop (CVI) bot and using the [logTeleconferenceDeviceQuality](/graph/api/call-logteleconferencedevicequality?view=graph-rest-1.0) function. Media quality includes open-type data for [audio](/graph/api/resources/teleconferencedeviceaudioquality?view=graph-rest-1.0), [video](/graph/api/resources/teleconferencedevicevideoquality?view=graph-rest-1.0), and [screen-sharing](/graph/api/resources/teleconferencedevicescreensharingquality?view=graph-rest-1.0).

### Files
- [Remote items](/graph/api/resources/remoteitem?view=graph-rest-1.0) that are shared with a user, added to the user's OneDrive, or returned as a search result can contain metadata for an image or video.
- [Follow](/graph/api/driveitem-follow?view=graph-rest-1.0) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) for convenient access, or for faciliating actions such as move, copy, and save-as. Use [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-1.0) to stop following the drive item.
- [Grant](/graph/api/permission-grant?view=graph-rest-1.0) permissions to users to access a sharing link, in order to share the corresponding drive item.

### Identity and access
- [Track changes](/graph/api/orgcontact-delta?view=graph-rest-1.0) for [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0).
- Use the **riskEventTypes_v2** property to get the risk event types associated with a [sign-in](/graph/api/resources/signin?view=graph-rest-1.0).
- Use the `User.ManageIdentities.All` delegated permission to allow an app to read, update, or delete identities that are associated with a user's account, that the signed-in user has access to. Use that permission at the application-level without a signed-in user present. This allows the app to [manage](/graph/api/user-update?view=graph-rest-1.0) which identities a user can sign-in with.

### Reports
Use Teams Service Administrator and Teams Communications Administrator as accepted user roles to allow apps to read Microsoft 365 service usage reports on behalf of a user, as [forms of user-delegated authorization](reportroot-authorization.md). 

### Sites
- Let users [follow](/graph/api/site-follow?view=graph-rest-1.0) or [unfollow](/graph/api/site-unfollow?view=graph-rest-1.0) SharePoint sites.
- [Subscribe to change notifications](/graph/api/resources/subscription?view=graph-rest-1.0) for a SharePoint [list](/graph/api/resources/list?view=graph-rest-1.0).

## March 2020: New in preview only

### Calendar
- Use the **calendarGroupId** property to get the [calendar group](/graph/api/resources/calendargroup?view=graph-rest-beta) in which a [calendar](/graph/api/resources/calendar?view=graph-rest-beta) has been created.
- Use the **isDraft** property to identify an [event](/graph/api/resources/event?view=graph-rest-beta) as a meeting that the user has updated in Outlook but has not sent to update attendees.

### Cloud communications
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta) to get an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) instance by a custom external ID, and create one when none already exists.
- Have the option to use the **externalId** property to identify an online meeting with the custom external ID.
- Use the optional `Accept-Language` HTTP request header to [create](/graph/api/application-post-onlinemeetings?view=graph-rest-beta) or [get](/graph/api/onlinemeeting-get?view=graph-rest-beta) an instance of online meeting, so that the successful operation displays the content of the **joinInformation** property in the specified language and locale variant.

### Devices and apps
Intune [March](changelog.md#march-2020) updates.

### Identity and access
- Use the `Auditlogs.Read.All` permission to list the [sign-in activity](/graph/api/resources/signinactivity?view=graph-rest-beta) of a [user](/graph/api/resources/user?view=graph-rest-beta).
- Use the `PrivilegedAccess.Read.AzureResources` application-level permission for [Privileged Identity Management (PIM) of Azure resources](/graph/api/resources/privilegedidentitymanagement-resources?view=graph-rest-beta), to set up just-in-time access workflow for Azure infrastructure roles at a management group, subscription, resource group, or resource level.
- Use the [identitySecurityDefaultsEnforcementPolicy](/graph/api/resources/identitysecuritydefaultsenforcementpolicy?view=graph-rest-beta) entity to [get](/graph/api/identitysecuritydefaultsenforcementpolicy-get?view=graph-rest-beta) or [update](/graph/api/identitysecuritydefaultsenforcementpolicy-update?view=graph-rest-beta) pre-configured default security settings that protect organizations against common attacks.
- Use an `identity` segment when calling the conditional access APIs. For example, to [get](/graph/api/conditionalaccesspolicy-get?view=graph-rest-beta) a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta): `GET https://graph.microsoft.com/beta/identity/conditionalAccess/policies/{id}`.
- Use the **authenticationRequirement** property to get the highest level of authentication that is needed through all the sign-in steps in order for [sign-in](/graph/api/resources/signin?view=graph-rest-beta) to succeed.
- Use pagination when [listing provisioning events](/graph/api/provisioningobjectsummary-list?view=graph-rest-beta) that occurred in your tenant.

### Search
- To add data in a file to search results, index the data simply as an [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta). The **externalFile** type has been deprecated.
- [Update](/graph/api/externalitem-update?view=graph-rest-beta) an [item in the index](/graph/api/resources/externalitem?view=graph-rest-beta), by specifically updating the plain-text representation of the item (represented by the **content** property), or the properties bag of the item (represented by the **properties** property). Updating any property in the properties bag overwrites the entire properties bag, so make sure to explicitly include all the properties of the item in the update.
- Check for `HTTP 429` and the `Retry-After` response header after calling the [create](/graph/api/externalconnection-put-items?view=graph-rest-beta), [update](/graph/api/externalitem-update?view=graph-rest-beta), or [delete](/graph/api/externalitem-delete?view=graph-rest-beta) operation of **externalItem**. Backing off requests using the `Retry-After` delay is the fastest way to recover from [throttling](throttling.md#best-practices-to-handle-throttling).

### Teamwork
Use the `ChannelMessage.Read.All` application-level permission to read [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) instances in channels without a signed-in user.

### Universal Print
Debut of the [Universal Print API](universal-print-concept-overview.md) which allows users to print on the web or from an app. The API lets IT administrators manage user and group access to printers in the Microsoft 365 cloud, remote printer sharing to maintain availability, monitor printer status, and report on archived print jobs and usage. 

Note that as of March 2020, the Universal Print _service_ is in private preview. See [Announcing Universal Print: a cloud-based print solution](https://aka.ms/announcinguniversalprint) for information regarding participation.


## February 2020: New and generally available

### Calendar
Walk through an example of [creating an event in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md), and the actions and properties available to the delegate, invitees, and calendar owner during this process.

### Identity and access
- To improve security when subscribing to [change notifications of user data](webhooks.md), [enforce Transport Layer Security (TLS) 1.2](/configmgr/core/plan-design/security/enable-tls-1-2) or higher on clients and site servers used in the notification process. The new requirement is rolled out in stages starting February 15 2020. By May 15, 2020, all notification endpoints must meet the new TLS requirement. [Find out the stages of the rollout](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) and if necessary, use the new **latestSupportedTlsVersion** property as a temporary workaround to avoid subscription failures, before completing the TLS upgrade.
- Use respective types of [threat assessment request](/graph/api/resources/threatAssessmentRequest?view=graph-rest-1.0) to track threats from [mail](/graph/api/resources/mailassessmentrequest?view=graph-rest-1.0), an [email message file](/graph/api/resources/emailfileassessmentrequest?view=graph-rest-1.0) (.EML file), [email attachment file](/graph/api/resources/fileassessmentrequest?view=graph-rest-1.0) (text, Word, or binary file), or [URL](/graph/api/resources/urlassessmentrequest?view=graph-rest-1.0).

### Users
[Reprocess](/graph/api/user-reprocesslicenseassignment?view=graph-rest-1.0) all group-based license assignments for a [user](/graph/api/resources/user?view=graph-rest-1.0).


## February 2020: New in preview only

### Calendar
See [tasks supported by preview APIs that manage calendar sharing and delegation](outlook-share-or-delegate-calendar.md).

### Cloud communications

- Use the new [call records](/graph/api/resources/callrecord?view=graph-rest-beta) resource to get metadata of calls and online meetings on Microsoft Teams and Skype for Business for an organization.
- For a participant in a meeting, use the **initiator** property to get the identity information of the initiator of a [recording](/graph/api/resources/recordinginfo?view=graph-rest-beta), if there is one.

### Devices and apps
Intune [February](changelog.md#february-2020) updates.

### Groups
Use the [assignLicense](/graph/api/group-assignlicense?view=graph-rest-beta) method to assign licences for products, such as Microsoft 365 or Enterprise Mobility + Security, to a group. Since Azure AD ensures licences are assigned to members of the group, members joining or leaving a group no longer requires licence management at the individual level.

### Identity and access
- Set requestor, approval, and review settings when creating an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-beta) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-beta). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-beta/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-beta), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-beta), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancetimepolicy?view=graph-rest-beta). 
- Use application-level and delegated `Policy.ReadWrite.ApplicationConfiguration` permission for read and write operations on application configuration [policies](/graph/api/resources/policy-overview?view=graph-rest-beta) mentioned in the preceding item.

### Teamwork
- Use [change notifications](/graph/api/resources/webhooks?view=graph-rest-beta) on all channel messages or all chat messages in an organization.
- [Decline](/graph/api/swapshiftschangerequest-decline?view=graph-rest-beta) a [request to swap shifts](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta) with another user in a [team](/graph/api/resources/team?view=graph-rest-beta).

## January 2020: New and generally available

### Security
As part of customer alert management, use the [update alert](/graph/api/alert-update?view=graph-rest-1.0) method and update the **comments** field as either `Closed in IPC` or `Closed in MCAS`.

### Teamwork
Use the **primaryChannel** navigation property of a [team](/graph/api/resources/team?view=graph-rest-1.0) to access its default channel, **General**.

### Users
Use the **identities** property to access one or more identities that a [user](/graph/api/resources/user?view=graph-rest-1.0) can use to sign in to an Azure AD user account. The identities can be provided by Microsoft, organizations, or social identity providers such as Facebook, Google, or Microsoft. This property allows the user to sign in to the user account with any of these identities.

## January 2020: New in preview

### Devices and apps
Intune [January](changelog.md#january-2020) updates.


## December 2019: New and generally available

### Cloud communications
The cloud communications API has GA'd and APIs for [call](/graph/api/resources/call?view=graph-rest-1.0) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-1.0) are [available in v1.0](/graph/api/resources/communications-api-overview?view=graph-rest-1.0).

### Education
Use the **classSettings** property to manage class-specific settings, such as enabling the sending of weekly assignment digests. This property is available on the [team](/graph/api/resources/team?view=graph-rest-1.0) resource when the team represents an [education class](/graph/api/resources/educationclass?view=graph-rest-1.0).

### Identity and access 
[Attempting to get container objects with limited permissions returns partial data](permissions-reference.md#limited-information-returned-for-inaccessible-member-objects). An example is a [group](/graph/api/resources/group?view=graph-rest-1.0) instance that's associated with a [user](/graph/api/resources/user?view=graph-rest-1.0), another **group**, and a [device](/graph/api/resources/device?view=graph-rest-1.0). An app having only the permissions User.Read.All and Group.Read.All and attempting to access this **group** instance would get the **user** and **group** objects, but limited data for the **device** object (only data type and object ID and not property values).

### People and workplace intelligence
The insights API has GA'd. Use the API in production apps to identify the most relevant documents that are:

- [Trending around](/graph/api/insights-list-trending?view=graph-rest-1.0) a user
- [Used by](/graph/api/insights-list-used?view=graph-rest-1.0) a user
- [Shared with or shared by](/graph/api/insights-list-shared?view=graph-rest-1.0) a user

### Reports
To get Microsoft 365 usage reports using permissions delegated by a user, administrators must have assigned the user an Azure AD limited administrator role. This can be one of the following roles: company administrator, Exchange administrator, SharePoint administrator, Lync administrator, global reader, or reports reader. See [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md) for details.

### Toolkit
Microsoft Graph Toolkit v1.1 has released. For a list of enhancements and bug fixes, see the [December 2019 section](changelog.md#december-2019) of the changelog.

## December 2019: New in preview

### Cloud communications
- Use the new [presence](/graph/api/resources/presence?view=graph-rest-beta) resource to get information about the availability and current activity of one or more users.
- [Delete](/graph/api/onlinemeeting-delete?view=graph-rest-beta) an instance of an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta).
- See the [December 2019 section](changelog.md#december-2019) of the changelog for the renaming and removal of a few members of the [call](/graph/api/resources/call?view=graph-rest-beta) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) resources, to be in parity with the v1 version of these resources.

### Devices and apps
Intune [December](changelog.md#december-2019) updates

### Identity and access 
- Behavior fix to the **appRoleAssignments** and **appRoleAssignedTo** relationships on [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta).
- Use [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta) in [Azure AD entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta) to request adding a resource to a [catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta), so that the roles of that resource can be used in an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta).
- Use the [threat assessment API](/graph/api/resources/threatassessment-api-overview?view=graph-rest-beta) to empower administrators to report suspicious emails, phishing URLs, email attachments, or other files. The thread scanning verdict can then inform them to adjust organizational policy appropriately.

### Teamwork
- [Set up change notifications that include resource data](webhooks-with-resource-data.md) for [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resources in Microsoft Teams channels and chats.
- [Subscribe to notifications](/graph/api/resources/subscription?view=graph-rest-beta) for new or modified [channel messages or chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).
- Use the [shiftPreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta) resource to enable specifying a user's availability to be assigned shifts in a [schedule](/graph/api/resources/schedule?view=graph-rest-beta). Get or set this as part of the user's [settings](/graph/api/resources/usersettings?view=graph-rest-beta).


## November 2019: New and generally available

### Groups
- Use delegated or application permissions, GroupMember.Read.All and GroupMember.ReadWrite.All, to list groups, read basic group properties, read (and update if read/write permission) the membership of the groups the app has access to.
- Use the application permission, Group.Create, to create groups without a signed-in user.
- For a specified [group](/graph/api/resources/group?view=graph-rest-1.0), [check for membership](/graph/api/group-checkmemberobjects?view=graph-rest-1.0) in other groups or directory roles.

### Identity and access
- Register [applications](/graph/api/resources/application?view=graph-rest-1.0) that authenticate with Azure Active Directory (Azure AD). Use delegated [permissions](./permissions-reference.md#application-resource-permissions), Application.Read.All and Application.ReadWrite.All, or application permission, Application.Read.All, as appropriate.
- For a specified [device](/graph/api/resources/device?view=graph-rest-1.0), [check for membership](/graph/api/device-checkmemberobjects?view=graph-rest-1.0) in other groups or directory roles.

### Mail
- Use the **conversationIndex** property to get the position of a message in an Outlook email conversation.
- Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to get [message](/graph/api/resources/message?view=graph-rest-1.0) or [mail folder](/graph/api/resources/mailfolder?view=graph-rest-1.0) resources, track their changes, and manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-1.0) for change notifications on messages.

### Users
- [Check for group memberships](/graph/api/user-checkmemberobjects?view=graph-rest-1.0) for a specified [user](/graph/api/resources/user?view=graph-rest-1.0).
- Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.

## November 2019: New in preview

### Calendar
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md).
- [Set properties](/graph/api/place-update?view=graph-rest-beta) for the rich location types of [room](/graph/api/resources/room?view=graph-rest-beta) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta).

### Cloud communication
The [call](/graph/api/resources/call?view=graph-rest-beta) resource type supports the following additional features:

- The [context of an incoming call](/graph/api/resources/incomingcontext?view=graph-rest-beta)
- The type of endpoint for a participant, such as voice mail or Skype for Business
- The ability to [update](/graph/api/call-updaterecordingstatus?view=graph-rest-beta) the [recording information](/graph/api/resources/recordinginfo?view=graph-rest-beta) for a [participant](/graph/api/resources/participant?view=graph-rest-beta)

### Devices and apps
Intune [November](changelog.md#november-2019) updates

### Education
Administrators can enable class-wide settings through the **classSettings** property of the [team](/graph/api/resources/team?view=graph-rest-beta) associated with the [class](/graph/api/resources/educationclass?view=graph-rest-beta). Currently, there is a setting to notify guardians about weekly assignments.

### Identity and access
- Use the application permission, Policy.Read.All, to read all your organization's conditional access policies and named locations, without a signed-in user present.
- Allow a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta) to be in a report-only state, `enabledForReportingButNotEnforced`.
- Use the delegated permission, ThreatAssessment.ReadWrite.All, or application permission, ThreatAssessment.Read.All, to read (or create, if read/write permission) requests to assess threats in an organization.

### Mail
Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-beta) for change notifications on the [message](/graph/api/resources/message?view=graph-rest-beta) resource.

### Notifications
Use the new light-weight notifications [web SDK](https://aka.ms/GNSDK) in place of the [Project Rome SDK](https://github.com/Microsoft/project-rome), to take advantage of an improved authentication model and support for web apps using web push. 

### People and workplace intelligence
Debut of the [profile](/graph/api/resources/profile?view=graph-rest-beta) resource which is a rich representation of the next generation of people entities in Microsoft services. This resource relates to common and practical people attributes, including information for any meaningful dates such as [anniversaries](/graph/api/resources/personanniversary?view=graph-rest-beta), [education](/graph/api/resources/educationalactivity?view=graph-rest-beta), [employment positions](/graph/api/resources/workposition?view=graph-rest-beta), [interests](/graph/api/resources/personinterest?view=graph-rest-beta), [language](/graph/api/resources/languageproficiency?view=graph-rest-beta) and [skill](/graph/api/resources/skillproficiency?view=graph-rest-beta) proficiencies, [project participation](/graph/api/resources/projectparticipation?view=graph-rest-beta), [web site association](/graph/api/resources/personwebsite?view=graph-rest-beta), and other [account](/graph/api/resources/useraccountinformation?view=graph-rest-beta) and contact information.

### Search
Debut of the [Microsoft Search API](search-concept-overview.md) which allows app users to get more up-to-date, personalized, and relevant search results powered by Microsoft Graph. Use the [query](/graph/api/search-query?view=graph-rest-beta) capability that by default, searches Outlook messages and events, and OneDrive and SharePoint files in the Microsoft cloud. Use [connectors](/microsoftsearch/connectors-overview), available in the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery), to include search data outside of the Microsoft cloud. Alternatively, [build your own connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta#common-use-cases), index external custom items and files, and query specific external data sources.

### Teamwork
Get the [file](/graph/api/resources/driveitem?view=graph-rest-beta) resources associated with a [team](/graph/api/resources/team?view=graph-rest-beta) and [channel](/graph/api/resources/channel?view=graph-rest-beta) by using the following HTTP request syntax:

```http
GET /teams/{teamId}/channels/{channelId}/filesFolder
```

### Users
Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.


## October 2019: New and generally available

### Identity and access
- Use [organization contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0) in production apps. Organization contacts are managed by organization administrators, synchronized either from an on-premises Active Directory or from Exchange Online.
- Configure [certificate-based authentication](/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started) in an [organization](/graph/api/resources/organization?view=graph-rest-1.0).
- Add and remove [password credentials](/graph/api/resources/passwordcredential?view=graph-rest-1.0) for [applications](/graph/api/resources/application?view=graph-rest-1.0).

### Mail
Use the new **message** parameter to update any writeable [message](/graph/api/resources/message?view=graph-rest-1.0) properties when [replying](/graph/api/message-reply?view=graph-rest-1.0) to a message, for example, [adding a recipient to the reply](/graph/api/message-reply#example?view=graph-rest-1.0).

### Microsoft Graph data connect
Developers and data scientists can now use [tools to translate Office 365 data into Common Data Model format](https://github.com/OfficeDev/MS-Graph-Data-Connect/blob/master/Common-Data-Model/README.md), making it schematically consistent with other Open Data Initiative (ODI)-ready datasets. 


### Microsoft Graph SDKs
- Use chaos handlers in the JavaScript SDK to verify if an app is resilient to server failures that are tricky to initiate.
- Read about [making API calls using the SDKs](./sdks/create-requests.md).

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
- New triggers added to the [Microsoft Graph security connector](/connectors/microsoftgraphsecurity/) and [playbooks](/azure/security-center/security-center-playbooks) for Logic Apps and Flow. See [playbook examples](https://github.com/microsoftgraph/security-api-solutions/tree/master/Playbooks).
- Support for sending [threat indicators](/graph/api/resources/security-api-overview?view=graph-rest-beta#threat-indicators-preview) to Microsoft Defender ATP to block or alert on threats using their own intelligence sources. Integrations with partners like ThreatConnect enable customers to send indicators directly from threat intelligence and automation solutions. 

### Notifications
- [Create and send notifications](/graph/api/user-post-notifications?view=graph-rest-beta) to all app clients on all device endpoints that a user is signed in to, without having to manage user-delegated permissions.
- Use [target policy endpoints](/graph/api/resources/targetpolicyendpoints?view=graph-rest-beta) on user [notifications](/graph/api/resources/notification?view=graph-rest-beta) to specifically target notifications for the Windows, iOS, Android, or WebPush platform.
- Specify a [fall back policy](/graph/api/resources/fallbackpolicy?view=graph-rest-beta) on notifications for iOS endpoints, to send high-priority raw notifications that might not be delivered to devices otherwise due to platform specific restrictions, such as battery saver mode.

 
### PowerShell SDK 
Developers and IT professionals can note the coming of the [Microsoft Graph Powershell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell), which will generate modules that contain cmdlets to make Microsoft Graph REST API requests.

## September 2019: New and generally available

### Calendar, mail, and group
[Get the raw content of a file, or the MIME content of an item](/graph/api/attachment-get?view=graph-rest-1.0#get-the-raw-contents-of-a-file-or-item-attachment) that has been added as an [attachment](/graph/api/resources/attachment?view=graph-rest-1.0) to an [event](/graph/api/resources/event?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), or group [post](/graph/api/resources/post?view=graph-rest-1.0).

### Calendar, mail, Outlook task, personal contact
Use the [translateExchangeId](/graph/api/user-translateexchangeids?view=graph-rest-1.0) function to convert an Outlook item ID between supported [formats](/graph/api/user-translateexchangeids?view=graph-rest-1.0#exchangeidformat-values), including the Microsoft Graph default ID format and immutable ID format. 

The following resources support ID format conversion:

- [attachment](/graph/api/resources/attachment?view=graph-rest-1.0)
- [contact](/graph/api/resources/contact?view=graph-rest-1.0)
- [event](/graph/api/resources/event?view=graph-rest-1.0)
- [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0)
- [message](/graph/api/resources/message?view=graph-rest-1.0)
- [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-1.0)

### Mail
[Get the MIME content of a message](outlook-get-mime-message.md).

### Microsoft Graph Toolkit
Use the [Microsoft Graph Toolkit](toolkit/overview.md) to develop production apps that offer a consistent Microsoft 365 look-and-feel, and save time in authenticating and accessing data from Microsoft Graph.

## September 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [September](changelog.md#september-2019) updates

### Files
- Enhanced synchronization support:

  - Use the new **pendingOperations** property to identify operations that may affect the binary content of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta).
  - [Restore](/graph/api/driveitem-restore?view=graph-rest-beta) a deleted **driveItem**. 
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file?view=graph-rest-beta) data security and integrity.
- Get or set the orientation of a [photo](/graph/api/resources/photo?view=graph-rest-beta). Setting is supported on OneDrive Personal.

### Identity and access
- Use the new **identities** property and get the identities that a [user](/graph/api/resources/user?view=graph-rest-beta) can use to sign in to an account. Identities can be provided by organizations, or social identity providers such as Facebook, Google, and Microsoft.
- Incremental enhancements for [synchronizing identities](/graph/api/resources/synchronization-overview?view=graph-rest-beta) in a cloud application for a tenant:

  - Store settings for a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta)
  - Specify a reason to impose [quarantine](/graph/api/resources/synchronization-quarantine?view=graph-rest-beta) on a synchronization job

### Teamwork
Use the **General** channel of a [team](/graph/api/resources/team?view=graph-rest-beta), or customize [member settings](/graph/api/resources/teammembersettings?view=graph-rest-beta) to let team members create private channels in the **team**.

### Users
- Get or update the identities with which a [user](/graph/api/resources/user?view=graph-rest-beta) can sign in to an account. These identities can be provided by business organizations, or by social identity providers such as Facebook, Google, and Microsoft.
- Get or update a user's preferred date and time format [settings for the mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta).


## August 2019: New and generally available 

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-1.0) about deleted item count and size.
- Track Microsoft 365 group IDs when [getting group activity details](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-1.0).
- Track the owner principal name when getting [OneDrive usage account detail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-1.0) and [SharePoint site usaged detail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0).
- Get the number of active and inactive users on Microsoft 365, when [getting a report on user counts per Microsoft 365 service](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-1.0).

### Security
- Use the new [Microsoft Graph security API add-on for Splunk](https://aka.ms/graphsecuritysplunkaddon) to stream security alerts and insights from many partner products into Splunk, enabling easier real-time correlation of their security data. See the [announcement](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Introducing-the-new-Microsoft-Graph-Security-API-add-on-for/ba-p/815972) for more information. 
- [See a list of other solutions and connectors](security-integration.md) built by Microsoft or by Microsoft partners that connect with the security API and let you work with data in a unified format.


## August 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [August](changelog.md#august-2019) updates

### Education
- Associate a [teacher](/graph/api/resources/educationuser?view=graph-rest-beta) or [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta) with a [grading rubric](/graph/api/resources/educationrubric?view=graph-rest-beta) to account for specific qualities and levels in assignments. An example of a quality is spelling and grammar, and examples of levels are "good" and "poor". You can further associate points and weights to the rubric. For more information, see [education rubric overview](education-rubric-overview.md).
- Evaluate an assignment and present the results in terms of [feedback](/graph/api/resources/educationfeedbackoutcome?view=graph-rest-beta), a [numeric grade](/graph/api/resources/educationpointsoutcome?view=graph-rest-beta), or [rubric](/graph/api/resources/educationrubricoutcome?view=graph-rest-beta).

### Files
Up till this point, you have been able to [follow](/graph/api/driveitem-follow?view=graph-rest-beta) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) for convenient access, or for faciliating actions such as move, copy, and save-as. You can now use the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-beta) action to stop following such drive items.

### Identity and access
- Providers of role-based access control (RBAC) can [manage roles](/graph/api/resources/rolemanagement?view=graph-rest-beta) in Azure Active Directory, by [defining role actions](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta) that can be performed on specific resources, and [assigning roles](/graph/api/resources/unifiedroleassignment?view=graph-rest-beta) to users based on such role definitions, giving them the corresponding access to those resources.
- Administrators can [list access reviews](/graph/api/accessreview-list?view=graph-rest-beta) to efficiently facilitate reviewing group memberships, access to enterprise applications, and role assignments. Regular access reviews make sure only the appropriate people have continued access to resources in specific ways.

### Social and workplace intelligence
End users have been able to use the Microsoft 365 [MyAnalytics](social-intel-concept-overview.md#why-integrate-with-document-based-insights) app to get insights on managing time, collaboration at work, and work-life balance. Now, you can use the [analytics API](/graph/api/resources/social-overview?view=graph-rest-beta#help-users-gain-insights-into-their-work-patterns) to integrate data on time spent on work activities such as calls, chats, and email, to help improve a user's productivity and wellbeing. 


## July 2019: New and generally available 

### Example code snippets
There are now Objective-C code snippets in all API topics in the v1.0 and beta references. See the Objective-C example for [getting an event](/graph/api/event-get?view=graph-rest-1.0&tabs=objective-c#example).

### Group
- Use the [validateProperties](/graph/api/group-validateproperties?view=graph-rest-1.0) function to make sure the display name or mail nickname of an existing Microsoft 365 group complies with naming policies.
- Alternatively, before creating the group, you can use the [validateProperties](/graph/api/directoryobject-validateproperties?view=graph-rest-1.0) function for a [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-1.0) to validate the names first.

### Identity and access
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-1.0) and related resources such as [subscribed SKUs](/graph/api/resources/subscribedsku?view=graph-rest-1.0).
- Use [new delegated and application permissions](permissions-reference.md#role-management-permissions), _RoleManagement.Read.Directory_ and _RoleManagement.ReadWrite.Directory_, for role-based access control (RBAC) for your company's directory:

  - Use the read/write permission to first [activate](/graph/api/directoryrole-post-directoryroles?view=graph-rest-1.0) a directory role. 
  - With the role activated, you can use the read permission to [read directory roles](/graph/api/directoryrole-list?view=graph-rest-1.0), [list role members](/graph/api/directoryrole-list-members?view=graph-rest-1.0), and [list directory role templates](/graph/api/directoryroletemplate-list?view=graph-rest-1.0). 
  - You can also use the read/write permission to [add](/graph/api/directoryrole-post-members?view=graph-rest-1.0) and [remove](/graph/api/directoryrole-delete-member?view=graph-rest-1.0) role members.


## July 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Calendar 
Use the new [places API](/graph/api/resources/place?view=graph-rest-beta) to make use of rich location types such as [room](/graph/api/resources/room?view=graph-rest-beta) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta), as set up by Exchange Online administrators.

### Devices and apps
Intune [July](changelog.md#july-2019) updates

### Files 
Apply expiration date/time or password when [creating a sharing link](/graph/api/driveitem-createlink?view=graph-rest-beta) to a file, folder, or some other [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta).

### Identity and access
- Use [new application permission](./permissions-reference.md#access-reviews-permissions) _AccessReview.ReadWrite.Membership_ for CRUD operations on [access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta). 
- Use [new delegated and application permissions](permissions-reference.md#administrative-units-permissions), _AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_, to respectively read or write (including create, update, delete, or manage membership) [administrative unit](/graph/api/resources/administrativeunit?view=graph-rest-beta) resources.
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-beta) and related resources such as a [subscribed SKU](/graph/api/resources/subscribedsku?view=graph-rest-beta).
- Use the new [discover](/graph/api/directorydefinition-discover?view=graph-rest-beta) function to find the latest directory [synchronization schema](/graph/api/resources/synchronization-synchronizationschema?view=graph-rest-beta), so as to sync directory objects, attributes, and their types to an app.
- Use [feature rollout policy](/graph/api/resources/featureRolloutPolicy?view=graph-rest-beta) to help tenant administrators to pilot features to specific groups before enabling them for entire organization.

### Mail
Use more granular application permission, _Mail.ReadBasic.All_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Now applicable to [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta) and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta) and **mailFolder**.

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta) about deleted item count and size.

### Teamwork
- [Install](/graph/api/user-add-teamsappinstallation?view=graph-rest-beta), [uninstall](/graph/api/user-delete-teamsappinstallation?view=graph-rest-beta), [upgrade](/graph/api/user-upgrade-teamsappinstallation?view=graph-rest-beta), and [list installed Microsoft Teams apps](/graph/api/user-list-teamsappinstallation?view=graph-rest-beta) for a user.
- Use app-only access to read channel messages, replies to channel messages, and messages in a chat. [Request and get approval](teams-protected-apis.md) for such access.

## May - June, 2019: New and generally available

### Calendar, mail, and personal contacts
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [blog announcement](https://developer.microsoft.com/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and access Outlook email search results. See related [blog announcement](https://developer.microsoft.com/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

### Postman
As an alternative to Graph Explorer, try the Microsoft Graph API on the [Microsoft Graph Postman collection](use-postman.md) to learn the API behavior and speed up app development.

### Tutorials
Try the new [tutorial to build a Java console app](/graph/tutorials/java) to get information about a user calendar.

### User
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) all issued refresh tokens for a user. This is usually used to prevent apps on a lost or stolen device from accessing an organization's data.


## May - June, 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta).

### Group
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta) to help protect sensitive data of a Microsoft 365 group and meet compliance policies. These labels are [assignedLabel](/graph/api/resources/assignedlabel?view=graph-rest-beta) objects, published by administrators in Microsoft 365 Security & Compliance Center, as part of Microsoft Information Protection capabilities. 

### Identity and access
- Get an instance of an [application](/graph/api/resources/applicationtemplate?view=graph-rest-beta), or add an instance from the Azure AD application gallery into your directory as a template.
- Get a log of all directory [provisioning events](/graph/api/resources/provisioningobjectsummary?view=graph-rest-beta) in a tenant.
- Get information about [detected user or sign-in risks](/graph/api/resources/riskdetection?view=graph-rest-beta) in an Azure AD environment. This risk detection functionality is part of Azure AD Identity Protection.

### Mail
Use more granular delegated permission, _Mail.ReadBasic_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Available to read methods of [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta), and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta) and **mailFolder**.

### Microsoft Graph toolkit
The [Microsoft Graph toolkit](./toolkit/overview.md) is a set of framework-agnostic web components and helpers that provides convenience to authenticate and access data in Microsoft Graph. Because the Microsoft Graph toolkit is in preview status, use toolkit providers and components in only non-production apps.

### Reports
- Get [reports on the authentication methods](/graph/api/resources/authenticationmethods-usage-insights-overview?view=graph-rest-beta) adopted by users in an organization, such as self-service password rest and multi-factor authentication (MFA).

### Sites
Let users [follow](/graph/api/site-follow?view=graph-rest-beta) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta) SharePoint sites.

### Teamwork
- Host [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).
- Support [configuring](/graph/api/resources/teamdiscoverysettings?view=graph-rest-beta) how a private team can be discovered.


## January - April, 2019: New and generally available

[Microsoft Graph data connect](data-connect-concept-overview.md)

### Calendar
[Get free-busy schedule](outlook-get-free-busy-schedule.md)

### Identity and access
[Identity providers](/graph/api/resources/identityprovider?view=graph-rest-1.0)
[Improved auth guides](./auth/index.yml)
[Migrating apps from Azure AD Graph to Microsoft Graph](migrate-azure-ad-graph-planning-checklist.md)

### SDKs
[SDK guides](/sdks/sdks-overview.md)
API snippets ([example](/graph/api/user-get?view=graph-rest-1.0&tabs=cs#sdk-sample-code))

### Security
[Tenant secure score](/graph/api/resources/securescore?view=graph-rest-1.0)

## January - April, 2019: New in preview

### Calendar, group, mail, to-do tasks
[Get raw/MIME content of file or item attachments](/graph/api/attachment-get?view=graph-rest-beta#get-the-raw-contents-of-a-file-or-item-attachment) in an event, message, Outlook task, or group post

### Change notifications
[Reduce missing change notifications for Outlook resources](webhooks-outlook-authz.md)

### Devices and apps
- Intune [January](changelog.md#january-2019) updates 
- Intune [February](changelog.md#february-2019) updates
- Intune [March](changelog.md#march-2019) updates
- Intune [April](changelog.md#april-2019) updates

### Files
[Sharing invitation](/graph/api/driveitem-invite?view=graph-rest-beta) includes expiration and password

### Financials
[Dynamics 365 Business Central](dynamics-business-central-concept-overview.md)

### Identity and access
[Access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) support application permissions
[Audit and sign-in logs](/graph/api/resources/azure-ad-auditlog-overview?view=graph-rest-beta)
[Custom sign-in and sign-up in Azure AD B2C](/graph/api/resources/trustframeworkpolicy?view=graph-rest-beta)
[Risky user](/graph/api/resources/riskyuser?view=graph-rest-beta) and [history](/graph/api/resources/riskyuserhistoryitem?view=graph-rest-beta)

### Mail
[Get MIME content of messages](outlook-get-mime-message.md)

### Reports
[Application sign-in reports](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta)

### Security
[Security actions](/graph/api/resources/securityaction?view=graph-rest-beta)
[Threat indicators](/graph/api/resources/tiindicator?view=graph-rest-beta)

### Teamwork
[1:1 chats](/graph/api/resources/chat?view=graph-rest-beta)
[Shifts management](/graph/api/resources/shift?view=graph-rest-beta)

## See also
- See [what's currently new](whats-new-overview.md) in Microsoft Graph.
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
