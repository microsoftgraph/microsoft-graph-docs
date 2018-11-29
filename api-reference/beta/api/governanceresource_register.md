# Register governanceResource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Register an unmanaged Azure subscription or management group to PIM service.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

Besides the permission scope, this API requires the requestor already has the write permission to the Azure resource.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedAccess/azureResources/resources/register
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|

### Request body

|Parameters	     |Type	                 |Required |Description|
|:-------------|:----------------------|:--------|:----------|
|externalId        |String                 |✓        |The external id of the resource, representing its original id in the external system. For example, a subscription resource's external id can be "/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737ac".|

### Response
If successful, this method returns a `200 OK` response code.

## Example
This example shows how to onboard subscription "Wingtip Toys - Prod".
<!-- {
  "blockType": "request",
  "name": "register_governanceresource"
}-->
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/azureResources/resources/register
```
##### Request body
```json
{
    "externalId": "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d",
}
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.governanceResource"
} -->
```http
HTTP/1.1 200
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Register governanceResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
