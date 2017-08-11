# Create domain

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Adds a domain to the tenant.

**Important**: You cannot use an associated domain with your Azure AD tenant until ownership is verified. See [List verificationDnsRecords](domain_list_verificationdnsrecords.md) for details. Root domains require verification. For example, contoso.com requires verification. If a root domain is verified, subdomains of the root domain are automatically verified. For example, subdomain.contoso.com is automatically be verified if contoso.com has been verified.

## Prerequisites

One of the following **scopes** is required to execute this API: *Domain.ReadWrite.All* or *Directory.AccessAsUser.All*

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /domains
```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type  | application/json |

## Request body
In the request body, supply a JSON representation of [domain](../resources/domain.md) object.

> The request body contains the id property for the new domain. Id is the only property that can be specified and it is required. The id property value is the fully qualified domain name to create.

## Response

If successful, this method returns `201, Created` response code and [domain](../resources/domain.md) object in the response body.

## Example
##### Request

In the request body, supply a JSON representation of [domain](../resources/domain.md) object.

<!-- {
  "blockType": "request",
  "id": "create_domain_from_domains"
}-->
```http
POST https://graph.microsoft.com/beta/domains
Content-type: application/json
Content-length: 192

{
  "id": "contoso.com"
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 192

{
  "authenticationType": "authenticationType-value",
  "availabilityStatus": "availabilityStatus-value",
  "id": "contoso.com",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create domain",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->