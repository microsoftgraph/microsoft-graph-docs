# Overview of Microsoft Graph

Microsoft Graph is the gateway to data and intelligence in Microsoft 365. Microsoft Graph provides a unified programmability model that you can use to take advantage of the tremendous amount of data in Office 365, Enterprise Mobility + Security, and Windows 10. 

You can use the Microsoft Graph API to build apps for organizations and consumers that interact with the data of millions of users. With Microsoft Graph, you can connect to a wealth of resources, relationships, and intelligence, all through a single endpoint: `https://graph.microsoft.com`.

## What's in the graph?
Microsoft Graph exposes APIs for:

- Azure Active Directory
- Office 365 services: SharePoint, OneDrive, Outlook/Exchange, Microsoft Teams, OneNote, Planner, and Excel
- Enterprise Mobility and Security services: Identity Manager, Intune, Advanced Threat Analytics, and Advanced Threat Protection.
- Windows 10 services: activities and devices
- Education

To find out more, see 
[Major services and features in Microsoft Graph](../concepts/overview-major-services.md).

Microsoft Graph connects all the resources across these services using relationships. For example, a user can be connected to a group through a [memberOf](../api-reference/v1.0/api/user_list_memberof.md) relationship, and to another user through a [manager relationship](../api-reference/v1.0/api/user_list_manager.md). Your app can traverse these relationships to access these connected resources and perform actions on them through the API.

You can also get valuable insights and intelligence about the data from Microsoft Graph. For example, you can get the popular files [trending around](../api-reference/beta/resources/insights_trending.md) a particular user, or [get the most relevant people](../api-reference/beta/api/user_list_people.md) around a user.

Discover the possibilities in the relationships within Microsoft Graph.

![An image showing the primary resources and relationships that are part of the graph](images/microsoft_graph.png)

## What can you do with Microsoft Graph? 

You can use Microsoft Graph to build experiences around the user's unique context to help them be more productive. Imagine an app that...

- Looks at your next meeting and helps you prepare for it by providing profile information for attendees, including their job titles and who they work with, as well as information about the latest documents and projects they're working on.
- Scans your calendar, and suggests the best times for the next team meeting.
- Fetches the latest sales projection chart from an Excel file in your OneDrive and lets you update the forecast in real time, all from your phone.
- Subscribes to changes in your calendar, sends you an alert when you’re spending too much time in meetings, and provides recommendations for the ones you can miss or delegate based on how relevant the attendees are to you.
- Helps you sort out personal and work information on your phone; for example, by categorizing pictures that should go to your personal OneDrive and business receipts that should go to your OneDrive for Business.

You can do all this and more with the Microsoft Graph API.

>**Note:** When you use the Microsoft Graph API, you agree to the [Microsoft Graph Terms of Use](../misc/terms-of-use.md) and the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkId=521839).

### Popular requests

Check out some of these common scenarios for working with the Microsoft Graph API. The links take you to the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

| **Operation**	| **URL** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	[`https://graph.microsoft.com/v1.0/me`](https://developer.microsoft.com/graph/graph-explorer/?request=me&version=v1.0) |
|   GET my files | [`https://graph.microsoft.com/v1.0/me/drive/root/children`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren&version=v1.0) |
|   GET my photo | [`https://graph.microsoft.com/v1.0/me/photo/$value`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fphoto%2F%24value&version=v1.0) |
|   GET my mail |	[`https://graph.microsoft.com/v1.0/me/messages`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmessages&version=v1.0) |
|   GET my high importance email | [`https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmessages%3F%24filter%3Dimportance%2520eq%2520'high'&version=v1.0) |
|   GET my calendar events |	[`https://graph.microsoft.com/v1.0/me/events`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fevents&version=v1.0) |
|   GET my manager	| [`https://graph.microsoft.com/v1.0/me/manager`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fmanager&version=v1.0) |
|   GET last user to modify file foo.txt |	[`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren%2Ffoo.txt%2FlastModifiedByUser&version=v1.0) |
|   GET Office365 groups I’m member of|	[`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2FmemberOf%2F%24%2Fmicrosoft.graph.group%3F%24filter%3DgroupTypes%2Fany(a%3Aa%2520eq%2520'unified')&version=v1.0) |
|   GET users in my organization	 | [`https://graph.microsoft.com/v1.0/users`](https://developer.microsoft.com/graph/graph-explorer/?request=users&version=v1.0) |
|   GET groups in my organization |	[`https://graph.microsoft.com/v1.0/groups`](https://developer.microsoft.com/graph/graph-explorer/?request=groups&version=v1.0) |
|   GET people related to me	| [`https://graph.microsoft.com/v1.0/me/people`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fpeople&version=beta)  |
|   GET items trending around me |	[`https://graph.microsoft.com/beta/me/insights/trending`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Finsights%2Ftrending&version=beta) |
|   GET my notes |	[`https://graph.microsoft.com/v1.0/me/onenote/notebooks`](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fonenote%2Fnotebooks&version=beta) |

## Next steps

- Check out some [featured scenarios](../concepts/featured_scenarios.md).
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Use the [quick start](https://developer.microsoft.com/graph/quick-start) to set up a ready-to-run sample app.
- Look under **Learn** in the table of contents to read about services and features that you can use in your scenarios. 
- Find out how to [get an auth token](../concepts/auth_overview.md) in your app.
- Start [using the API](../concepts/use_the_api.md).

## Feedback?

Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with {MicrosoftGraph}.

