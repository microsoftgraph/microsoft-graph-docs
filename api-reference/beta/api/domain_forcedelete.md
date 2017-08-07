# domain: forceDelete

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Deletes a domain using an asynchronous operation.

The following actions are performed as part of this operation:

* Renames the UPN, EmailAddress, and ProxyAddress of users with references to the deleted domain.

* Renames the EmailAddress of groups with references to the deleted domain.

* Renames the identifierUris of applications with references to the deleted domain.

* If the number of objects to be renamed is greater than 100, an error is returned.

* If one of the applications to be renamed is a multi-tenant app, an error is returned.

After the domain deletion completes, API operations for the deleted domain will return a 404 HTTP response code. To verify deletion of a domain, you can perform a [get domain](domain_get.md). If the domain was successfully deleted, a 404 HTTP response code will be returned in the response.

## Prerequisites

One of the following **scopes** is required to execute this API: *Domain.ReadWrite.All* or *Directory.AccessAsUser.All*

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /domains/{id}/forceDelete
```

> For {id}, specify the domain with its fully qualified domain name.

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type  | application/json |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|disableUserAccounts|Boolean| Option to disable renamed user accounts. If a user account is disabled, the user will not be allowed to sign in.<br>*True* (default) - User accounts renamed as part of this operation are disabled.<br>*False* - User accounts renamed as part of this operation are not disabled. |

### Response

If successful, this method returns `200, OK` response code. 

## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "domain_forcedelete"
}-->
```http
POST https://graph.microsoft.com/beta/domains/contoso.com/forceDelete
Content-type: application/json
Content-length: 33

{
  "disableUserAccounts": true
}
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->

```http
HTTP/1.1 200 OK
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domain: forcedelete",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->