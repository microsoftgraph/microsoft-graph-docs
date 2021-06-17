---
title: "File list component in the Microsoft Graph Toolkit"
description: "The file list component is used to display a list of files by showing their icon, and name"
localization_priority: Normal
author: beth-panx
---

# File list component in the Microsoft Graph Toolkit

The File List component displays [a list of multiple folders and files](/graph/api/resources/onedrive) by using the file/folder name, an icon, and other properties that you specify. This component uses the [mgt-file](./file.md) component. You can specify a specific drive or site, display a list of files based on insight type (trending, used, or shared), or provide queries to a custom list of files.

## Example

The following example displays a file using the `mgt-file-list` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-file-list--file-list&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-file-list--file-list&source=docs)

## Properties

You can use several properties to customize the component.

| Attribute | Property | Description |
| --------- | -------- | ----------- |
| file-list-query | fileListQuery | The full query or path to the drive or site that contains the list of files to render. |
| file-queries | fileQueries | An array of file queries to be rendered by the component. |
| none | files | An array of files to get or set the list of files rendered by the component. Use this to access the files loaded by the component. Set this value to load your own files. |
| insight-type | insightType | Set to show the user’s trending, used, or shared files. |
| drive-id | driveId | ID of the drive the folder belongs to. Must also provide either `item-id` or `item-path`. |
| group-id | groupId | ID of the group the folder belongs to. Must also provide either `item-id` or `item-path`. |
| site-id | siteId | ID of the site the folder belongs to. Must also provide either `{item-id}` or `{item-path}`. Provide `{list-id}` if you’re referencing a file from a specific list. |
| item-id | itemId | ID of the folder. Default query is `/me/drive/items`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| item-path | itemPath | Item path of the folder (relative to the root). Default query is `/me/drive/root`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| page-size | pageSize | A number value to indicate the maximum number of files to render on each page. |
| file-extensions | fileExtensions | An array of file extensions used to filter files to show. |
| hide-more-files-button | hideMoreFilesButton | A boolean to indicate whether to show a button to render more files. |

The following example changes the behavior of the component to fetch a file list from a specific query.

```html
<mgt-file-list file-list-query="/me/drive/items/01BYE5RZYJ43UXGBP23BBIFPISHHMCDTOY/children"></mgt-file-list>
```

The following example changes the behavior of the component to fetch a file list from a folder by providing the folder id.

```html
<mgt-file-list item-id="01BYE5RZYJ43UXGBP23BBIFPISHHMCDTOY"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list from a group by providing the group id and folder path.

```html
<mgt-file-list group-id="8090c93e-ba7c-433e-9f39-08c7ba07c0b3" item-path="/Design"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list from a user by providing the user id and folder id.

```html
<mgt-file-list user-id="48d31887-5fad-4d73-a9f5-3c356e68a038" item-id="01BYE5RZYFPM65IDVARFELFLNTXR4ZKABD"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list by providing the insight type.

```html
<mgt-file-list insight-type="shared"></mgt-file-list>
```

## Methods
| Method | Description |
| --- | --- |
| reload(clearCache = false) | Call the method to reload the component with potential new data based on its properties. Pass `true` to clear the cache before reloading. |

## CSS custom properties

The `mgt-file-list` component defines the following CSS custom properties.

```css
mgt-file-list {
  --font-family: 'Segoe UI';
  --font-size: 14px;

  --file-list-background-color: #ffffff;
  --file-list-border: none;
  --file-list-box-shadow: none;
  --file-list-padding: 4px 0;
  --file-list-margin: 0;

  --file-item-background-color--hover: rgba(0, 0, 0, 0.1);
  --file-item-background-color--active: rgba(0, 0, 0, 0.05);
  --file-item-border-radius: 2px;
  --file-item-margin: 0 4px;

  --file-item-border-top: none;
  --file-item-border-left: none;
  --file-item-border-right: none;
  --file-item-border-bottom: none;

  --show-more-button-background-color: #f3f2f1;
  --show-more-button-background-color--hover: rgba(0, 0, 0, 0.1);
  --show-more-button-font-size: 12px;
  --show-more-button-padding: 6px;
  --show-more-button-border-bottom-right-radius: 4px;
  --show-more-button-border-bottom-left-radius: 4px;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Microsoft Graph APIs and permissions

| Configuration | Permissions | API |
| ------------- | ----------------- | --- |
| Default (no identifiers or query provided) | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/root/children` |
| Provide `{drive-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /drives/{drive-id}/items/{item-id}/children` |
| Provide `{group-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /groups/{group-id}/drive/items/{item-id}/children` |
| Provide ONLY `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/items/{item-id}/children` |
| Provide `{site-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /sites/{site-id}/drive/items/{item-id}/children` |
| Pprovide `{user-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /users/{user-id}/drive/items/{item-id}/children` |
| Provide `{drive-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /drives/{drive-id}/root:/{item-path}:/children` |
| Provide `{group-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /groups/{group-id}/root:/{item-path}:/children` |
| Provide `{site-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /sites/{site-id}/root:/{item-path}:/children` |
| Provide `{user-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /users/{user-id}/root:/{item-path}:/children` |
| Provide only `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/root:/{item-path}:/children` |
| `insight-type` is set to trending | Sites.Read.All | `GET /me/insights/trending` |
| Provide `{user-id or upn}` AND `insight-type` is set to `trending` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/trending` |
| `insight-type` is set to `used` | Sites.Read.All | `GET /me/insights/used` |
| Provide `{user-id or upn}` AND `insight-type` is set to `used` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/used` |
| `insight-type` is set to shared | Sites.Read.All | `GET /me/insights/shared` |
| Provide `{user-id or upn}` AND `insight-type` is set to `shared` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/shared?$filter=((lastshared/sharedby/id eq '${user-id}') and (resourceReference/type eq 'microsoft.graph.driveItem'))` |

## Events

| Event | Description |
| ----- | ----------- |
| itemClick | Fired when the user clicks a file. Returns the file details. |

## Templates

The `mgt-file-list` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the data types listed in the following table.

| Data type | Data context | Description |
| ----------- | -------------- | ------------ |
| default | `files`: list of file objects | The default template replaces the entire component with your own. |
| file | `file`: file object | The template used to render each file. |
| no-data | No data context is passed | The template used when no data is available. |
| loading | No data context is passed | The template used while the component loads state. |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

|Object store|Cached data|Remarks|
|---------|-----------|-------|
|`fileLists`|List of file lists|Default cache list to store file lists.|
|`insightfileLists`|List of insight file lists|Used when `insightType` is provided.|

> [!NOTE]
> The `mgt-file-list` component also uses the `fileQueries` object store in `mgt-file` IndexedDB to cache files when `fileQueries` is provided.

For details about how to configure the cache, see [Caching](../customize-components/cache.md).