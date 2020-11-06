---
title: "Major services and features in Microsoft Graph"
description: "Microsoft Graph enables you to integrate with the best of Microsoft 365, Windows 10, and Enterprise Mobility and Security services in Microsoft 365, using REST APIs and client libraries. Additionally, it offers security and social intelligence that can boost user productivity, creativity, and team collaboration, and protect business resources and users' data. "
author: "angelgolfer-ms"
localization_priority: Priority
ms.custom: scenarios:getting-started
---

# Major services and features in Microsoft Graph

Microsoft Graph enables you to integrate with the best of Microsoft 365, Windows 10, and Enterprise Mobility and Security services in Microsoft 365, using REST APIs and client libraries. Additionally, it offers security and intelligence that can boost user productivity, creativity, and team collaboration, and protect business resources and users' data. 

## Users and groups

At the core of Microsoft Graph are the concepts of the user and group. 

A _user_ in Microsoft Graph is one among the millions who use Microsoft 365 cloud services. It is the focal point whose identity is protected and access is well managed. The user's data is what drives businesses. Microsoft Graph services makes this data available to businesses in rich contexts, real-time updates, and deep insights, and, always only with the appropriate permissions.

A Microsoft 365 _group_ is the fundamental entity that lets users collaborate. It integrates with other services, enabling richer scenarios in task planning, teamwork, education, and more. 

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Users | Azure AD and most productivity, collaboration, intelligence, and education services | The user is a core focus of Microsoft Graph, around which many Microsoft Graph services build user-centric functionality. | [Overview of users in Microsoft Graph](azuread-users-concept-overview.md)|
|Groups | Azure AD, OneDrive, OneNote, Outlook, Planner | A Microsoft 365 group provides the fundamental collaborative unit for users to share conversations, files, notes, calendar, plans, and more. | [Overview of Microsoft 365 groups in Microsoft Graph](office365-groups-concept-overview.md) |

## Connecting users' data, Microsoft 365 services, and your apps

Starting with users and groups at the core, Microsoft Graph forms a network of Microsoft 365 services and features that manage, protect, and extract data to support a wide range of scenarios. Microsoft Graph lets you access this wealth of user data while always respecting proper authorization.

![Microsoft Graph connects you to users' data](images/microsoft-graph-connects-users-data.png)

### Services and features

Some services in Microsoft Graph make their debut there, others have been well-known as standalone services and are now converging in Microsoft Graph. Their API sets follow a streamlined design as detailed in the [Microsoft REST API guidelines](https://github.com/Microsoft/api-guidelines), and are now accessible through the single Microsoft Graph REST endpoint `https://graph.microsoft.com`. The rest of this article lists the major services and features by category. 


## Identity and access management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Identity and access management | Azure AD | Creates and manages directory resources such as users, groups, and applications. Manages access to resources and data. Gives customers access to sign-in and account risk data in Azure AD.| [Azure AD identity and access management overview](azuread-identity-access-management-concept-overview.md)  |


## Productivity

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Calendar | Outlook  | Lets users set up appointments and meetings on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Microsoft 365 that also lets users manage emails and contacts. | [Outlook calendar overview](outlook-calendar-concept-overview.md)  |
| Files | OneDrive and SharePoint | Manages and shares user files on OneDrive and SharePoint. | [OneDrive files storage overview](onedrive-concept-overview.md) |
| Mail | Outlook | Lets users communicate, organize messages, and manage priorities in their workflows, on the web, mobile and desktop devices. It is part of the Outlook communication hub in Microsoft 365 that also lets users manage contacts and schedule meetings. | [Outlook mail overview](outlook-mail-concept-overview.md) |
| Notes | OneNote | Lets users plan and organize ideas and information. | [OneNote notes overview](integrate-with-onenote.md) |
| Personal contacts | Outlook | Contacts manager on the web, mobile and desktop devices. It is part of the Outlook messaging communication hub in Microsoft 365 that also lets users manage emails and schedule meetings.  | [Outlook personal contacts overview](outlook-contacts-concept-overview.md) |
| Workbooks and charts | Excel | Lets users use Excel spreadsheets to do complex calculations, track, analyze, and visualize data, and generate professional reports. | [Excel workbooks and charts overview](excel-concept-overview.md) |
| To-do tasks | To Do | Lets users manage their personal tasks across work and life. It is also integrated with Outlook, Teams, Planner and Cortana which makes it the single destination for user's personal tasks in Microsoft 365 | [To Do tasks overview](todo-concept-overview.md) |

## Collaboration

<!-- Want to update links to concept overviews as they are created over time. 
-->
|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cloud communications | Microsoft Teams, Skype | Lets apps and services interact with users through various communications related features, for example, enabling bots to handle calls, integrating online meetings in line of business scenarios, showing users' presence status (preview), and looking up records for calls and online meetings (preview). | [Cloud communications overview](cloud-communications-concept-overview.md) |
| Sites and lists  | SharePoint | Web-based platform for users and Microsoft 365 groups to share, organize, manage, and discover content (including lists, files, and notes). | [SharePoint sites and content overview](sharepoint-concept-overview.md) | 
|Tasks and plans | Planner | Enables users in Microsoft 365 groups to create plans, assign tasks, and track progress. | [Planner plans and tasks overview](planner-concept-overview.md) |
|Teamwork |  Microsoft Teams | Digital hub and chat-based workspace for teams to share files, notes, calendar, and plans. | [Microsoft Teams teamwork overview](teams-concept-overview.md) |


## People and workplace intelligence

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| People | Azure AD, Outlook, SharePoint, and more | Gets information about persons as ordered by their relevance to a user, determined by the user's communication and collaboration patterns, and business relationships.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Profile (preview) | Profile | Provides a lightweight mechanism for storing and retrieving information about people within a tenant. | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Profile card customization (preview) | Profile card | Provides a lightweight mechanism for an administrator to customize the content which surfaces on the Microsoft 365 profile card within an organization. | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |
| Document insights  | Delve, OneDrive, Outlook, SharePoint | Uses advanced analytics and machine learning techniques to get documents trending around, viewed, modified, or shared by a user.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md)  |
| Analytics (preview) | MyAnalytics | Uses advanced analytics and machine-learning techniques to provide insights into how people spend their time and who they spend it with. This data can help people plan their day, gain insights into their different work patterns, and help them balance work and life.  | [People and workplace intelligence in Microsoft Graph](social-intel-concept-overview.md) |


## Device management

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cloud printing (preview) | Universal Print | Universal Print is a Microsoft 365 cloud-based print infrastructure that enables a simple, rich and secure print experience for users and reduces administrative and management effort for IT. | [Cloud printing using Universal Print API](universal-print-concept-overview.md) |
|Corp management of devices and apps | Intune | Enrolls and configures devices, and manages mobile applications in your organization. | [Intune devices and apps overview](intune-concept-overview.md) |


## Security

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Security integration | Azure AD Identity Protection, Azure Information Protection, Azure Security Center, Microsoft Cloud Application Security, Windows Defender Advanced Threat Protection, and [more](/graph/api/resources/security-api-overview?view=graph-rest-1.0) | Provides a unified gateway to security insights and actions across Microsoft and ecosystem partners. | [Security in Microsoft Graph](security-concept-overview.md) |



## Cross-device experiences

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Cross-device experiences | Activity feed, device relay | Enables app experiences that transcend a single device, and instead move with the user from device to device regardless of its type and platform. | [Overview for cross-device experiences](cross-device-concept-overview.md) |

## User notifications

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| User notifications | User notifications | Enables app experiences to build user-centric and cross-platform notification experiences including user-based fan-out, universal dismiss, and accessing notification history. | [Enabling human-centric notification experiences using Microsoft Graph notifications](notifications-concept-overview.md) |


## Usage reports

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Reports | Microsoft Teams, OneDrive, Outlook, SharePoint, Skype for Business, Yammer | Gets activity and usage information of a supporting service. | [Usage reports overview](reportroot-concept-overview.md) |


## Education

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Education | Azure AD, Education | Provides information relevant for education scenarios, including schools, classes, students, teachers, and assignment info. Enables ISVs to build applications for the classroom that save teachers time and promote teamwork and collaboration.  | [Education overview](education-concept-overview.md) |


## Business applications

|Feature     |Supporting services  |Description |More information |
|:-----------|:--------------------|:-----------|:----------------|
| Customer booking (preview) | Microsoft Bookings | Targets organizations to enable their users and customers to book services directly on the web or Facebook. Lets business providers manage customer preferences, services and pricing, staff lists and schedules, and other common business information. | [Microsoft Bookings API overview](booking-concept-overview.md) |
| Financials (preview) | Dynamics 365 Business Central | Enables management of financial data, automation and securing of the supply chain, sales management and improved customer service, management of projects, and optimization of operations with the all-in-one business management solution.| [Business Central API overview](dynamics-business-central-concept-overview.md) |


## Next steps

<!-- Need to update the destination page titles and URLs as Matt's v-team finalize on the examples and featured scenarios content 
-->

- See [examples](https://developer.microsoft.com/graph/examples) of creative solutions built on top of services in Microsoft Graph that solve real customer problems.
- Look under **Learn** in the table of contents to read about services and features that _you_ can use in your scenarios.
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Use the [quick starts](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.
