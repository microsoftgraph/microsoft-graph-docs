# List contacts

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get contacts in the user's mailbox.

There are two scenarios where an app can get contacts in another user's contact folder:

* If the app has application permissions, or,
* If the app has the appropriate delegated [permissions](#permissions) from one user, and another user has shared a contact folder with that user, or, has given delegated access to that user. See [details and an example](../../../concepts/outlook-get-shared-contacts-folders.md).


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Contacts.Read, Contacts.ReadWrite    |
|Delegated (personal Microsoft account) | Contacts.Read, Contacts.ReadWrite    |
|Application | Contacts.Read, Contacts.ReadWrite |

## HTTP request

To get all the contacts in a user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/contacts
GET /users/{id | userPrincipalName}/contacts
```

To get contacts in a specific folder in the user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/contactfolders/{Id}/contacts
GET /users/{id | userPrincipalName}/contactfolders/{id}/contacts

GET /me/contactFolder/{id}/childFolders/{id}/.../contacts
GET /users/{id | userPrincipalName}/contactFolders/{id}/childFolders/{id}/contacts
```
## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

For example, you can use the `$filter` query parameter to filter contacts based on the domain of their email addresses:

`https://graph.microsoft.com/v1.0/me/contacts?$filter=emailAddresses/any(a:a/address eq '@domain.com')`

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [contact](../resources/contact.md) objects in the response body.
## Example
##### Request
The following example gets the **displayName** and **emailAddresses** properties of the signed-in user's contacts.
<!-- {
  "blockType": "request",
  "name": "get_contacts"
}-->
```http
GET https://graph.microsoft.com/beta/me/contacts?$select=displayName,emailAddresses
```


##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('c3e1fcd2-db78-42a8-aec5-1f2cd59abb5c')/contacts(displayName,emailAddresses)",
    "value":[
        {
            "@odata.etag":"W/\"EQAAABYAAACv7At+UNVFRLhGciJGF6v5AAAve7f6\"",
            "id":"AAMkADh6v5AAAvgTCFAAA=",
            "displayName":"Elvis Blank",
            "emailAddresses":[
                {
                    "type":"personal",
                    "name":"Elvis Blank",
                    "address":"elvisb@relecloud.onmicrosoft.com"
                },
                {
                    "type":"other",
                    "otherLabel":"Volunteer work",
                    "name":"Elvis Blank",
                    "address":"elvisb@fabrikam.onmicrosoft.com"
                }
            ]
        },
        {
            "@odata.etag":"W/\"EQAAABYAAACv7At+UNVFRLhGciJGF6v5AAAve7fn\"",
            "id":"AAMkADh6v5AAAvgTCEAAA=",
            "displayName":"Pavel Bansky",
            "emailAddresses":[
                {
                    "type":"personal",
                    "name":"Pavel Bansky",
                    "address":"pavelb@contoso.onmicrosoft.com"
                },
                {
                    "type":"other",
                    "otherLabel":"Volunteer work",
                    "name":"Pavel Bansky",
                    "address":"pavelb@fabrikam.onmicrosoft.com"
                }
            ]
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
