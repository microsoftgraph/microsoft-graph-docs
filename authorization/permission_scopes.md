# Microsoft Graph permissions

Microsoft Graph exposes OAuth 2.0 permissions that are used to control the access that an app has to resources. As a developer, you specify the permissions that are appropriate to the access your app requires. (If you're using Azure AD authentication, you typically do this through the Azure Management portal. If you're using the Azure AD v2.0 endpoint, you request permissions dynamically during runtime.)

After sign-in, users or administrators are given an opportunity to consent to allow your app access to their resources with the permissions you configured.
For this reason, you should choose permissions that provide the least level of privilege your app needs. Note that some Microsoft Graph permissions,
such as those pertaining to groups and tasks, are not applicable to personal accounts.

For more details about how to configure permissions for your app and on the consent process, see <a href="https://docs.microsoft.com/en-us/azure/active-directory/active-directory-v2-scopes/" target="_newtab">Scopes, permissions, and consent in the Azure Active Directory v2.0 endpoint</a>.

>**Note:** In OAuth 2.0, "scopes" refers specifically to _delegated_ permissions. Since Microsoft Graph and the Azure AD v2.0 endpoint support delegated and application permissions,
for simplicity of reference, in the rest of the Microsoft Graph documentation, **_permissions_** is used in contexts that refer to delegated scopes or application permissions. 

##Application vs. delegated permissions
Application permissions (also known as app-only permissions or app roles) are consented by an administrator to the application.  
They grant the app the full set of privileges as defined for those permissions. Application permissions are typically used by apps that run as a service without a signed-in user being present.

Delegated permissions are consented by the signed-in user. They delegate the privileges of the user, allowing the app to act as the user. The actual privileges granted to the app will be the least privileged combination (the intersection) of the privileges granted by the permission and those possessed by the signed-in user. For example, if the permission grants delegated privileges to write all directory objects, but the signed-in user has privileges only to update their own user profile, the app will only be able to write the signed-in user's profile but no other objects.

> **Note**: For groups, only a subset of the API pertaining to core group administration and management support both application
and delegated permissions. All other members of the group API support only delegated permissions. See [known issues](../overview/release_notes.md#groups) for examples.

## Full and basic profiles for users and groups

The full profile (or profile) of a [user](https://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/user) or a [group](https://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/group) includes all the entity's declared properties. Because the profile might contain sensitive directory information or personally identifiable information (PII), several permissions constrain app access to a limited set of properties known as a basic profile. For users, the basic profile includes only the following properties:

- Display name
- First and last name
- Photo
- Email address

For groups, the basic profile contains only the display name.

<!---	<a name="msg_perm_details"> </a>  -->

## Permission details

You must configure your app to have the necessary permissions to access Microsoft Graph resources. The permissions are scoped to individual resources for the rights to read, write, or  both.

The following tables list the Microsoft Graph permissions and explains the access granted by each.

- The **Permission** column lists the permission name. Permission names take the form resource.operation.constraint; for example, Group.ReadWrite.All. If the constraint is "All", the permission grants the app the ability to perform the operation (ReadWrite) on all of the specified resources (Group) in the directory; otherwise, the permission only supports the operation on the profile of the signed-in user. Permissions may grant limited privileges for the specified operation. See the **Description** column for details.
- The **Privilege** column shows how the permission is displayed on the [Azure portal](https://portal.azure.com/).
- The **Description** column describes in detail the full set of privileges granted by the permission. For delegated permissions, the actual access granted to the app will be the least privileged combination (intersection) of the access granted by the permission and the privileges of the signed-in user.
- The permissions are grouped according to whether the permissions require an administrator's consent.

  > **Note**: See [Known issues](../overview/release_notes) for `v1.0` and `beta` permission limitations.

###Permissions requiring administrator's consent

|   **Permission**                  |  **Privilege**                          |  **Description** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| _Directory.AccessAsUser.All_   |     Access directory as the signed-in user  | Allows the app to have the same access to information in the directory as the signed-in user.|
| _Directory.Read.All_           |     Read directory data                     | Allows the app to read data in your organization's directory, such as users, groups and apps. |
| _Directory.ReadWrite.All_      |     Read and write directory data           | Allows the app to read and write data in your organization's directory, such as users, and groups.  Does not allow user or group deletion. It does not allow the app to delete users or groups, or reset user passwords. |
| _Group.Read.All_ |    Read all groups | Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. |
| _Group.ReadWrite.All_ |    Read and write all groups| Allows the app to create groups and read all group properties and memberships on behalf of the signed-in user.  Additionally allows group owners to manage their groups and allows group members to update group content. |
| _User.Read.All_                |     Read all user's full profiles           | Same as User.ReadBasic.All, except that it allows the app to read the full profile of all users in the organization and when reading navigation properties like manager and direct reports. The full profile includes all of the declared properties of the **User** entity. To read the groups that a user is a member of, the app will also require either Group.Read.All or Group.ReadWrite.All. |
| _User.ReadWrite.All_           |     Read and write all user's full profiles | Allows the app to read and write the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. |


###Permissions not requiring administrator's consent

|   **Permission**    |  **Privilege**   |  **Description** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| _Calendars.Read_ |    Read user calendars  | Allows the app to read events in user calendars.|
| _Calendars.Read.Shared_ |    Read user and shared calendars | Allows the app to read events in all calendars that the user can access, including delegate and shared calendars. |
| _Calendars.ReadWrite_ |    Have full access to user calendars  | Allows the app to create, read, update, and delete events in user calendars. |
| _Calendars.ReadWrite.Shared_ |    Read and write user and shared calendars | Allows the app to create, read, update and delete events in all calendars the user has permissions to access. This includes delegate and shared calendars.|
| _Contacts.Read_ |    Read user contacts  | Allows the app to read user contacts. |
| _Contacts.Read.Shared_ |    Read user and shared contacts | Allows the app to read contacts that the user has permissions to access, including the user's own and shared contacts. |
| _Contacts.ReadWrite_ |    Have full access to user contacts  | Allows the app to create, read, update, and delete user contacts. |
| _Contacts.ReadWrite.Shared_ |    Read and write user and shared contacts | Allows the app to create, read, update and delete contacts that the user has permissions to, including the user's own and shared contacts.|
| _Files.Read_ |    Read user files and files shared with user | Allows the app to read the signed-in user's files and files shared with the user.|
| _Files.Read.All_ | Read all files that user can access | Allows the app to read all files the signed-in user can access. |
| _Files.Read.Selected_ |    Read files that the user selects  | Allows the app to read files that the user selects. The app has access for several hours after the user selects a file. |
| _Files.ReadWrite_ |   Have full access to user files and files shared with user | Allows the app to read, create, update and delete the signed-in user's files and files shared with the user. |
| _Files.ReadWrite.All_ | Have full access to all files user can access | Allows the app to read, create, update and delete all files the signed-in user can access. |
| _Files.ReadWrite.AppFolder_ | Have full access to the application's folder | Allows the app to read, create, update and delete files in the application's folder. |
| _Files.ReadWrite.Selected_ |    Read and write files that the user selects | Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. |
| _Mail.Read_ |    Read user mail | Allows the app to read email in user mailboxes. |
| _Mail.Read.Shared_ |    Read user and shared mail | Allows the app to read mail that the user can access, including the user's own and shared mail. |
| _Mail.ReadWrite_ |    Read and write access to user mail | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail.|
| _Mail.ReadWrite.Shared_ |    Read and write user and shared mail | Allows the app to create, read, update, and delete mail that the user has permission to access, including the user's own and shared mail. Does not include permission to send mail. |
| _Mail.Send_ |    Send mail as a user | Allows the app to send mail as users in the organization. |
| _Mail.Send.Shared_ |    Send mail on behalf of others | Allows the app to send mail as the signed-in user, including sending on-behalf of others. |
| _MailboxSettings.ReadWrite_ |  Read and write user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings. Does not include permission to send mail.|
| _offline_access_ |    Access user's data anytime (preview) | Allows the app to read and update user data, even when they are not currently using the app.|
| _openid_ |    Sign users in (preview) | Allows users to sign in to the app with their work or school accounts and allows the app to see basic user profile information.|
| _User.Read_       |    Sign-in and read user profile | Allows users to sign-in to the app, and allows the app to read the profile of signed-in users. The full profile includes all of the declared properties of the User entity. The app cannot read navigation properties, such as manager or direct reports. Also allows the app to read the following basic company information of the signed-in user (through the **TenantDetail** object): tenant ID, tenant display name, and verified domains.|
| _User.ReadWrite_ |    Read and write access to user profile | Allows the app to read your profile. It also allows the app to update your profile information on your behalf. |
| _User.ReadBasic.All_ |    Read all user's basic profiles | Allows the app to read the basic profile of all users in the organization on behalf of the signed-in user. The following properties comprise a user’s basic profile: display name, first and last name, photo, and email address. To read the groups that a user is a member of, the app will also require Group.Read.All or Group.ReadWrite.All.|

###Application permissions requiring administrator's consent

|   **Permission**    |  **Privilege**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _Calendars.Read_ |    Read calendars in all mailboxes | Allows the app to read events of all calendars without a signed-in user. |
| _Calendars.ReadWrite_ |    Read and write calendars in all mailboxes | Allows the app to create, read, update, and delete events of all calendars without a signed-in user.|
| _Contacts.Read_ |    Read contacts in all mailboxes | Allows the app to read all contacts in all mailboxes without a signed-in user. |
| _Contacts.ReadWrite_ |    Read and write contacts in all mailboxes  |Allows the app to create, read, update, and delete all contacts in all mailboxes without a signed-in user.|
| _Device.ReadWrite.All_ | Read and write devices | Allows the app to read and write all device properties without a signed in user. Does not allow device creation, device deletion or update of device alternative security identifiers. |
| _Directory.Read.All_ | Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps, without a signed-in user. |
| _Directory.ReadWrite.All_ | Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups, without a signed-in user. Does not allow user or group deletion. |
| _Files.Read.All_ | Read all files that user can access | Allows the app to read all files in all site collections without a signed in user. |
| _Files.ReadWrite.All_ | Have full access to all files user can access | Allows the app to read, create, update and delete all files in all site collections without a signed in user. |
| _Group.Read.All_ | Read all groups | Allows the app to read memberships for all groups without a signed-in user. Note that not all group API supports access using application permissions. See [known issues](../overview/release_notes.md#groups) for examples. |
| _Group.ReadWrite.All_ | Read and write all groups | Allows the app to create groups, read and update group memberships, and delete groups. All of these operations can be performed by the app without a signed-in user. Note that not all group API supports access using application permissions. See [known issues](../overview/release_notes.md#groups) for examples.|
| _Mail.Read_       |    Read mail in all mailboxes | Allows the app to read mail in all mailboxes without a signed-in user.|
| _Mail.ReadWrite_ |    Read and write mail in all mailboxes | Allows the app to create, read, update, and delete mail in all mailboxes without a signed-in user. Does not include permission to send mail. |
| _Mail.Send_ |    Send mail as any user | Allows the app to send mail as any user without a signed-in user. |
| _MailboxSettings.ReadWrite_ | Read and write all user mailbox settings  | Allows the app to create, read, update, and delete user's mailbox settings without a signed-in user. Does not include permission to send mail. |
| _Member.Read.Hidden_ | Read all hidden memberships | Allows the app to read the memberships of hidden groups and administrative units without a signed-in user. |
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports without a signed-in user. Services that provide usage reports include Office 365 and Azure Active Directory. |
| _User.Read.All_ |    Read all users' full profiles | Allows the app to read the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.|
| _User.ReadWrite.All_ |   Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.|


##Permissions in preview

###Permissions requiring administrator's consent (preview)

|   **Permission**    |  **Privilege**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information  (preview) | Allows the app to read identity risk event information for all users in your organization on behalf of the signed-in user.|



###Permissions not requiring administrator's consent (preview)

|   **Permission**    |  **Privilege**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _Notes.Create_ |    Create pages in users' notebooks (preview) | Allows the app to read the titles of notebooks and sections and create new pages, notebooks and sections on behalf of the signed-in user.|
| _Notes.Read_ |    Read user notebooks (preview) | Allows the app to view the titles of OneNote notebooks and sections and to read all pages on behalf of the signed-in user. It cannot view password protected sections. |
| _Notes.Read.All_ |    Read all notebooks that the user can access (preview) | Allows the app to read the contents of all notebooks and sections that the signed-in user can access.   It cannot read password protected sections. |
| _Notes.ReadWrite_ |    Read and write user notebooks (preview) | Allows the app to read the titles of notebooks and sections, read all pages, write all pages and create new pages on behalf of the signed-in user.  It cannot access password protected sections. |
| _Notes.ReadWrite.All_ |    Read and write notebooks that the user can access (preview) | Allows the app to read and write the contents of all notebooks and sections that the signed-in user can access.  It cannot access password protected sections.|
| _Notes.ReadWrite.CreatedByApp_ |    Limited notebook access (preview) | Allows the app to read the titles of notebooks and sections, create new pages on behalf of the signed-in user. Also allows the app to read and update pages created by the app. |
| _People.Read_ |    Read users' relevant people lists (preview) | Allows the app to read a ranked list of relevant people of the signed-in user. The list includes local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype).|
| _Sites.Read.All_ |    Read items in all site collections | Allows the application to read documents and list  items in all site collections on behalf of the signed-in user. |
| _Sites.ReadWrite.All_ |    Read and write items in all site collections | Allows the application to edit or delete documents and list items in all site collections on behalf of the signed-in user. |
| _Tasks.Read_ | Read user tasks | Allows the app to read user tasks. |
| _Tasks.Read.Shared_ | Read user and shared tasks | Allows the app to read tasks a user has permissions to access, including their own and shared tasks. |
| _Tasks.ReadWrite_ |    Create, read, update and delete user tasks and plans (preview) | Allows the app to create, read, update and delete tasks and plans (and tasks in them), that are assigned to or shared with the signed-in user.|
| _Tasks.ReadWrite.Shared_ | Read and write user and shared tasks | Allows the app to create, read, update, and delete tasks a user has permissions to, including their own and shared tasks. |



##Permission scenarios
The following are some app scenarios using the **user** and **group** resources and their corresponding required permissions. The following table shows the permissions needed for an app to be able to perform specific operations. Note that in some cases the ability of the app to perform some operations will depend on whether the permission is application or delegated, and, in the case of delegated permissions, on the privileges of the signed-in user.

###Access scenarios using the user resource and the required permissions

| **App tasks involving User**	 |  **Required permissions** | **Privilege** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  Read all user's basic profiles |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc)	 | _User.Read_ | Enable sign-in and read user profile|
| App wants to read complete user profile all users	 | _User.Read.All_ |  Read all user's full profiles   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendar.Read_ | Enable sign-in and read user profile, Read users' files,  Read user mail,  Read user calendars |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | Enable sign-in and read user profile, Read users' files,  Read items in all site collections |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | Read and write access to user profile |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | Read and write all user's full profiles |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendar.ReadWrite_  |  Read and write access to user profile,  Read and write access to user profile,  Read and write access to user mail, Have full access to user calendars |


###Access scenarios using the group resource and the required permissions

| **App tasks involving Group**	 |  **Required permissions** |  **Privilege** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | Read all groups|
| App wants to read all content in all Office 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | Read items in all site collections, Read all groups|
| App wants to read and write all content in all Office 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  Read and write all groups, Edit or delete items in all site collections |
| App wants to discover (find) an Office 365 group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | Read and write all groups|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | Read and write all groups|
