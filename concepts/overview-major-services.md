# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Office 365, Windows 10, and enterprise mobility and security services in Microsoft 365. Additionally, you can leverage social and security intelligence to boost user productivity, creativity, and team collaboration, and to protect business resources and users' data. 

Some services in Microsoft Graph make their debut there, others have been well-known as standalone services and are now converging in Microsoft Graph. Their API sets follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are now accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The major services and features are listed below by category. 

<!-- Per M365 enterprise categorization on https://www.microsoft.com/en-us/microsoft-365/enterprise/home

Office applications
Workbooks and charts - Excel
Email and calendar - Outlook
Files - OneDrive
Notes - OneNote

Business applications
(Bookings)

Collaboration services
Microsoft Teams
SharePoint
Planner
(Yammer)

Education
(https://www.microsoft.com/en-us/education/buy-license/microsoft365/default.aspx)
"Empower educators to unlock creativity, promote teamwork, and provide a simple and safe experience in a single, affordable solution built for education."

Identity and access management
AAD
Identity provider
(https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/identityprovider)
Invitation manager (https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/invitation)
Privileged Identity Management(https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/privilegedidentitymanagement_root)(https://docs.microsoft.com/en-us/azure/active-directory/active-directory-privileged-identity-management-configure)

Security
- Intelligent threat detection 
AAD risk detection (https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/identityriskevent)
(https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-risk-events)

Mobile device and app management
(Slides in community call https://www.slideshare.net/OfficeDev/microsoft-graph-community-call-2618)
Application, device, and data security
Protects data whether employees use store apps, web apps, or LOB apps
Protects data whether employees use Windows PC, Android, iOS or OSX devices
... whether data is stored in the cloud, on device or on-premises.
Microsoft Intune

Cross-device experiences
Project Rome

Social intelligence (analytics)
Insights
People API

Office 365 service usage reports
Reports  


-->

## Productivity

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calendar | Outlook  | Calendaring client for users to set up appointments and meetings on the web, mobile and desktop devices. Calendar is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and contacts. |  |
| Files | OneDrive | Manage and share user files on OneDrive, OneDrive for Business, and SharePoint document libraries. | [Files API overview](../api-reference/v1.0/resources/onedrive.md) |
| Mail | Outlook | Email client for users to communicate, organize messages, and manage priorities in their workflows, on the web, mobile and desktop devices. Mail is part of the Outlook messaging communication hub in Office 365 that also lets users manage contacts and schedule meetings. | [Outlook mail overview](../concepts/outlook-mail-concept-overview.md) |
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote overview](../concepts/integrate_with_onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and schedule meetings.  |  |
| To-do tasks (preview) | Outlook | Tracks the start, due, and actual completion dates of to-do work items, and their recurrence, reminders, and status. Available on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and contacts, and schedule meetings. |  |
| Workbooks and charts | Excel | Spreadsheet client that lets users do complex calculations, track, analyze, and visualize data, and do professional reporting. | [Excel workbooks and charts overview](../concepts/excel-content-overview.md) |

## Collaboration

<!-- Want to update links to concept overviews as they are created over time. 
-->
|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Groups | Azure AD, OneDrive, OneNote, Outlook, Planner | Office 365 groups for users to share conversations, files, notes, calendar, and plans. | [Groups API overview](../api-reference/v1.0/resources/groups-overview.md) |
|Plans and tasks | Planner | Enables Office 365 groups to create plans, assign tasks, and track progress. | [Planner API overview](../api-reference/v1.0/resources/planner_overview.md) |
| Shared sites and content  | SharePoint | Web-based platform for users and Office 365 groups to share and manage content (including lists, files, and notes). | [SharePoint API overview](../api-reference/v1.0/resources/sharepoint.md) | 
|Teamwork (preview) |  Microsoft Teams | Chat-based workspace for teams to share files, notes, calendar, and plans. | [Microsoft Teams API overview](../api-reference/beta/resources/teams_api_overview.md) |


## Identity and access management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users and identity management | Azure AD | Manages key directory resources such as users, groups, administrative units, applications, and devices. | [Azure Active Directory API overview](../api-reference/beta/resources/azure_ad_overview.md)  |
| Invitation manager | Azure AD | Creates an invitation to an external user to join an organization. | [invitation resource type](../api-reference/v1.0/resources/invitation.md) |
| Privileged identity management (preview) | Azure AD | Manages, controls, and monitors access within an organization.  | [Azure AD privileged identity management](../api-reference/beta/resources/privilegedidentitymanagement_root.md)  |


## Security intelligence

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Identity risk detection | Azure AD | Get information about risk events in user accounts detected by adaptive machine learning. | [Azure AD identity protection](../api-reference/beta/resources/identityprotection_root.md)  |


## Enterprise mobililty management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Enterprise mobility management | Intune | Provides security tools for organizations and their employees to access company data irrespective of the data location (cloud, on-premises, or on device), device, or application type (store, web, or LOB apps). | [Intune API overview](../api-reference/v1.0/resources/intune_graph_overview.md) |


## Usage reports and audit logs

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Azure AD, OneDrive, Outlook, SharePoint, and more | Gets activity and usage information of a supported service. | [Service usage reports overview](../api-reference/v1.0/resources/report.md) |


## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Schools, enrolments, and assignments (preview) | Azure AD, Education | Empowers educators to unlock creativity, promote teamwork, and provide a simple and safe experience in a single, affordable solution built for education. | [Education API overview](../api-reference/beta/resources/education-overview.md)


## Social intelligence and analytics

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Insights (preview) | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [insights resource type](../api-reference/beta/resources/insights.md)  |
| People | OneDrive, Outlook, SharePoint | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns, and business relationships.  | [person resource type](../api-reference/beta/resources/person.md) |


## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Project Rome (preview) | Windows | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Project Rome API overview](../api-reference/beta/resources/project_rome_overview.md) |


## Next steps

<!-- Need to update the destination page titles and URLs as Matt's v-team finalize on the examples and featured scenarios content 
-->

1. See examples of creative solutions built on top of services in Microsoft Graph that solve real customer problems.
2. Look under **Learn** in the table of contents to read about services and features that _you_ can leverage in your scenarios.
3. Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
4. Use the [quick start](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.