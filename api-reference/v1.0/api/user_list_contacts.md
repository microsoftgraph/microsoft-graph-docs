# List contacts

Get a contact collection from the default Contacts folder of the signed-in user.
## Prerequisites
One of the following **scopes** is required to execute this API: 
*Contacts.Read; Contacts.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/contacts
GET /users/<id | userPrincipalName>/contacts
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [Contact](../resources/contact.md) objects in the response body.
## Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_contacts"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/contacts
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contact",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "id-value",
      "createdDateTime": "2015-11-09T02:14:32Z",
      "lastModifiedDateTime": "2015-11-09T02:14:32Z",
      "parentFolderId": "parentFolderId-value",
      "birthday": "datetime-value",
      "fileAs": "fileAs-value",
      "displayName": "Pavel Bansky",
      "emailAddresses": [
        {
          "address": "pavelb@fabrikam.onmicrosoft.com",
          "name": "Pavel Bansky"
        }
      ],
      "businessPhones": [
        "+1 732 555 0102"
      ],
      "givenName": "Pavel"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List contacts",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->