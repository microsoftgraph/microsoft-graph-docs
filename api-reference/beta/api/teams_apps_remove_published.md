# Remove an app from your organization's app catalog

Remove the [app](../resources/teamscatalogapp.md) from your organization's app catalog (the tenant app catalog). 
To remove your app from your organization's app catalog, specify `organization` as the **distributionMethod** in the [teamsCatalogApp](../resources/teamscatalogapp.md) resource.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

>**Note:** Only global administrators can call this API. 

| Permission Type                        | Permissions (from least to most privileged)|
|:----------------------------------     |:-------------|
| Delegated (work or school account)     | AppCatalog.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported|
| Application                            | Not supported|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |

## Request body

None.

>**Note:** Use the ID returned from the [List published apps](./teams_apps_list_published.md) call for to reference the app you'd like to update. Do not use the ID from the manifest of the zip app package.

## Response

```
HTTP/1.1 204 No Content
```

## Example

### Request

```
DELETE https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
```

### Response

```
HTTP/1.1 204 No Content
```
