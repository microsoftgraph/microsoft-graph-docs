# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Office 365, Windows 10, and Enterprise Mobility and Security services in Microsoft 365. Additionally, you can take advantage of security and social intelligence to boost user productivity, creativity, and team collaboration, and to protect business resources and users' data. 

## Users and groups

At the core of Microsoft Graph are the concepts of the user and group. 

The user is the focal point whose identity is protected and access is well managed. It's the user's data that drives businesses. Microsoft Graph services makes this data available to businesses in rich contexts, real-time updates, and deep insights.

Groups form the fundamental fabric enabling user collaboration, and integration with other services to support richer scenarios in task planning, teamwork, education, and more.

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users | Azure AD and most productivity, collaboration, intelligence, and education services | A core focus of Microsoft Graph with user-centric functionality across most services built around it. | [Microsoft Graph users overview](../concepts/azuread-users-concept-overview.md)|
|Groups | Azure AD, OneDrive, OneNote, Outlook, Planner | Office 365 groups provide the fundamental collaborative unit for users to share conversations, files, notes, calendar, and plans. | [Office 365 groups overview](../concepts/office365-groups-concept-overview.md) |


## Services and features

Some services in Microsoft Graph make their debut there, others have been well-known as standalone services and are now converging in Microsoft Graph. Their API sets follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are now accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The following are the major services and features, listed by category. 

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

## Identity and access management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Identity and access management | Azure AD | Creates and manages directory resources such as users, groups, and applications. Manages access to resources and data. | [Azure AD identity and access management overview](../concepts/azuread-identity-access-management-concept-overview.md)  |


## Productivity

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calendar | Outlook  | Lets users set up appointments and meetings on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and contacts. | [Outlook calendar overview](../concepts/outlook-calendar-concept-overview.md)  |
| Files | OneDrive and SharePoint | Manages and shares user files on OneDrive and SharePoint. | [OneDrive files storage overview](../concepts/onedrive-concept-overview.md) |
| Mail | Outlook | Lets users communicate, organize messages, and manage priorities in their workflows, on the web, mobile and desktop devices. It is part of the Outlook communication hub in Office 365 that also lets users manage contacts and schedule meetings. | [Outlook mail overview](../concepts/outlook-mail-concept-overview.md) |
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote API overview](../concepts/integrate_with_onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and schedule meetings.  | [Outlook personal contacts overview](../concepts/outlook-contacts-concept-overview.md) |
| To-do tasks (preview) | Outlook | Lets users track the start, due, and actual completion dates of to-do work items, and their recurrence, reminders, and status. It is part of the Outlook communication hub in Office 365 that also lets users manage emails and contacts, and schedule meetings. | [Outlook to-do tasks overview](../concepts/outlook-tasks-concept-overview.md)  |
| Workbooks and charts | Excel | Lets users use Excel spreadsheets to do complex calculations, track, analyze, and visualize data, and generate professional reports. | [Excel workbooks and charts overview](../concepts/excel-concept-overview.md) |


## Collaboration

<!-- Want to update links to concept overviews as they are created over time. 
-->
|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Sites and lists  | SharePoint | Web-based platform for users and Office 365 groups to share, organize, manage, and discover content (including lists, files, and notes). | [SharePoint sites and content overview](../concepts/sharepoint-concept-overview.md) | 
|Tasks and plans | Planner | Enables users in Office 365 groups to create plans, assign tasks, and track progress. | [Planner plans and tasks overview](../concepts/planner-concept-overview.md) |
|Teamwork (preview) |  Microsoft Teams | Digital hub and chat-based workspace for teams to share files, notes, calendar, and plans. | [Microsoft Teams teamwork overview](../concepts/teams-concept-overview.md) |


## Social intelligence and analytics

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Social intelligence: people | OneDrive, Outlook, SharePoint | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns, and business relationships.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md) |
| Social intelligence: document insights (preview) | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md)  |


## Device management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Devices and apps | Intune | Enrolls and configures devices, and manages mobile applications in your organization. | [Intune devices and apps overview](../concepts/intune-concept-overview.md) |


## Security

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Security: identity risk detection (preview) | Azure AD | Gets information about risk events in user accounts detected by adaptive machine learning. | [Security in Microsoft Graph](../concepts/security-concept-overview.md)  |
| Security: security graph (preview) | Azure AD | Provides a unified gateway to security insights and actions across Microsoft solutions. | [Security in Microsoft Graph](../concepts/security-concept-overview.md) |


## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cross-device app continuance | Cross-device experiences | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Overview for cross-device experiences](../concepts/cross-device-concept-overview.md) |


## Usage reports

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Azure AD, OneDrive, Outlook, SharePoint, and more | Gets activity and usage information of a supported service. | [Usage reports overview](../concepts/reportroot-concept-overview.md) |


## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Education | Azure AD, Education | Provides information relevant for education scenarios, including schools, classes, students, teachers, and assignment info. Enables ISVs to build applications for the classroom that save teachers time and promote teamwork and collaboration.  | [Education overview](../concepts/education-concept-overview.md) |


## Next steps

<!-- Need to update the destination page titles and URLs as Matt's v-team finalize on the examples and featured scenarios content 
-->

1. See examples of creative solutions built on top of services in Microsoft Graph that solve real customer problems.
2. Look under **Learn** in the table of contents to read about services and features that _you_ can leverage in your scenarios.
3. Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
4. Use [quick starts](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.