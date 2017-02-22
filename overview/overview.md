# Overview of Microsoft Graph

Microsoft Graph exposes multiple APIs from Office 365 and other Microsoft cloud services through a single endpoint:  **https://graph.microsoft.com**. Microsoft Graph simplifies queries that would otherwise be more complex. 
 
You can use Microsoft Graph to:

- Access data from multiple Microsoft cloud services, including Azure Active Directory, Exchange Online as part of Office 365, SharePoint, OneDrive, OneNote, and Planner.
- Navigate between entities and relationships.
- Access intelligence and insights from the Microsoft cloud (for commercial users).

**Microsoft Graph development stack**

![A diagram that shows the layers of the Microsoft Graph development stack. At the bottom is the data layer, which includes users, groups, file, mail, calendars, personal contacts, tasks, org contacts, people, Excel, and notes. The next layer is authentication and authorization. Next is the development environment of your choice, including the Android, iOS, and Visual Studio Microsoft Graph API SDKs. The final layer is your solution, which uses the technology of your choice, including .NET, JS, HTML, and Ruby, and is hosted on Microsoft Azure or another hosting platform.](./images/MicrosoftGraph_DevStack.png)

<!--<a name="msg_queries"> </a>-->

##Common Microsoft Graph queries

Microsoft Graph exposes two endpoints: /v1.0 and /beta. The /v1.0 endpoint includes the resources that you can access in your production app. The [/beta](http://graph.microsoft.io/en-us/docs/api-reference/beta/beta-overview) endpoint includes APIs that are currently in preview. The following table lists some common queries that you can use to access the Microsoft Graph API.

| **Operation**	| **Service endpoint** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	[`https://graph.microsoft.com/v1.0/me`](https://graph.microsoft.io/en-us/graph-explorer/?request=me&version=v1.0) |
|   GET my files | [`https://graph.microsoft.com/v1.0/me/drive/root/children`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren&version=v1.0) |
|   GET my photo	 | [`https://graph.microsoft.com/v1.0/me/photo/$value`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fphoto%2F%24value&version=v1.0) |
|   GET my mail |	[`https://graph.microsoft.com/v1.0/me/messages`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmessages&version=v1.0) |
|   GET my high importance email | [`https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmessages%3F%24filter%3Dimportance%2520eq%2520'high'&version=v1.0) |
|   GET my calendar |	[`https://graph.microsoft.com/v1.0/me/calendar`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fcalendar&version=v1.0) |
|   GET my manager	| [`https://graph.microsoft.com/v1.0/me/manager`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fmanager&version=v1.0) |
|   GET last user to modify file foo.txt |	[`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fdrive%2Froot%2Fchildren%2Ffoo.txt%2FlastModifiedByUser&version=v1.0) |
|   GET unified groups I’m member of|	[`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2FmemberOf%2F%24%2Fmicrosoft.graph.group%3F%24filter%3DgroupTypes%2Fany(a%3Aa%2520eq%2520'unified')&version=v1.0) |
|   GET users in my organization	 | [`https://graph.microsoft.com/v1.0/users`](https://graph.microsoft.io/en-us/graph-explorer/?request=users&version=v1.0) |
|   GET group conversations |	`https://graph.microsoft.com/v1.0/groups/{id}/conversations`|
|   GET people related to me	| [`https://graph.microsoft.com/beta/me/people`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fpeople&version=beta)  |
|   GET files trending around me |	[`https://graph.microsoft.com/beta/me/trendingAround`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2FtrendingAround&version=beta) |
|   GET my tasks	| [`https://graph.microsoft.com/beta/me/tasks`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Ftasks&version=beta) |
|   GET my notes |	[`https://graph.microsoft.com/beta/me/notes/notebooks`](https://graph.microsoft.io/en-us/graph-explorer/?request=me%2Fnotes%2Fnotebooks&version=beta) |


>**Note:** The APIs in the beta endpoint are subject to change. We don't recommend that you use them in your production apps. 

<!-- <a name="msg_roof"> </a> -->

## Explore Microsoft Graph

- [Get started](https://graph.microsoft.io/en-us/docs/get-started/get-started) using Microsoft Graph and the platform of your choice.
- Discover the resources and operations that you can use in your production apps by browsing the TOC.
- Preview the new [/beta APIs](https://graph.microsoft.io/en-us/docs/api-reference/beta/beta-overview).
- Visit the [Microsoft Graph Explorer](https://graph.microsoft.io/graph-explorer).
- Check out our [Microsoft Graph snippets samples](https://github.com/search?q=org%3Amicrosoftgraph+snippets-sample).

 >  Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with {MicrosoftGraph} and {office365}.



