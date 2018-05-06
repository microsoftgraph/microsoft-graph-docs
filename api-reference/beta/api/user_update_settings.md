# Update settings

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of the [settings](../resources/user_settings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite, User.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.ReadWrite.All |

## HTTP request

```http
PATCH /me/settings/
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. See [Permissions](../../../concepts/permissions_reference.md). 

```http
PATCH /users/{id | userPrincipalName}/settings/
```

Only members of the [Organization Management](https://support.office.com/article/permissions-in-the-office-365-security-compliance-center-d10608af-7934-490a-818e-e68f17d0e9c1?ui=en-US&rs=en-US&ad=US) role group can update the 'contributionToContentDiscoveryDisabled' property of other users. 

## Request headers

| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contributionToContentDiscoveryDisabled|Boolean|Set to true do disable delegate access to the [Trending](../resources/insights_trending.md) API. Set to true to disable access to documents in Office Delve for the user. Setting to true affects the relevance of the content displayed in Office 365, for example, Suggested sites in SharePoint Home and the Discover view in OneDrive for Business show less relevant results. Users can control this setting in [Office Delve](https://support.office.com/en-us/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout).|

## Example

##### Request

Here is an example of the request.

```http
PATCH https://graph.microsoft.com/beta/me
Content-type: application/json
Content-length: 37

{
  "contributionToContentDiscoveryDisabled": true
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 72

{
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": true
}
```