# Get settings

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Read the properties of the [settings](../resources/user_settings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All,User.ReadWrite.All |

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contributionToContentDiscoveryDisabled|Boolean|When set to true, the delegate access to the user's [Trending](../resources/insights_trending.md) API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Office 365, for example in Suggested sites SharePoint Home and the Discover view in OneDrive for Business is affected. Users can control this setting in [Office Delve](https://support.office.com/en-us/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout). |
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|Reflects the [organization level setting](https://support.office.com/en-us/article/office-delve-for-office-365-admins-54f87a42-15a4-44b4-9df0-d36287d9531b#bkmk_delveonoff) controlling delegate access to the [Trending](../resources/insights_trending.md) API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Office 365, for example in Suggested sites SharePoint Home and the Discover view in OneDrive for Business is affected for the whole organization. The setting is controlled by administrators in the [SharePoint admin center](https://support.office.com/en-us/article/about-the-office-365-admin-center-758befc4-0888-4009-9f14-0d147402fd23?ui=en-US&rs=en-US&ad=US).|

## HTTP request

```http
GET /me/settings/
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. See [Permissions](../../../concepts/permissions_reference.md).

```http
GET /users/{id | userPrincipalName}/settings/
```

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [user settings](../resources/user_settings.md) object in the response body.

## Example

##### Request

```http
GET https://graph.microsoft.com/beta/me/settings
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 72

{
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": false
}
```