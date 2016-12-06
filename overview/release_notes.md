# Known issues with Microsoft Graph

This article describes known issues with the Microsoft Graph. For information about the latest updates, see the [Microsoft Graph Changelog](http://graph.microsoft.io/en-us/changelog).

## Users
#### No instant access after creation
Users can be created immediately through a POST on the user entity. An Office 365 license must first be assigned to a user, in order to get access to Office 365 services. Even then, due to the distributed nature of the service, it might take 15 minutes before files, messages and events entities are available for use for this user, through the Microsoft Graph API. During this time, apps will receive a 404 HTTP error response. 

#### Photo restrictions
Reading and updating a user's profile photo is only possible if the user has a mailbox. Additionally, any photos that *may* have been previously stored using the **thumbnailPhoto** property 
(using the Office 365 unified API preview, or the Azure AD Graph, or through AD Connect synchronization) will no longer be accessible through the Microsoft Graph user photo property. 
Failure to read or update a photo, in this case, would result in the following error:

```javascript
	{
	  "error": {
	    "code": "ErrorNonExistentMailbox",
	    "message": "The SMTP address has no mailbox associated with it."
	  }
	}
```

 > **Note**:  Shortly after GA, storage and retrieval of user profile photos will be enabled, even if the user does not have a mailbox, and this error should disappear.

#### Default contacts folder

In the `/v1.0` version, `GET /me/contactFolders` does not include the user's default contacts folder. 

A fix will be made available. Meanwhile, you can use the following [list contacts](http://graph.microsoft.io/docs/api-reference/v1.0/api/user_list_contacts) query and the **parentFolderId** property
as a workaround to get the folder ID of the default contacts folder:

```
GET https://graph.microsoft.com/v1.0/me/contacts?$top=1&$select=parentFolderId
```
In the above query:
1. `/me/contacts?$top=1` gets the properties of a [contact](http://graph.microsoft.io/docs/api-reference/v1.0/resources/contact) in the default contacts folder.
2. Appending `&$select=parentFolderId` returns only the contact's **parentFolderId** property, which is the ID of the default contacts folder.

#### Adding and accessing ICS-based calendars in user's mailbox
Currently, there is partial support for a calendar based on an Internet Calendar Subscription (ICS):

* You can add an ICS-based calendar to a user mailbox through the user interface, but not through the Microsoft Graph API. 
* [Listing the user's calendars](http://graph.microsoft.io/docs/api-reference/v1.0/api/user_list_calendars) allows you to get the **name**, **color** and **id** properties of 
each [calendar](http://graph.microsoft.io/docs/api-reference/v1.0/resources/calendar) in the user's default calendar group, or a specified calendar group, including any ICS-based calendars. You cannot store
or access the ICS URL in the calendar resource.
* You can also [list the events](http://graph.microsoft.io/docs/api-reference/v1.0/api/calendar_list_events) of an ICS-based calendar.

## Groups
#### Policy
Using Microsoft Graph to create and name an Office 365 group bypasses any Office 365 group policies that are configured through Outlook Web App. 

#### Group permission scopes
Microsoft Graph exposes two permission scopes (*Group.Read.All* and *Group.ReadWrite.All*) for access to groups APIs.  
These permission scopes must be consented to by an administrator (which is a change from preview).  In the future we plan to add new scopes for groups that can be consented by users.

Also, only the API for core group administration and management supports access using delegated or app-only permissions. 
All other features of the group API support only delegated permissions. 

Examples of group features that support delegated and app-only permissions: 

* Creating and deleting groups
* Getting and updating group properties pertaining to group administration or management
* Group [directory settings](../resources/directorysetting.md), type and synchronization
* Group owners and membership


Examples of group features that support only delegated permissions:

* Group conversations, events, photo
* External senders, accepted or rejected senders, group subscription
* User favorites and unseen count


#### Adding and getting attachments of group posts
[Adding](http://graph.microsoft.io/docs/api-reference/v1.0/api/post_post_attachments) attachments to group posts, [listing](http://graph.microsoft.io/docs/api-reference/v1.0/api/post_list_attachments) and 
getting attachments of group posts currently return the error message "The OData request is not supported." A fix has been rolled out for both the `/v1.0` and `/beta` versions,
and is expected to be widely available by the end of January 2016.

## Contacts
* Only personal contacts are currently supported. Organizational contacts are not currently supported in `/v1.0`, but can be found in `/beta`.
* Personal contact's mobile phone isn’t being returned for a contact. It will be added shortly. In the meantime, it can be accessed through Outlook APIs.

### Drives, files and content streaming
* First time access to a user's personal drive through the Microsoft Graph before the user accesses their personal site through a browser leads to a 401 response.

## Functionality available only in Office 365 REST APIs

Some functionality is not yet available in Microsoft Graph. If you don't see the functionality you're looking for, you can use the endpoint-specific [Office 365 REST APIs](https://msdn.microsoft.com/en-us/office/office365/api/api-catalog).

#### Synchronization
Outlook, OneDrive and Azure AD synchronization capabilities (in Azure AD this is also known as differential query) are not available in `/v1.0` or `/beta`.  If your application requires synchronization capabilities, please continue to use the existing Office 365 and Azure AD REST APIs, or explore the new webhooks preview feature offered through Microsoft Graph for events, messages and contacts.

> **Note**: Our goal is to close the gap between the existing APIs and Microsoft Graph as quickly as possible, including synchronization.

#### Batching
Batching is not supported by Microsoft Graph. You can, however, use the Outlook beta endpoint and 
[batch Outlook REST calls](https://msdn.microsoft.com/en-us/office/office365/api/batch-outlook-rest-requests). 

#### Availability in China
The Microsoft Graph service is operated by 21Vianet (and now available in China). Please review [Microsoft Graph sovereign cloud deployments](http://graph.microsoft.io/docs/overview/deployments) for more details including restrictions.

#### Service actions and functions
`isMemberOf` and `getObjectsById` are not available in Microsoft Graph

## Microsoft Graph permissions
For the latest information about Microsoft Graph supported application and delegated permissions, see [Permission scopes](http://graph.microsoft.io/docs/authorization/permission_scopes). In addition, the following limitations apply to `v1.0`:

|Permission |	Permission type | Limitation |	Alternative |
|-----------|-----------------|------------|--------------|
|_User.ReadWrite_| Delegated	| Cannot update mobile phone number|	Also select `Directory.AccessAsUser.All`| 
|_User.ReadWrite.All_|	Delegated|	Cannot perform any CRUD operations on `User` other than updating user HD photo and extended profile properties|	Also select `Directory.ReadWrite.All` or `Directory.AccessAsUser.All` if user deletion is required.|
|_User.Read.All_|	Application	|Cannot perform any read operations on other users|	Also select `Directory.Read.All`|
| _User.ReadWrite.All_ |	Application |	Cannot perform any CRUD operations on `User` other than updating user HD photo and extended profile properties |	Also select`Directory.ReadWrite.All`. **NOTE**: User deletion will not be possible.|
|_Group.Read.All_	| Application |	Cannot enumerate groups or group memberships.  Can still read group content for Office groups	| Also select `Directory.Read.All` |
|_Group.ReadWrite.All_	| Application	| Cannot enumerate groups or group memberships, create groups, update group memberships or delete groups.  Can still read and update group content for Office groups.	| Also select `Directory.ReadWrite.All`. **NOTE**:  Group deletion will not be possible.|

Additionally there are the following `/beta` limitations:

|Permission |	Permission type | Limitation |	Alternative |
|-----------|-----------------|------------|--------------|
| _Group.ReadWrite.All_	| Delegated	| Cannot read or update planner tasks in Office groups	| Also select `Tasks.ReadWrite`|
|_Tasks.ReadWrite_	| Delegated	| Cannot read or update signed-in user's tasks| Also select `Group.ReadWrite.All`|

## OData-related limitations
* **$expand** limitations: 
 * No support for `nextLink`
 * No support for more than 1 level of expand
 * No support with extra parameters (**$filter**, **$select**)
* Multiple namespaces are not supported
* GETs on `$ref` and casting is not supported on users, groups, devices, service principals and applications.
* `@odata.bind` is not supported.  This means that developers won’t be able to properly set the `Accepted` or `RejectedSenders` on a group.
* `@odata.id` is not present on non-containment navigations (like messages) when using minimal metadata
* Cross-workload filtering/search is not available. 
* Full-text search (using **$search**) is only available for some entities, like messages.

  >  Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365). Tag your questions with [MicrosoftGraph] and [office365].


