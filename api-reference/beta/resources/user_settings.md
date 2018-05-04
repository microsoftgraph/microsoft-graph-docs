# settings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

User settings.

This resource supports:

- Checking whether a user and the user's organization contribute to content discovery.
- Disabling or enabling content discovery for specific users. This also disables documents in Office Delve.

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
|contributionToContentDiscoveryDisabled|Boolean|When set to true, the delegate access to the user's [trending](insights_trending.md) API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Office 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected. Users can control this setting in [Office Delve](https://support.office.com/en-us/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout). |
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|Reflects the [organization level setting](https://support.office.com/en-us/article/office-delve-for-office-365-admins-54f87a42-15a4-44b4-9df0-d36287d9531b#bkmk_delveonoff) controlling delegate access to the [trending](insights_trending.md) API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Office 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected for the whole organization. The setting is controlled by administrators in the [SharePoint admin center](https://support.office.com/article/about-the-office-365-admin-center-758befc4-0888-4009-9f14-0d147402fd23?ui=en-US&rs=en-US&ad=US).|

## JSON representation

Here is a JSON representation of the resource.

```json
{
  "contributionToContentDiscoveryDisabled": true,
  "contributionToContentDiscoveryAsOrganizationDisabled": true
}

```