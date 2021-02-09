---
title: "Overview of Microsoft Graph"
description: "Microsoft Graph is the gateway to data and intelligence in Microsoft 365. Microsoft Graph provides a unified programmability model that you can use to take advantage of the tremendous amount of data in Microsoft 365, Enterprise Mobility + Security, and Windows 10."
author: "angelgolfer-ms"
localization_priority: Priority
ms.custom: scenarios:getting-started
---

# Overview of Microsoft Graph

Microsoft Graph is the gateway to data and intelligence in Microsoft 365. It provides a unified programmability model that you can use to access the tremendous amount of data in Microsoft 365, Windows 10, and Enterprise Mobility + Security. Use the wealth of data in Microsoft Graph to build apps for organizations and consumers that interact with millions of users.

## Powering the Microsoft 365 platform

![Microsoft Graph, Microsoft Graph data connect, and Microsoft Graph connectors enable extending Microsoft 365 experiences and building intelligent apps.](images/microsoft-graph-dataconnect-connectors-rebrand-800.png)

In the Microsoft 365 platform, three main components facilitate the access and flow of data:

- The Microsoft Graph API offers a single endpoint, `https://graph.microsoft.com`, to provide access to rich, people-centric data and insights exposed as resources of Microsoft 365 services. You can use REST APIs or SDKs to access the endpoint and build apps that support scenarios spanning across productivity, collaboration, education, people and workplace intelligence, and much more. Microsoft Graph also includes a powerful set of services that manage user and device identity, access, compliance, security, and help protect organizations from data leakage or loss.
- [Microsoft Graph connectors (preview)](/microsoftsearch/connectors-overview) work in the incoming direction, delivering data external to the Microsoft cloud into Microsoft Graph services and applications, to enhance Microsoft 365 experiences such as Microsoft Search.
- [Microsoft Graph data connect](#access-microsoft-graph-data-at-scale-using-microsoft-graph-data-connect) provides a set of tools to streamline secure and scalable delivery of Microsoft Graph data to popular Azure data stores. This cached data serves as data sources for Azure development tools that you can use to build intelligent applications.

Together, the Microsoft Graph API, connectors (preview), and data connect power the Microsoft 365 platform. With the ability to access Microsoft Graph data and other datasets to derive insights and analytics, you can extend Microsoft 365 experiences, or build unique, intelligent applications.

> [!NOTE]
> Microsoft Graph connectors is in preview. To use connectors with Microsoft Search or to build connectors, you must sign up for the [connectors preview program](/MicrosoftSearch/connectors-preview). To join in the preview program, submit the [Microsoft Graph connectors preview signup form](https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbRxWYgu82J_RFnMMATAS6_chUNVYwNU1CMDNZUDBSSDZKWVo2RDJDRjRLQi4u).

## What's in Microsoft Graph?

Microsoft Graph exposes REST APIs and client libraries to access data on the following Microsoft cloud services:

- Microsoft 365 services: Delve, Excel, Microsoft Bookings, Microsoft Teams, OneDrive, OneNote, Outlook/Exchange, Planner, SharePoint, Workplace Analytics.
- Enterprise Mobility and Security services: Advanced Threat Analytics, Advanced Threat Protection, Azure Active Directory, Identity Manager, and Intune.
- Windows 10 services: activities, devices, notifications, Universal Print (preview).
- Dynamics 365 Business Central.

To find out more, see [Major services and features in Microsoft Graph](overview-major-services.md).

![An image showing the primary resources and relationships that are part of the graph](images/microsoft-graph.png)

## What can you do with Microsoft Graph?

> [!VIDEO https://www.youtube-nocookie.com/embed/PI9NO5rayiY]

Use Microsoft Graph to build experiences around the user's unique context to help them be more productive. Imagine an app that...

- Looks at your next meeting and helps you prepare for it by providing profile information for attendees, including their job titles and managers, as well as information about the latest documents they're working on, and people they're collaborating with.
- Scans your calendar, and suggests the best times for the next team meeting.
- Fetches the latest sales projection chart from an Excel file in your OneDrive and lets you update the forecast in real time, all from your phone.
- Subscribes to changes in your calendar, sends you an alert when you’re spending too much time in meetings, and provides recommendations for the ones you can miss or delegate based on how relevant the attendees are to you.
- Helps you sort out personal and work information on your phone; for example, by categorizing pictures that should go to your personal OneDrive and business receipts that should go to your OneDrive for Business.
- Analyzes at-scale Microsoft 365 data so that decision makers can unlock valuable insights into time allocation and collaboration patterns that improve business productivity.
- Brings custom business data into Microsoft Graph, indexing it to make it searchable along with data from Microsoft 365 services.

Pick the first scenario about researching meeting attendees as an example. With the Microsoft Graph API, you can:

1. Get the email addresses of the [meeting event](/graph/api/resources/event?view=graph-rest-1.0) attendees.
2. Look them up individually as a [user](/graph/api/resources/user?view=graph-rest-1.0) in Azure Active Directory to [get their profile information](/graph/api/user-get?view=graph-rest-1.0).

You can then navigate to other resources using relationships:

- Connect to their manager through a [manager relationship](/graph/api/user-list-manager?view=graph-rest-1.0).
- Get valuable insights and intelligence including the popular files [trending around](/graph/api/resources/insights-trending?view=graph-rest-1.0) the user.
- [Get the most relevant people](/graph/api/user-list-people?view=graph-rest-beta) around the user.
- Extend the scenario to get to the user's groups through a [memberOf](/graph/api/user-list-memberof?view=graph-rest-1.0) relationship
- [Reach other members in each group](/graph/api/group-list-members?view=graph-rest-1.0).
- Tap into other scenarios enabled by [groups](office365-groups-concept-overview.md), such as [education](education-concept-overview.md) and [teamwork](teams-concept-overview.md).

Microsoft Graph continues to open up the Microsoft 365 platform for developers, and always only with the appropriate permissions.

> [!NOTE]
> When you use the Microsoft Graph API, you agree to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context) and the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkId=521839).

### Popular API requests

Check out some of these common scenarios for working with the Microsoft Graph API. The links take you to the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

| **Operation** | **URL** |
|:--------------------------|:----------------------------------------|
|   GET my profile | [`https://graph.microsoft.com/v1.0/me`](https://developer.microsoft.com/graph/graph-explorer/?request=me&version=v1.0) |
|   GET my files | [`https://graph.microsoft.com/v1.0/me/drive/root/children`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren&version=v1.0) |
|   GET my photo | [`https://graph.microsoft.com/v1.0/me/photo/$value`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fphoto%2F%24value&version=v1.0) |
|   GET my mail | [`https://graph.microsoft.com/v1.0/me/messages`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmessages&version=v1.0) |
|   GET my high importance email | [`https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmessages%3F%24filter%3Dimportance%2520eq%2520'high'&version=v1.0) |
|   GET my calendar events | [`https://graph.microsoft.com/v1.0/me/events`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fevents&version=v1.0) |
|   GET my manager | [`https://graph.microsoft.com/v1.0/me/manager`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmanager&version=v1.0) |
|   GET last user to modify file foo.txt | [`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren%2Ffoo.txt%2FlastModifiedByUser&version=v1.0) |
|   GET Microsoft 365 groups I’m member of| [`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2FmemberOf%2F%24%2Fmicrosoft.graph.group%3F%24filter%3DgroupTypes%2Fany(a%3Aa%2520eq%2520'unified')&version=v1.0) |
|   GET users in my organization  | [`https://graph.microsoft.com/v1.0/users`](https://developer.microsoft.com/graph/graph-explorer/?request=users&version=v1.0) |
|   GET groups in my organization | [`https://graph.microsoft.com/v1.0/groups`](https://developer.microsoft.com/graph/graph-explorer/?request=groups&version=v1.0) |
|   GET people related to me | [`https://graph.microsoft.com/v1.0/me/people`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fpeople&version=beta)  |
|   GET items trending around me | [`https://graph.microsoft.com/beta/me/insights/trending`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Finsights%2Ftrending&version=v1.0) |
|   GET my notes | [`https://graph.microsoft.com/v1.0/me/onenote/notebooks`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fonenote%2Fnotebooks&version=beta) |

## Bring data from an external content source to Microsoft Graph (preview)

Use Microsoft Graph _connectors_ to bring data that is external to the Microsoft cloud into Microsoft Graph. Examples of such data can be an organization's human resources database or product catalog, hosted on-premises or in the public or private clouds. 

Microsoft Graph connectors create connections to external data sources, index the data, and store it as external custom items and files. Once indexed, those items can show up in Microsoft Search, and for apps that use the [Microsoft Search API](search-concept-overview.md).

## Access Microsoft Graph data at scale using Microsoft Graph data connect

Use Microsoft Graph _data connect_ to access data on Microsoft Graph at scale, while allowing administrators granular consent and full control over their Microsoft Graph data. Data connect streamlines the delivery of this data to Microsoft Azure.

Using Azure tools, you can then build intelligent apps that:

- Find you the closest expert on a topic to you in your organization
- Automate knowledge base creation
- Analyze meeting requests to provide insights into conference room utilization
- Detect fraud with productivity and communication data

## When should I use Microsoft Graph API or data connect?

Microsoft Graph data connect provides a new way for you to interact with the data that's available through Microsoft Graph APIs. Data connect provides a unique set of tools that streamline the building of intelligent applications, all within the Microsoft cloud.

|**Feature**| **Microsoft Graph API** | **Microsoft Graph data connect** |
|:----------|:------------------------|:--------------------------------------|
| **Access scope** | Single user or entire tenant | Many users or groups |
| **Access pattern** | Real time | Recurrent schedule |
| **Data operations** | Operates on data master | Operates on a cache of the data |
| **Data protection** | Data is protected while in Microsoft 365 | Data protection is extended to the cache of data in your Azure subscription |
| **User consent** | Self<br>Resource types | None |
| **Admin consent** | Entire organization<br>Resource types | Select groups of users<br>Resource types and properties<br>Excludes users |
| **Access tools** | RESTful web queries | Azure Data Factory |

 See [Microsoft Graph data connect](data-connect-overview.md) for more information, and [get started using Microsoft Graph data connect](data-connect-concept-overview.md).

## Next steps

- Check out some [featured scenarios](https://developer.microsoft.com/graph/examples).
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Use the [quick start](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.
- Look under **Learn** in the table of contents to read about services and features that you can use in your scenarios.
- Find out how to [get an auth token](auth/auth-concepts.md) in your app.
- Start [using the API](use-the-api.md).