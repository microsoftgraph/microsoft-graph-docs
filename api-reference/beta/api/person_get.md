# Get person

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of a [person](../resources/person.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).
 
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | People.Read, User.ReadBasic.All    |
|Delegated (personal Microsoft account) | People.Read    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/people/{id}
GET /users/{id | userPrincipalName}/people/{id}
```

## Optional query parameters
This method supports the following OData query parameters to help customize the response.

|Name|Value|Description| 
|:---------------|:--------|:-------| 
|$filter|string|Limits the response to only those people whose record contains the specified criteria.| 
|$orderby|string|By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter.| 
|$search|string|Search for people by name or alias. Supports Fuzzy matching.| 
|$select|string|Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.| 
|$skip|int|Skip the first n results, useful for paging. This is not supported when using *$search*.| 
|$top|int|Number of results to be returned.| 

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [person](../resources/person.md) object in the response body.

## Examples
#### Request 1
The following is an example of the request that gets the person who has this ID in the user's organization. 

<!-- {
  "blockType": "request",
  "name": "get_person_by_id_beta"
}-->
```http
GET https://graph.microsoft.com/beta/me/people/e3d0513b-449e-4198-ba6f-bd97ae7cae85
```

#### Response 1
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id_beta",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 594

{
    "id": "e3d0513b-449e-4198-ba6f-bd97ae7cae85",
    "displayName": "Isaiah Langer",
    "givenName": "Isaiah",
    "surname": "Langer",
    "birthday": "",
    "personNotes": "",
    "isFavorite": false,
    "title": "Web Marketing Manager",
    "companyName": null,
    "yomiCompany": "",
    "department": "Sales & Marketing",
    "officeLocation": "20/1101",
    "profession": "",
    "mailboxType": "Mailbox",
    "personType": "Person",
    "emailAddresses": [
        {
            "address": "IsaiahL@contoso.com",
            "rank": 20
        }
    ],
    "phones": [
        {
            "type": "business",
            "number": "+1 918 555 0101"
        }
    ],
    "postalAddresses": [],
    "websites": [],
    "sources": [
        {
            "type": "Directory"
        }
    ]
}
```

#### Request 2
The following is an example of the request that gets the person who has this ID in the user's organization and restricts the response to the selected properties. 

<!-- {
  "blockType": "request",
  "name": "get_person_by_id_with_select_beta"
}-->
```http
GET https://graph.microsoft.com/beta/me/people/e3d0513b-449e-4198-ba6f-bd97ae7cae85?$select=displayName
```

#### Response 2
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id_with_select_beta",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 304

{
  "id": "e3d0513b-449e-4198-ba6f-bd97ae7cae85",
  "displayName": "Isaiah Langer"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
