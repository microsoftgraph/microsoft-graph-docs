# List the published apps from the Microsoft Teams app catalog

List [apps](../resources/teamscatalogapp.md) from the Microsoft Teams app catalog. 
This includes apps from the Microsoft Teams store, as well as apps from your organization's app catalog (the tenant app catalog). To get apps from your organization's app catalog only, specify `Organization` as the **distributionMethod** in the [teamsCatalogApp](../resources/teamscatalogapp.md) resource.

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

>**Note:** You can filter on any of the fields of the [teamsCatalogApp](../resources/teamscatalogapp.md) object to shorten the list of results. You can use any of the following filter operations: Equal, not-equal, and, or, and not.

## Response
If successful, this method returns a `200 OK` response code and list of [teamsCatalogApp](../resources/teamscatalogapp.md) objects in the response body.

## Example

List all applications that are specific to your tenant:

### Request
```
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps?$filter=distributionMethod eq 'organization'
```

### Response
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "developerProvidedId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod":"Organization"
    }
  ]
}
```

## Example

List applications with a given ID:

### Request
```
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps?$filter=id%20eq%20'b1c5353a-7aca-41b3-830f-27d5218fe0e5'
```

### Response
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "developerProvidedId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod":"Organization"
    }
  ]
}
```

