# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Office 365, Windows 10, and Enterprise Mobility and Security services in Microsoft 365. Additionally, it offers security and social intelligence that can boost user productivity, creativity, and team collaboration, and protect business resources and users' data. 

## Users and groups

At the core of Microsoft Graph are the concepts of the user and group. 

A _user_ in Microsoft Graph is one among the millions who use Microsoft 365 cloud services. It is the focal point whose identity is protected and access is well managed. The user's data is what drives businesses. Microsoft Graph services makes this data available to businesses in rich contexts, real-time updates, and deep insights, and, always only with the appropriate permissions.

An Office 365 _group_ is the fundamental entity that lets users collaborate. It integrates with other services, enabling richer scenarios in task planning, teamwork, education, and more. 

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users | Azure AD and most productivity, collaboration, intelligence, and education services | The user is a core focus of Microsoft Graph, around which many Microsoft Graph services build user-centric functionality. | [Overview of users in Microsoft Graph](../concepts/azuread-users-concept-overview.md)|
|Groups | Azure AD, OneDrive, OneNote, Outlook, Planner | An Office 365 group provides the fundamental collaborative unit for users to share conversations, files, notes, calendar, plans, and more. | [Overview of Office 365 groups in Microsoft Graph](../concepts/office365-groups-concept-overview.md) |

## Connecting users' data, Microsoft 365 services, and your apps

Starting with users and groups at the core, Microsoft Graph forms a network of Microsoft 365 services and features that manage, protect, and extract data to support a wide range of scenarios. Microsoft Graph lets you access this wealth of user data while always respecting proper authorization.

![Microsoft Graph connects you to users' data](images/microsoft-graph-connects-users-data.png)

### Services and features

Some services in Microsoft Graph make their debut there, others have been well-known as standalone services and are now converging in Microsoft Graph. Their API sets follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are now accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The rest of this article lists the major services and features by category. 


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
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote notes overview](../concepts/integrate_with_onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Office 365 that also lets users manage emails and schedule meetings.  | [Outlook personal contacts overview](../concepts/outlook-contacts-concept-overview.md) |
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
| Social intelligence: people | Azure AD, Outlook, SharePoint, and more | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns, and business relationships.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md) |
| Social intelligence: document insights (preview) | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [Social intelligence in Microsoft Graph](../concepts/social-intel-concept-overview.md)  |


## Device management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
|Devices and apps | Intune | Enrolls and configures devices, and manages mobile applications in your organization. | [Intune devices and apps overview](../concepts/intune-concept-overview.md) |


## Security

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Security integration (preview) | Azure AD Identity Protection, Azure Security Center | Provides a unified gateway to security insights and actions across Microsoft and ecosystem partners. | [Security in Microsoft Graph](../concepts/security-concept-overview.md) |
| Identity protection (preview) | Azure AD | Gives access to sign-in and account risk data for users in Azure AD. | [Security in Microsoft Graph](../concepts/security-concept-overview.md)  |



## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cross-device experiences | Activity feed, device relay | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Overview for cross-device experiences](../concepts/cross-device-concept-overview.md) |


## Usage reports

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Microsoft Teams, OneDrive, Outlook, SharePoint, Skype for Business, Yammer | Gets activity and usage information of a supporting service. | [Usage reports overview](../concepts/reportroot-concept-overview.md) |


## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Education | Azure AD, Education | Provides information relevant for education scenarios, including schools, classes, students, teachers, and assignment info. Enables ISVs to build applications for the classroom that save teachers time and promote teamwork and collaboration.  | [Education overview](../concepts/education-concept-overview.md) |


## Business applications

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Customer booking (preview) | Microsoft Bookings | Targets small businesses to enable their customers to book services directly on the web or Facebook. Lets business operators manage customer preferences, services and pricing, staff lists and schedules, and other common business information. | [Microsoft Bookings API overview](../concepts/booking-concept-overview.md) |


## Next steps

<!-- Need to update the destination page titles and URLs as Matt's v-team finalize on the examples and featured scenarios content 
-->

- See [examples](https://developer.microsoft.com/en-us/graph/examples) of creative solutions built on top of services in Microsoft Graph that solve real customer problems.
- Look under **Learn** in the table of contents to read about services and features that _you_ can use in your scenarios.
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Use the [quick starts](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.