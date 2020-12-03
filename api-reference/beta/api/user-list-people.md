---
title: "List people"
description: "Retrieve a list of person objects ordered by their relevance to the user, which is determined by the user's communication and collaboration patterns, and business relationships."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "insights"
doc_type: apiPageType
---

# List people

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [person](../resources/person.md) objects ordered by their relevance to the [user](../resources/user.md), which is determined by the user's communication and collaboration patterns, and business relationships.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | People.Read    |
|Delegated (personal Microsoft account) | People.Read    |
|Application | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/people
GET /users/{id | userPrincipalName}/people
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response.

|Name|Value|Description|
|:---------------|:--------|:-------|
|$filter|string|Limits the response to only those people whose record contains the specified criteria.|
|$orderby|string|By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter.|
|$search|string|Search for people by name or alias. Supports Fuzzy matching. Parameter only works for searching the signed-in user's relevant people, not for searching people relevant to other users. Also supports the `topic` keyword to find people based on topics extracted from e-mail conversations with that person. See the *Perform a fuzzy search* section at [Get relevant information about people](/graph/people-example#perform-a-fuzzy-search) for information and examples.|
|$select|string|Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.|
|$skip|int|Skip the first n results, useful for paging. This is not supported when using *$search*.|
|$top|int|Number of results to be returned.|

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Accept | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [person](../resources/person.md) objects in the response body.

## Examples

### Browse

The requests in this section get the people most relevant to the signed-in user (`/me`), based on communication, collaboration, and business relationships.

By default, each response returns 10 records, but you can change this using the *$top* parameter. These requests require the People.Read permission.

#### Request

The following is an example of the default request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_person_collection_beta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/people
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-person-collection-beta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-person-collection-beta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-person-collection-beta-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-person-collection-beta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_collection_beta",
  "truncated": true,
  "@odata.type": "microsoft.graph.person",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1326

{
    "value": [
        {
            "id": "33b43a5b-87d6-41ec-91f8-a2610048105f",
            "displayName": "Marketing",
            "givenName": null,
            "surname": null,
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "title": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "mailboxType": "GroupMailbox",
            "personType": "ModernGroup",
            "userPrincipalName": "",
            "emailAddresses": [
                {
                    "address": "Marketing@contoso.com",
                    "rank": 30
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "sources": [
                {
                    "type": "Directory"
                }
            ]
        },
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
            "userPrincipalName": "IsaiahL@contoso.com",
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
    ]
}
```

#### Requesting a subsequent page of people

If the first response does not contain the complete list of relevant people, you can make a second request using *$top* and *$skip* to request additional pages of information. If the previous request has additional information, the following request gets the next page of people from the server.

```http
GET https://graph.microsoft.com/beta/me/people/?$top=10&$skip=10
```

#### Sort the response

By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter. This query selects the people most relevant to you, sorts them by their display name, and then returns the first 10 people on the sorted list.

```http
GET https://graph.microsoft.com/beta/me/people/?$orderby=DisplayName
```

#### Changing the number of people returned and the fields returned

You can change the number of people returned in the response by setting the *$top* parameter.

The following example requests the 1,000 people most relevant to `/me`. The request also limits the amount of data sent back from the server by requesting only the display name of the person.

```http
GET https://graph.microsoft.com/beta/me/people/?$top=1000&$select=DisplayName
```

#### Selecting the fields to return

You can limit the amount of data returned from the server by using the *$select* parameter to choose one or more fields. The *@odata.id* field is always returned.

The following example limits the response to the *DisplayName* and *EmailAddress* of the 10 most relevant people.

```http
GET https://graph.microsoft.com/beta/me/people/?$select=DisplayName,EmailAddresses
```

#### Using a filter to limit the response

You can use the *$filter* parameter to limit the response to only those people whose record contains the specified criteria.

The following query limits the response to people with the source "Directory."

```http
GET https://graph.microsoft.com/beta/me/people/?$filter=Sources/Any (source: source/Type  eq 'Directory')
```

#### Selecting the fields to return in a filtered response

You can combine the *$select* and *$filter* parameters to create a custom list of people relevant to the user and get only the fields that your application needs.

The following example gets the *DisplayName* and *EmailAddress* of people whose display name equals the specified name. In this example, only people whose display name equals "Nestor Kellum" are returned.

```http
+GET https://graph.microsoft.com/beta/me/people/?$select=DisplayName,EmailAddresses&$filter=DisplayName eq 'Nestor Kellum'
```

### Search people

The requests in this section also get the people most relevant to the signed-in user (`/me`). Search requests require the People.Read permission.

#### Using search to select people

Use the *$search* parameter to select people who meet a particular set of criteria.

The following search query returns people relevant to `/me` whose GivenName or Surname begins with the letter "j".

```http
GET https://graph.microsoft.com/beta/me/people/?$search=j
```

#### Using search to specify a relevant topic

The following request returns people relevant to `/me` whose name contains "ma" and who have an association with "feature planning."

```http
GET https://graph.microsoft.com/beta/me/people/?$search="ma topic: feature planning"
```

#### Performing a fuzzy search

The following request does a search for a person named "Hermaini Hall." Because there is a person named "Herminia Hull" relevant to the signed-in user, the information for "Herminia Hull" is returned.

```http
GET https://graph.microsoft.com/beta/me/people/?$search="hermaini hall"
```

### Related people

The following request gets the people most relevant to another person in the user's organization. This request requires the User.ReadBasic.All for People.Read.All permission. In this example, Nestor Kellum's relevant people are displayed.

```http
GET https://graph.microsoft.com/beta/users('nestork@contoso.com')/people/
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List people",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


