# Microsoft Graph permission scopes

The Microsoft Graph exposes OAuth 2.0 permission scopes that are used to control access that an app has to resources. As a developer, you specify the permission scopes that are appropriate to the access your app requires. (If you're using Azure AD authentication, you typically you do this through the Azure Management portal. If you're using the Azure AD v2.0 endpoint, you request permissions dynamically during runtime.)

After sign-in, users or administrators are given an opportunity to consent to allow your app access to their resources with the permission scopes you configured. For this reason, you should choose permission scopes that provide the least level of privilege needed by your app. For more details on how to configure permissions for your app and on the consent process, see <a href="https://azure.microsoft.com/en-us/documentation/articles/active-directory-integrating-applications/" target="_newtab">Integrating Applications with Azure Active Directory</a>.

>**Note:** Some Microsoft Graph permissions, such as those pertaining to groups and tasks, are not applicable to personal accounts.  

##Permission scope concepts

There are several concepts you should be familiar with to effectively use permission scopes.

###App-only vs. delegated scopes
Permission scopes can be either app-only or delegated. App-only scopes (also known as app roles) grant the app the full set of privileges offered by the scope. App-only scopes are typically used by apps that run as a service without a signed-in user being present. 

Delegated permission scopes are for apps that act on behalf of a user. These scopes delegate the privileges of the signed-in user, allowing the app to act as the signed in user. The actual privileges granted to the app will be the least privileged combination (the intersection) of the privileges granted by the scope and those possessed by the signed-in user. For example, if the permission scope grants delegated privileges to write all directory objects, but the signed-in user has privileges only to update their own user profile, the app will only be able to write the signed-in user's profile but no other objects.

### Full and basic profiles for users and groups

The full profile (or profile) of a User or a Group includes all of the entity's declared properties. Because the profile may contain sensitive directory information or personally identifiable information (PII), several scopes constrain app access to a limited set of properties known as a basic profile. For users, the basic profile includes only the following properties: display name, first and last name, photo, and email address. For groups, the basic profile contains only the display name. 

<!---	<a name="msg_perm_details"> </a>  -->

## Permission scope details

You must configure your app to have the necessary permissions to access the Microsoft Graph API resources. The permissions are scoped to individual resources for the rights to read, to write or to do both. 

The following tables list the Microsoft Graph API permission scopes and explains the access granted by each. 
- The **Scope** column lists the scope name. Scope names take the form resource.operation.constraint; for example, Group.ReadWrite.All. If the constraint is "All", the scope grants the app the ability to perform the operation (ReadWrite) on all of the specified resources (Group) in the directory; otherwise, the scope only permits the operation on the profile of the signed-in user. Scopes may grant limited privileges for the specified operation, see the **Description** column for details.
- The **Permission** column shows how the scope is displayed on the Azure portal. 
- The **Description** column describes the full set of privileges granted by the scope. For delegated scopes, the actual access granted to the app will be the least privileged combination (intersection) of the access granted by the scope and the privileges of the signed-in user. 
- The scopes are grouped according to whether the permissions require administrator's consent.

  > **Note**: See [Release notes](http://graph.microsoft.io/docs/overview/release_notes) for `v1.0` and `beta` permission scope limitations.
  
###Permissions requiring administrator's consent

|   **Scope**                  |  **Permission on Azure Management Portal**                          |  **Description** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| _User.Read.All_                |     Read all user's full profiles           | Same as User.ReadBasic.All, except that it allows the app to read the full profile of all users in the organization and when reading navigation properties like manager and direct reports. The full profile includes all of the declared properties of the **User** entity. To read the groups that a user is a member of, the app will also require either Group.Read.All or Group.ReadWrite.All. |
| _User.ReadWrite.All_           |     Read and write all user's full profiles | Allows the app to read and write the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. |
| _Directory.Read.All_           |     Read directory data                     | Allows the app to read data in your organization's directory, such as users, groups and apps. |
| _Directory.ReadWrite.All_      |     Read and write directory data           | Allows the app to read and write data in your organization's directory, such as users, and groups.  Does not allow user or group deletion. It does not allow the app to delete users or groups, or reset user passwords. |
| _Directory.AccessAsUser.All_   |     Access directory as the signed-in user  | Allows the app to have the same access to information in the directory as the signed-in user.|
| _Group.Read.All_ |    Read all groups | Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. |
| _Group.ReadWrite.All_ |    Read and write all groups| Allows the app to create groups and read all group properties and memberships on behalf of the signed-in user.  Additionally allows group owners to manage their groups and allows group members to update group content. |


###Permissions not requiring administrator's consent

|   **Scope**    |  **Permission on Azure Management Portal**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _User.Read_       |    Sign-in and read user profile | Allows users to sign-in to the app, and allows the app to read the profile of signed-in users. The full profile includes all of the declared properties of the User entity. The app cannot read navigation properties, such as manager or direct reports. Also allows the app to read the following basic company information of the signed-in user (through the **TenantDetail** object): tenant ID, tenant display name, and verified domains.|
| _User.ReadWrite_ |    Read and write access to user profile | Allows the app to read your profile. It also allows the app to update your profile information on your behalf. |
| _User.ReadBasic.All_ |    Read all user's basic profiles | Allows the app to read the basic profile of all users in the organization on behalf of the signed-in user. The following properties comprise a user’s basic profile: display name, first and last name, photo, and email address. To read the groups that a user is a member of, the app will also require Group.Read.All or Group.ReadWrite.All.| 
| _Mail.Read_ |    Read user mail | Allows the app to read email in user mailboxes. |
| _Mail.ReadWrite_ |    Read and write access to user mail | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail.|
| _Mail.Send_ |    Send mail as a user | Allows the app to send mail as users in the organization. |
| _Calendars.Read_ |    Read user calendars  | Allows the app to read events in user calendars.|
| _Calendars.ReadWrite_ |    Have full access to user calendars  | Allows the app to create, read, update, and delete events in user calendars. |
| _Contacts.Read_ |    Read user contacts  | Allows the app to read user contacts. |
| _Contacts.ReadWrite_ |    Have full access to user contacts  | Allows the app to create, read, update, and delete user contacts. |
| _Files.Read_ |    Read user files and files shared with user | Allows the app to read the signed-in user's files and files shared with the user.| 
| _Files.ReadWrite_ |   Have full access to user files and files shared with user | Allows the app to read, create, update and delete the signed-in user's files and files shared with the user. |
| _Files.ReadWrite.Selected_ |    Read and write files that the user selects | Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. |
| _Files.Read.Selected_ |    Read files that the user selects  | Allows the app to read files that the user selects. The app has access for several hours after the user selects a file. |
| _Sites.Read.All_ |    Read items in all site collections | Allows the application to read documents and list  items in all site collections on behalf of the signed-in user. |
| _openid_ |    Sign users in (preview) | Allows users to sign in to the app with their work or school accounts and allows the app to see basic user profile information.|
| _offline_access_ |    Access user's data anytime (preview) | Allows the app to read and update user data, even when they are not currently using the app.|

###App-only permissions requiring administrator's consent

|   **Scope**    |  **Permission on Azure Management Portal**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _Mail.Read_       |    Read mail in all mailboxes | Allows the app to read mail in all mailboxes without a signed-in user.|
| _Mail.ReadWrite_ |    Read and write mail in all mailboxes | Allows the app to create, read, update, and delete mail in all mailboxes without a signed-in user. Does not include permission to send mail. |
| _Mail.Send_ |    Send mail as any user | Allows the app to send mail as any user without a signed-in user. | 
| _Calendars.Read_ |    Read calendars in all mailboxes | Allows the app to read events of all calendars without a signed-in user. |
| _Calendars.ReadWrite_ |    Read and write calendars in all mailboxes | Allows the app to create, read, update, and delete events of all calendars without a signed-in user.|
| _Contacts.Read_ |    Read contacts in all mailboxes | Allows the app to read all contacts in all mailboxes without a signed-in user. |
| _Contacts.ReadWrite_ |    Read and write contacts in all mailboxes  |Allows the app to create, read, update, and delete all contacts in all mailboxes without a signed-in user.|
| _User.ReadBasic.All_ |    Read all users' basic profiles  | Allows the app to read a basic set of profile properties of other users in your organization without a signed-in user. Includes display name, first and last name, photo, and out of office message.|
| _User.Read.All_ |    Read all users' full profiles | Allows the app to read the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.| 
| _User.ReadWrite.All_ |   Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.|


##Preview
###Permissions not requiring administrator's consent (preview)

|   **Scope**    |  **Permission on Azure Management Portal**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _Tasks.ReadWrite_ |    Create, read, update and delete user tasks and plans (preview) | Allows the app to create, read, update and delete tasks and plans (and tasks in them), that are assigned to or shared with the signed-in user.|
| _People.Read_ |    Read users' relevant people lists (preview) | Allows the app to read a ranked list of relevant people of the signed-in user. The list includes local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype).|
| _People.ReadWrite_ |    Read and write users' relevant people lists(preview) | Allows the app to create, read and write to the ranked list of relevant people of the signed-in user. The list includes local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype).|
| _Notes.Create_ |    Create pages in users' notebooks (preview) | Allows the app to read the titles of notebooks and sections and create new pages, notebooks and sections on behalf of the signed-in user.|
| _Notes.ReadWrite.CreatedByApp_ |    Limited notebook access (preview) | Allows the app to read the titles of notebooks and sections, create new pages on behalf of the signed-in user. Also allows the app to read and update pages created by the app. |
| _Notes.Read_ |    Read user notebooks (preview) | Allows the app to view the titles of OneNote notebooks and sections and to read all pages on behalf of the signed-in user. It cannot view password protected sections. |
| _Notes.ReadWrite_ |    Read and write user notebooks (preview) | Allows the app to read the titles of notebooks and sections, read all pages, write all pages and create new pages on behalf of the signed-in user.  It cannot access password protected sections. |
| _Notes.Read.All_ |    Read all notebooks that the user can access (preview) | Allows the app to read the contents of all notebooks and sections that the signed-in user can access.   It cannot read password protected sections. |
| _Notes.ReadWrite.All_ |    Read and write notebooks that the user can access (preview) | Allows the app to read and write the contents of all notebooks and sections that the signed-in user can access.  It cannot access password protected sections.|

##Permission scope scenarios
The following are some app scenarios using the `User` and `Group` resources and their corresponding required scopes. The following table shows the permission scopes needed for an app to be able to perform specific operations. Note that in some cases the ability of the app to perform some operations will depend on whether the permission scope is app-only or delegated, and, in the case of delegated permission scopes, on the privileges of the signed-in user. 

###Access scenarios using the User resource and the required scopes

| **App tasks involving User**	 |  **Required scopes** | **Permissions on Azure Management Portal** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  Read all user's basic profiles |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc)	 | _User.Read_ | Enable sign-in and read user profile|
| App wants to read complete user profile all users	 | _User.Read.All_ |  Read all user's full profiles   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendar.Read_ | Enable sign-in and read user profile, Read users' files,  Read user mail,  Read user calendars |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | Enable sign-in and read user profile, Read users' files,  Read items in all site collections |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | Read and write access to user profile |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | Read and write all user's full profiles |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendar.ReadWrite_  |  Read and write access to user profile,  Read and write access to user profile,  Read and write access to user mail, Have full access to user calendars |
   

###Access scenarios using the Group resource and the required scopes
    
| **App tasks involving Group**	 |  **Required scopes** |  **Permissions on Azure Management Portal** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | Read all groups|
| App wants to read all content in all unified groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | Read items in all site collections, Read all groups|
| App wants to read and write all content in all unified groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  Read and write all groups, Edit or delete items in all site collections |
| App wants to discover (find) a unified group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | Read and write all groups|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | Read and write all groups|
 


