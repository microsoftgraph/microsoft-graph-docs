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


## June 2020: New and generally available

### Cloud communications | Online meeting
- Use the `Accept-Language` HTTP header when [creating an online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-1.0) to provide locale-based join information.
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-1.0) to return an online meeting that has a specified **externalId** value, or create one if none already exists, to streamline embedding the resultant meeting in a third-party calendar.

### Security
- Track the following as properties of an [alert](/graph/api/resources/alert?view=graph-rest-1.0):
  - IDs of incidents related to the alert.
  - Identify a [resource](/graph/api/resources/securityResource?view=graph-rest-1.0#securityresourcetype-values) as attacked or as a related resource in the alert.
  - Specify the source and destination locations of a [network connection](/graph/api/resources/networkconnection?view=graph-rest-1.0) related to the alert.

### Teamwork
Use the delegated permission [AppCatalog.Read.All](/graph/permissions-reference#appcatalog-resource-permissions) to list [apps](/graph/api/resources/teamsapp?view=graph-rest-1.0) from the Microsoft Teams app catalog.


## June 2020: New in preview only
### Cloud communications | Presence
[Get the presence status](/graph/api/presence-get?view=graph-rest-beta) of all the users in an organization, or a specific user in the organization.

### Identity and access
- IT professionals can use [connector](/graph/api/resources/connector?view=graph-rest-beta) resources that are lightweight agents to connect to [Azure AD Application Proxy](/azure/active-directory/manage-apps/what-is-application-proxy), and [publish on-premises web applications apps externally](/graph/api/resources/onpremisespublishing?view=graph-rest-beta), so that remote users of their organizations can access these apps in a secure manner.
- Manage an [authentication policy](/graph/api/resources/authenticationflowspolicy?view=graph-rest-beta) at a tenant level, to enable or disable [self-service sign-up](/graph/api/resources/selfservicesignupauthenticationflowconfiguration?view=graph-rest-beta) of external users.

## May 2020: New and generally available

### Calendar | Place
GA of the [places API](/graph/api/resources/place) in v1.0 - use this API in production apps to get, update, or delete a [room](/graph/api/resources/room) or [room list](/graph/api/resources/roomlist) in a tenant. [Find out more](outlook-calendar-concept-overview.md#build-apps-with-location-awareness-and-provide-intelligent-context) about the places API.

### Change notifications
- Subscribe to change notifications in Microsoft Cloud for US Government.

### Cloud communications | Call records
- GA of the [call records API](/graph/api/resources/callrecords-api-overview?view=graph-rest-1.0) - use the [callRecord](/graph/api/resources/callrecord?view=graph-rest-1.0) resource to get the metadata of calls and online meetings on Microsoft Teams and Skype.
- Subscribe to [change notifications](/graph/webhooks) for changes to all **callRecord** resources in an organization.
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
- [Paging](/graph/sdks/paging)
- [Batching](/graph/sdks/batch-requests)
- [Uploading large files on OneDrive](/graph/sdks/large-file-upload)
- [Customizing SDK service client through HTTP middleware components](/graph/sdks/customize-client).

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
- When creating an Office 365 [group](/graph/api/resources/group?view=graph-rest-beta), configure the behaviors of the group by specifying them in the **resourceBehaviorOptions** property. For example, allow members to post, subscribe new members to conversation, disable welcome email, and hide the group in Outlook experiences.
- Specify the resources to provision in the **resourceProvisioningOptions** property that are normally not part of the default [group](/graph/api/resources/group?view=graph-rest-beta) creation. Currently supported is provisioning a group as a [team](/graph/api/resources/team?view=graph-rest-beta) with Microsoft Teams capabilities.

### Identity and access
- Apply OData system query options (`$count`, `$filter`, `$search`) when getting collections of entities that are derived from [directoryObject](). 
You can [search for specific tokens](/graph/query-parameters?#using-search-on-directory-object-collections) in the **displayName** and **description** properties 
of these entities, and use OData cast to trim **directoryObject** results to certain derived types. See more details in 
[Build advanced queries in Microsoft Graph with $count, $filter, $search, and $orderby](https://developer.microsoft.com/en-us/graph/blogs/build-advanced-queries-with-count-filter-search-and-orderby/).
- As part of the [identity protection API](/graph/api/resources/identityprotection-root?view=graph-rest-beta), use the **riskEventType** property to [get the type of risk detected](/graph/api/riskdetection-get?view=graph-rest-beta), or [get the type of risk in a user's history](/graph/api/riskyuser-list-history?view=graph-rest-beta). Do not use the **riskType** property as it has been deprecated.
- Specify client application types in the **clientAppTypes** property of the [condition set](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) for a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta).
- Use the delegated permission of `EntitlementManagement.Read.All` to allow an app to read access packages and related entitlement management resources on behalf of the signed-in user.
- Use the delegated or application permissions of `Application.Read.All` and `Application.ReadWrite.All` to [list applications](/graph/api/application-list?view=graph-rest-beta) in an organization.
- Control authorization settings in Azure AD using the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) resource type.

### Teamwork
- Teams apps that [support single sign-on (SSO)](/microsoftteams/platform/tabs/how-to/authentication/auth-aad-sso) can specify the `WebApplicationInfo.id` from the Teams app manifest, in the **azureADAppId** property of the [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta).
- Use [finer grained permissions](/graph/permissions-reference#teams-resource-specific-consent-permissions) to access [team](/graph/api/resources/team?view=graph-rest-beta) and [channel](/graph/api/resources/channel?view=graph-rest-beta) resources.




## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

