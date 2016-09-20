# Overview of Microsoft Graph

Microsoft Graph exposes multiple APIs from Office 365 and other Microsoft cloud services through a single endpoint:  **https://graph.microsoft.com**. Microsoft Graph simplifies queries that would otherwise be more complex. 
 
You can use Microsoft Graph to:

- Access data from multiple Microsoft cloud services, including Azure Active Directory, Exchange, SharePoint, OneDrive, OneNote, and Planner.
- Navigate between entities and relationships.
- Access intelligence and insights from the Microsoft cloud (for commercial users).

**Microsoft Graph developer stack**

![Microsoft Graph API developer stack.](./images/MicrosoftGraph_DevStack.png)

<!--<a name="msg_queries"> </a>-->

##Common Microsoft Graph queries

| **Operation**	| **Service endpoint** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	[`https://graph.microsoft.com/v1.0/me`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me&version=v1.0) |
|   GET my files | [`https://graph.microsoft.com/v1.0/me/drive/root/children`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fdrive%2Froot%2Froot%2Fchildren&version=v1.0) |
|   GET my photo	 | [`https://graph.microsoft.com/v1.0/me/photo/$value`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fphoto%2F%24value&version=v1.0) |
|   GET my mail |	[`https://graph.microsoft.com/v1.0/me/messages`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fmessages&version=v1.0) |
|   GET my high importance email | [`https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fmessages%3F%24filter%3Dimportance%2520eq%2520'high'&version=v1.0) |
|   GET my calendar |	[`https://graph.microsoft.com/v1.0/me/calendar`](](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fcalendar&version=v1.0)) |
|   GET my manager	| [`https://graph.microsoft.com/v1.0/me/manager`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fmanager&version=v1.0) |
|   GET last user to modify file foo.txt |	[`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fdrive%2Froot%2Froot%2Fchildren%2Ffoo.txt%2FlastModifiedByUser&version=v1.0) |
|   GET unified groups I’m member of|	[`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`] (https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2FmemberOf%2F%24%2Fmicrosoft.graph.group%3F%24filter%3DgroupTypes%2Fany(a%3Aa%2520eq%2520'unified'&version=v1.0)) |
|   GET users in my organization	 | [`https://graph.microsoft.com/v1.0/users`](https://graph.microsoft.io/en-us/graph-explorer/#?request=users&version=v1.0) |
|   GET group conversations |	`https://graph.microsoft.com/v1.0/groups/<id>/conversations`|
|   GET people related to me	| [`https://graph.microsoft.com/beta/me/people`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fpeople&version=beta)  |
|   GET files trending around me |	[`https://graph.microsoft.com/beta/me/trendingAround`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2FtrendingAround&version=beta) |
|   GET people I am working with	 | [`https://graph.microsoft.com/beta/me/workingWith`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2FworkingWith&version=beta) |
|   GET my tasks	| [`https://graph.microsoft.com/beta/me/tasks`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Ftasks&version=beta) |
|   GET my notes |	[`https://graph.microsoft.com/beta/me/notes/notebooks`](https://graph.microsoft.io/en-us/graph-explorer/#?request=me%2Fnotes%2Fnotebooks&version=beta) |

>**Note:** The APIs in the beta endpoint are subject to change. We don't recommend that you use them in your production apps. 

<!-- <a name="msg_roof"> </a> -->

##Explore Microsoft Graph

- [Get started](../../get-started/get-started.md) using Microsoft Graph and the platform of your choice.
- Discover the resources and operations that you can use in your production environment by browsing the API reference.
- Preview the new [beta APIs](../../api-reference/beta/beta-overview.md).
- Visit the [Microsoft Graph Explorer](https://graph.microsoft.io/en-us/graph-explorer).

 >  Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with [MicrosoftGraph] and [office365].



