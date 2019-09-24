---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

Did you know some new features in Microsoft Graph originate as popular requests from the developer community? 

The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 

Below, see highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For details of API updates, see the [September](changelog.md#september-2019) and [August](changelog.md#august-2019) sections of the API changelog. 


## September 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Users
- Get or update a user's preferred date and time format [settings for the mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta).

## August 2019: New and generally available 

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-1.0) about deleted item count and size.
- Track Office 365 group IDs when [getting group activity details](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-1.0).
- Track the owner principal name when getting [OneDrive usage account detail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-1.0) and [SharePoint site usaged detail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0).
- Get the number of active and inactive users on Office 365, when [getting a report on user counts per Office 365 service](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-1.0).

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
End users have been able to use the Office 365 [MyAnalytics](social-intel-concept-overview.md#why-integrate-with-document-based-insights-preview) app to get insights on managing time, collaboration at work, and work-life balance. Now, you can use the [analytics API](/graph/api/resources/social-overview?view=graph-rest-beta#help-users-gain-insights-into-their-work-patterns) to integrate data on time spent on work activities such as calls, chats, and email, to help improve a user's productivity and wellbeing. 


## Want to stay in the loop?
- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

