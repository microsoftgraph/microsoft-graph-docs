---
title: "Update contact"
description: "Update the properties of contact object."
author: "kevinbellinger"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# Update contact

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of contact object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Contacts.ReadWrite    |
|Delegated (personal Microsoft account) | Contacts.ReadWrite    |
|Application | Contacts.ReadWrite |

## HTTP request
<!-- { "blockType": "ignored" } -->
A [contact](../resources/contact.md) from user's default [contactFolder](../resources/contactfolder.md).
```http
PATCH /me/contacts/{id}
PATCH /users/{id | userPrincipalName}/contacts/{id}
```
A [contact](../resources/contact.md) from a user's top level [contactFolder](../resources/contactfolder.md).
```http
PATCH /me/contactFolders/{id}/contacts/{id}
PATCH /users/{id | userPrincipalName}/contactFolders/{id}/contacts/{id}
```
A [contact](../resources/contact.md) contained in a child folder of a [contactFolder](../resources/mailfolder.md).  The 
example below shows one level of nesting, but a contact can be located in a child of a child and so on.
```http
PATCH /me/contactFolder/{id}/childFolders/{id}/.../contacts/{id}
PATCH /users/{id | userPrincipalName}/contactFolders/{id}/childFolders/{id}/contacts/{id}
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assistantName|String|The name of the contact's assistant.|
|birthday|DateTimeOffset|The contact's birthday.|
|categories|String|The categories associated with the contact.|
|children|String||
|companyName|String|The name of the contact's company.|
|department|String|The contact's department.|
|displayName|String|The contact's display name. Note that later updates to other properties may cause an automatically generated value to overwrite the displayName value you have specified. To preserve a pre-existing value, always include it as displayName in an update operation.|
|emailAddresses|[typedEmailAddress](../resources/typedemailaddress.md) collection|The contact's email addresses.|
|fileAs|String|The name the contact is filed under.|
|gender |String |The contact's gender. |
|generation|String|The contact's generation.|
|givenName|String|The contact's given name.|
|imAddresses|String|The contact's instant messaging (IM) addresses.|
|initials|String|The contact's initials.|
|jobTitle|String|The contact’s job title.|
|manager|String|The name of the contact's manager.
|middleName|String|The contact's middle name.|
|nickName|String|The contact's nickname.|
|officeLocation|String|The location of the contact's office.|
|parentFolderId|String|The ID of the contact's parent folder.|
|personalNotes|String|The user's notes about the contact.|
|phones |[phone](../resources/phone.md) collection |Phone numbers associated with the contact, for example, home phone, mobile phone, and business phone. |
|postalAddresses |[physicalAddress](../resources/physicaladdress.md) collection |Addresses associated with the contact, for example, home address and business address. |
|profession|String|The contact's profession.|
|spouseName|String|The name of the contact's spouse/partner.|
|surname|String|The contact's surname.|
|title|String|The contact's title.|
|websites |[website](../resources/website.md) collection|Web sites associated with the contact. |
|weddingAnniversary |Date |The contact's wedding anniversary. |
|yomiCompanyName|String|The phonetic Japanese company name of the contact. This property is optional.|
|yomiGivenName|String|The phonetic Japanese given name (first name) of the contact. This property is optional.|
|yomiSurname|String|The phonetic Japanese surname (last name)  of the contact. This property is optional.|

Since the **contact** resource supports [extensions](/graph/extensibility-overview), you can use the `PATCH` operation to 
add, update, or delete your own app-specific data in custom properties of an extension in an existing **contact** instance.

## Response

If successful, this method returns a `200 OK` response code and updated [contact](../resources/contact.md) object in the response body.
## Example
##### Request
The following example updates the personal email address of the specified contact.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_contact"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/contacts/AAMkADh6v5AAAvgTCEAAA=
Content-type: application/json

{
    "emailAddresses":[
        {
            "type":"personal",
            "name":"Pavel Bansky",
            "address":"pavelb@adatum.onmicrosoft.com"
        },
        {
          "address": "pavelb@fabrikam.onmicrosoft.com",
          "name": "Pavel Bansky",
          "type": "other",
          "otherLabel": "Volunteer work"
        }
    ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-contact-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-contact-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-contact-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-contact-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contact"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('c3e1fcd2-db78-42a8-aec5-1f2cd59abb5c')/contacts/$entity",
    "@odata.etag":"W/\"EQAAABYAAACv7At+UNVFRLhGciJGF6v5AAAve7fh\"",
    "id":"AAMkADh6v5AAAvgTCEAAA=",
    "createdDateTime":"2018-06-11T19:56:07Z",
    "lastModifiedDateTime":"2018-06-11T20:26:23Z",
    "changeKey":"EQAAABYAAACv7At+UNVFRLhGciJGF6v5AAAve7fh",
    "categories":[

    ],
    "parentFolderId":"AAMkADh6v5AAAAAAEOAAA=",
    "birthday":null,
    "fileAs":"",
    "displayName":"Pavel Bansky",
    "givenName":"Pavel",
    "initials":null,
    "middleName":null,
    "nickName":null,
    "surname":"Bansky",
    "title":null,
    "yomiGivenName":null,
    "yomiSurname":null,
    "yomiCompanyName":null,
    "generation":null,
    "imAddresses":[

    ],
    "jobTitle":null,
    "companyName":null,
    "department":null,
    "officeLocation":null,
    "profession":null,
    "assistantName":null,
    "manager":null,
    "spouseName":null,
    "personalNotes":"",
    "children":[

    ],
    "gender":null,
    "isFavorite":null,
    "emailAddresses":[
        {
            "type":"personal",
            "name":"Pavel Bansky",
            "address":"pavelb@adatum.onmicrosoft.com"
        },
        {
            "type":"other",
            "otherLabel":"Volunteer work",
            "name":"Pavel Bansky",
            "address":"pavelb@fabrikam.onmicrosoft.com"
        }
    ],
    "websites":[

    ],
    "phones":[
        {
            "type":"business",
            "number":"+1 732 555 0102"
        }
    ],
    "postalAddresses":[

    ],
    "flag":{
        "flagStatus":"notFlagged"
    }
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
<!--
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update contact",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


