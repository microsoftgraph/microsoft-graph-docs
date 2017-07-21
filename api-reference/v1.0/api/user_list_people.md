# List people

Retrieve a list of [person](../resources/person.md) objects ordered by their relevance to the [user](../resources/user.md), which is determined by 
the user's communication, collaboration and business relationships.
## Prerequisites
The following **scopes** are required to execute this API: *People.Read*
 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/people
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.


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
##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_person_collection"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/people
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 346

{
  "value": [
    {
      "personType": [
        {
          "class": "class-value",
          "subclass": "subclass-value"
        }
      ],
      "displayName": "displayName-value",
      "givenName": "givenName-value",
      "surname": "surname-value",
      "jobTitle": "jobTitle-value",
      "scoredEmailAddresses": [
        {
          "address": "address-value",
          "relevanceScore": "relevanceScore-value"
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
  "description": "List people",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
