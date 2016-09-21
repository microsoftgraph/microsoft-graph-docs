
# Microsoft Graph Frequently Asked Questions (FAQs)

## What platforms are supported by Microsoft Graph API?
<!--
Apps can use the Microsoft Graph API to perform create, read, update, and delete (CRUD) operations on data sources and entities, giving them seamless access to work data. 

**Ease of use--one endpoint, all Office 365 data under one roof**

You can use the API in four steps:
1.	Select your programming language and development environment.
2.	Build your app.
3.	Optionally, host your app in Microsoft Azure or any cloud platform you choose.
4.	Authenticate your users by using single sign-on with Azure AD.

As a developer you can use the API to create custom apps that access and interact with all the richness of enterprise and productivity data--users, groups, organizational contacts, files, folders, mail, calendar, insights and relationships--and build apps across all mobile, web, and desktop platforms. No matter your development platform or tools. Using a single service endpoint to access those entities and data. And a single authentication flow.  -->

You can:

<!--Just like in Office 365 APIs, Office 365 unified endpoint API  allows you to build apps using any development environment of your choice:  -->

- Use any development environment you're familiar with, like .NET, PHP, Java, Python, or Ruby
- Use any  programming language, development platform, and hosting environment
- Build an  app that accesses the API using any web language, including JavaScript, HTML5, Python, Ruby, PHP, and ASP.NET  
- Use the IDE of your choice, whether that's Visual Studio, Eclipse, Android Studio, Xcode or something else you choose
- Host your apps in Microsoft Azure or any cloud platform
- Develop apps for Windows Universal, iOS, Android, or on another device platform
- Call the API from Office Add-ins (formerly apps for Office) or SharePoint Add-ins (formerly apps for SharePoint)
 


## Why use Microsoft Graph API?

Let's say you want to programmatically retrieve a user's files, profile picture, and find the manager of the person who last edited that file in your organization. Because the information is stored in  multiple services-Azure Active Directory, SharePoint, and Exchange-the task involves multiple steps using Office 365 APIs: 

1. Use the Discovery Service to find the various service endpoints 
2. Determine the URL of the services your Office 365 apps want to connect to
3. Then acquire and manage the access token for each service and make the request to the service directly

Now, you can use the use Microsoft Graph API to perform the same complex operation via a single REST API endpoint. You don't have to discover and navigate a different endpoint for each service, acquire and manage separate access token for each service, deal with siloed services and varying data model.

##Sample queries

The following example shows the current model for interacting with Office 365 API using disparate service endpoints and how much simpler this becomes with Microsoft Graph API.

**Disparate service endpoints**

|   **Operation**                  |  **API**                          |  **Service endpoint** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| Discover service endpoints for Office 365 API               |     `Discovery Service`           | _https://_**api.office.com**_/discovery/v1.0/me/services_ |
| Get users           |     `Azure AD Graph API` | _https://_**graph.windows.net**_/contoso.com/users?api-version=2013-04-05_|
| Get message collection from the Inbox       |     `Office 365 API`           | _https://_**outlook.office365.com**_/api/v1.0/me/messages_  |
| Get Joe's files   |     `Office 365 API`  | _https://_**contoso-my.sharepoint.com**_/personal/joe_contoso_com/_api/v1.0/files_ |


Using the Microsoft Graph API, you don't have to first discover service endpoints and then traverse different endpoints to get a user's files, mail and so on. You only need to interact with a single REST URL namespace, which is _**graph.microsoft.com**_.

**Microsoft Graph API**

|   **Operation**                  |  **API**                          |  **Service endpoint** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| Discover service endpoints for Office 365 API                |     `Microsoft Graph`           | Not needed |
| Get users           |     `Microsoft Graph` | _https://_**graph.microsoft.com**_/v1.0/contoso.onmicrosoft.com/users_ |
| Get message collection from the Inbox       |     `Microsoft Graph`           | _https://_**graph.microsoft.com**_/v1.0/me/messages_  |
| Get Joe's files   |     `Microsoft Graph `  | _https://_**graph.microsoft.com**_/v1.0/me/drive/root/children_ |


## What're the benefits of using Microsoft Graph API?

Some of the benefits of using Microsoft Graph API  are as follows:

**Consistent and streamlined developer experience for consuming Microsoft cloud services**

-	Single namespace for all service endpoints. There is no need for service endpoint discovery.
-	One token to access all resources
-	Integrated and direct navigation between currently siloed services (for example, get the department and management chain of the user who authored a particular document)
-	Only need to use a single API set, that is, need only to use Microsoft Graph API to connect to multiple services
-	Unified and expanded REST API and entities across the Office platform 
-	Consistent property naming and schemes across entities, including navigation properties between entities

**Enable more productive work-life experiences using Office**

-	Contextual content. For example, finding documents by group, project, team or trends
-	Contextual user relationships. For example, you can find users by group membership, interest, skills and expertise.  You can also get organizational chart relationship

**Enable developing apps in any programming language on any platform**

-	Development tooling and resources for all developers. You can develop using any platform and language 
-	Mobile development for all platforms using open technologies  
-	No need for any specialized Exchange, SharePoint, or Azure AD knowledge to access Microsoft Graph API entities

<!---<a name="msg_v2auth"> </a>-->

## Does Microsoft Graph API support v2.0 app authentication endpoint?

Yes. For more information see [Azure AD v2.0 Endpoint](http://graph.microsoft.io/docs/authorization/converged_auth).


  > Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365). Tag your questions with [MicrosoftGraph] and [office365].








