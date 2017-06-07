# List users

Retrieve a list of user objects.

## Prerequisites

One of the following **scopes** is required to execute this API:
*User.ReadBasic.All; User.Read.All; User.ReadWrite.All; Directory.Read.All; Directory.ReadWrite.All; Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users
```

## Optional query parameters

This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

<<<<<<< HEAD
By default, only a limited set of properties are returned (*businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName*). Use `$select` to customize which properties and relationships are returned for each  [user](../resources/user.md).
=======
By default, only a limited set of properties are returned (_businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName_). 

To return an alternative property set, you must specify the desired set of [user](../resources/user.md) properties using the ODATA `$select` query parameter. For example, to return _displayName_, _givenName_, _id_ and _postalCode_, you would use the add the following to your query `$select=displayName,givenName,postalCode`
>>>>>>> Fixed formatting

> Note: Certain properties cannot be returned within a user collection. The following properties are only supported when [retrieving an single user](./user_get.md): _aboutMe, birthday, hireDate, interests, mySite, pastProjects, preferredName, responsibilities, schools, skills, mailboxSettings_

## Request headers

| Header        | Value                      |
|:--------------|:---------------------------|
| Authorization | Bearer <token> (required)  |
| Content-Type  | application/json           | 

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [user](../resources/user.md) objects in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_users"
}-->
```http
GET https://graph.microsoft.com/v1.0/users
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 608

{
  "value": [
    {
      "businessPhones": [
        "businessPhones-value"
      ],
      "displayName": "displayName-value",
      "givenName": "givenName-value",
      "jobTitle": "jobTitle-value",
      "mail": "mail-value",
      "mobilePhone": "mobilePhone-value",
      "officeLocation": "officeLocation-value",
      "preferredLanguage": "preferredLanguage-value",
      "surname": "surname-value",
      "userPrincipalName": "userPrincipalName-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List users",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
