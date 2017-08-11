# Get person

Retrieve the properties and relationships of a [person](../resources/person.md) object.

You can get this information via the People API. For examples, see the [Examples](#examples) section and the article [Get relevant information about people](../../../concepts/people_example.md).

## Prerequisites
The following **permissions** are required to execute portions of this API: *People.Read*; *People.Read.All*
 
## HTTP request
<!-- { "blockType": "ignored" } -->

```http
GET /me/people/?$search='{property_value}'
GET /me/people/?$filter={person_property} eq '{property_value}'
```

## Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$filter|string|Limits the response to only those people whose record contains the specified criteria.|
|$orderby|string|By default, the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter.|
|$search|string|Search for people by name or alias. Supports fuzzy matching.|
|$select|string|Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.|
|$skip|int|Skip the first n results, useful for paging. This is not supported when using *$search*.|
|$top|int|Number of results to be returned.|

## Parameters
| Parameter |Type       |Description|
|:----------|:----------|:----------|
|property_value|String     |The value of the extended property to match. Required where listed in the **HTTP request** section.|
|person_property|String    |The person property to match. Required where listed in the **HTTP request** section.|

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a [person](../resources/person.md) object in the response body. The response can contain one person instance or a collection of person instances. 
## Examples
### Perform a search 
The following request does a search for a person named Irene McGowan. 

<!-- {
  "blockType": "request",
  "name": "get_person"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search="Irene McGowan"
```

The following example shows the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
       {
           "id": "C0BD1BA1-A84E-4796-9C65-F8A0293741D1",
           "displayName": "Irene McGowan",
           "givenName": "Irene",
           "surname": "McGowan",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": "Auditor",
           "companyName": null,
           "yomiCompany": "",
           "department": "Finance",
           "officeLocation": "12/1110",
           "profession": "",
           "userPrincipalName": "irenem@contoso.onmicrosoft.com",
           "imAddress": "sip:irenem@contoso.onmicrosoft.com",
           "scoredEmailAddresses": [
               {
                   "address": "irenem@contoso.onmicrosoft.com",
                   "relevanceScore": -16.446060612802224
               }
           ],
           "phones": [
               {
                   "type": "Business",
                   "number": "+1 412 555 0109"
               }
           ],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       }
   ]
}
```
### Select the fields to return in a filtered response 
You can combine the *$select* and *$filter* parameters to create a custom list of people relevant to the user and get only the fields that your application needs. 

The following example gets the **displayName** and **scoredEmailAddresses** of people whose display name equals the specified name. In this example, only people whose display name equals "Lorrie Frye" are returned. 

<!-- {
  "blockType": "request",
  "name": "get_person"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/people/?$select=displayName,scoredEmailAddresses&$filter=displayName eq 'Lorrie Frye'
```

The following example shows the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Lorrie Frye",
            "scoredEmailAddresses": [
                {
                    "address": "Lorrief@contoso.onmicrosoft.com",
                    "relevanceScore": 8
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
  "description": "Get person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
