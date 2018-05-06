# Use the OneNote REST API

Microsoft Graph lets your app get authorized access to a user's OneNote notebooks, sections, and pages in a personal or organization account. With the [appropriate delegated or application permissions](../../../concepts/permissions_reference.md#notes-permissions), your app can access the OneNote data of the signed-in user or any user in a tenant.

## Root URL
The OneNote service root URL uses the following format for all calls to the OneNote API.
```
https://graph.microsoft.com/{version}/{location}/onenote/ 
```
The location can be user notebooks on Office 365 or consumer OneDrive, group notebooks, or SharePoint site-hosted team notebooks on Office 365. 

The `version` segment in the URL represents the version of Microsoft Graph that you want to use:

- `v1.0` is for stable production code.
- `beta` is to try out a feature that's in development. Features and functionality in the beta endpoint might change; we don't recommend that you use it in your production code.


### User notebooks
To access personal notebooks on consumer OneDrive or OneDrive for Business, use one of the following URLs:

```
https://graph.microsoft.com/{version}/me/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{userPrincipalName}/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```

- `me` is for OneNote content that the current user can access (owned and shared).
- `users/{id}` is for OneNote content that the specified user (in the URL) has shared with the current user. Use the [users](users.md) API.
> **Note:**
> You can get user IDs by making a GET request on `https://graph.microsoft.com/v1.0/users`.

### Group notebooks
To access notebooks that are owned by a group, use the following service root URL:

```
https://graph.microsoft.com/{version}/groups/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```
### SharePoint site notebooks

To access notebooks that are owned by a SharePoint team site, use the following service root URL:

```
https://graph.microsoft.com/{version}/sites/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```






