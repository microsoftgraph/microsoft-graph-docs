# List workingWith

Calculated insight for the list of users that a user has been working with.

## Prerequisites
One of the following **permissions** is required to execute this API: 
*Users.Read.All*

## HTTP request
```http
GET /me/workingWith
GET /users/{id | userPrincipalName}/workingWith
GET /drive/root/createdByUser/workingWith
GET /drive/root/lastModifiedByUser/workingWith
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Header         | Value                      |
|:---------------|:---------------------------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type   | application/json           |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a 200 OK response code and collection of [User](../resources/user.md) objects in the response body.

## Example
##### Request
```http
GET https://graph.microsoft.com/beta/me/workingWith
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 98

{
  "id": "id-value",
  "preferredName": "preferredName-value",
  "Email": "Email-value",
}
```