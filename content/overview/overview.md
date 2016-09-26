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

Microsoft Graph exposes two endpoints: /v1.0 and /beta. The /v1.0 endpoint includes the resources that you can access in your production app. The [/beta](../../api-reference/beta/beta-overview.md) endpoint includes APIs that are currently in preview. The following table lists some common queries that you can use to access the Microsoft Graph API.

| **Operation**	| **Service endpoint** |
|:--------------------------|:----------------------------------------|
|   GET my profile |	`https://graph.microsoft.com/v1.0/me` |
|   GET my files | `https://graph.microsoft.com/v1.0/me/drive/root/children` |
|   GET my photo	 | `https://graph.microsoft.com/v1.0/me/photo/$value` |
|   GET my mail |	`https://graph.microsoft.com/v1.0/me/messages` |
|   GET my high importance email | `https://graph.microsoft.com/v1.0/me/messages?$filter=importance%20eq%20'high'` |
|   GET my calendar |	`https://graph.microsoft.com/v1.0/me/calendar` |
|   GET my manager	| `https://graph.microsoft.com/v1.0/me/manager` |
|   GET last user to modify file foo.txt |	`https://graph.microsoft.com/v1.0/me/drive/root/children/foo.txt/lastModifiedByUser` |
|   GET unified groups I’m member of|	`https://graph.microsoft.com/v1.0/me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')` |
|   GET users in my organization	 | `https://graph.microsoft.com/v1.0/users` |
|   GET group conversations |	`https://graph.microsoft.com/v1.0/groups/<id>/conversations`|
|   GET people related to me	| `https://graph.microsoft.com/beta/me/people`  |
|   GET files trending around me |	`https://graph.microsoft.com/beta/me/trendingAround` |
|   GET people I am working with	 | `https://graph.microsoft.com/beta/me/workingWith` |
|   GET my tasks	| `https://graph.microsoft.com/beta/me/tasks` |
|   GET my notes |	`https://graph.microsoft.com/beta/me/notes/notebooks`|

>**Note:** The APIs in the beta endpoint are subject to change. We don't recommend that you use them in your production apps. 

<!-- <a name="msg_roof"> </a> -->

##Explore Microsoft Graph

- [Get started](../get-started/get-started.md) using Microsoft Graph and the platform of your choice.
- Discover the resources and operations that you can use in your production apps by browsing the TOC.
- Preview the new [beta APIs](../../api-reference/beta/beta-overview.md).
- Visit the [Microsoft Graph Explorer](https://graph.microsoft.io/en-us/graph-explorer).

 >  Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with [MicrosoftGraph] and [office365].



