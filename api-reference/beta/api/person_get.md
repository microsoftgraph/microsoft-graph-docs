# Get person

Retrieve the properties and relationships of a person object.
## Prerequisites
One of the following **permissions** is required to execute this API: *People.Read*; *User.ReadBasic.All*
 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/people/{id}
GET /users/{id}/people/{id}
```
## Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$filter|string|Limits the response to only those people whose record contains the specified criteria.|
|$orderby|string|By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter.|
|$search|string|Search for people by name or alias. Supports Fuzzy matching|
|$select|string|Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.|
|$skip|int|Skip the first n results, useful for paging. This is not supported when using *$search*.|
|$top|int|Number of results to be returned.|

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [person](../resources/person.md) object in the response body.
## Examples
#### Browse
The following request gets the people most relevant to the user, based on communication, collaboration, and business relationships. By default, each response returns 10 records, but you can change this using the *$top* parameter. This request requires the *People.Read* scope.

<!-- {
  "blockType": "request",
  "name": "get_person"
}-->
```http
GET https://graph.microsoft.com/beta/me/people/
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 196

{
  "displayName": "displayName-value",
  "givenName": "givenName-value",
  "surname": "surname-value",
  "birthday": "birthday-value",
  "personNotes": "personNotes-value",
  "isFavorite": true
}
```

##### Requesting a subsequent page of people
If the first response does not contain the complete list of relevant people, you can make a second request using *$top* and *$skip* to request additional pages of information. If the previous request has additional information, the following request gets the next page of people from the server.

```http
GET https://graph.microsoft.com/beta/me/people/?$top=10&$skip=10
```

##### Sort the response
By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter. This query selects the people most relevant to you, sorts them by their display name, and then returns the first 10 people on the sorted list.

```http
GET https://graph.microsoft.com/beta/me/people/?$orderby=DisplayName
```
##### Changing the number of people returned and the fields returned
You can change the number of people returned in the response by setting the *$top* parameter. 

The following example requests the 1,000 most relevant people. The request also limits the amount of data sent back from the server by requesting only the display name of the person.


```http
GET https://graph.microsoft.com/beta/me/people/?$top=1000&$Select=DisplayName
```
##### Selecting the fields to return
You can limit the amount of data returned from the server by using the *$select* parameter to choose one or more fields. The *@odata.id* field is always returned.

The following example limits the response to the *DisplayName* and *EmailAddress* of the 10 most relevant people.

```http
GET https://graph.microsoft.com/beta/me/people/?$select=DisplayName,EmailAddresses
```
##### Using a filter to limit the response
You can use the *$filter* parameter to limit the response to only those people whose record contains the specified criteria. 

The following query limits the response to people with the source "Directory."


```http
GET https://graph.microsoft.com/beta/me/people/?$Filter=Sources/Any (source: source/Type  eq 'Directory')
```

##### Selecting the fields to return in a filtered response

You can combine the *$select* and *$filter* parameters to create a custom list of people relevant to the user and get only the fields that your application needs. 

The following example gets the *DisplayName* and *EmailAddress* of people whose display name equals the specified name. In this example, only people whose display name equals "Nestor Kellum" are returned. 


```http
GET https://graph.microsoft.com/beta/me/people/?$select=DisplayName,EmailAddresses&$Filter=DisplayName eq 'Nestor Kellum'
```

#### Search people
Search requests require the *People.Read* scope.

##### Using search to select people

Use the *$search* parameter to select people who meet a particular set of criteria. 

The following search query returns relevant people whose GivenName or Surname begins with the letter "j".

```http
GET https://graph.microsoft.com/beta/me/people/?$search=j
```
##### Using search to specify a relevant topic

The following request returns relevant people whose name contains "ma" and who have an association with "feature planning."

```http
GET https://graph.microsoft.com/beta/me/people/?$search="ma topic: feature planning"
```
##### Performing a fuzzy search

The following request does a search for a person named "Hermaini Hall." Because there is a relevant person named "Herminia Hull," the information for "Herminia Hull" is returned.

```http
GET https://graph.microsoft.com/beta/me/people/?$search="hermaini hall"
```
#### Related people

The following request gets the people most relevant to another person in the user's organization. This request requires the *User.ReadBasic.All* scope. In this example, Nestor Kellum's relevant people are displayed.

```http
GET https://graph.microsoft.com/beta/users('nestork@contoso.com')/people/
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
