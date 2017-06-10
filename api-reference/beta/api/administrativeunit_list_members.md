# List members

Use this API to get the members list (user and group) in an administrative unit.

## Prerequisites
One of the following **scopes** is required to execute this API: *Directory.Read.All* or *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*.

> Note: To list the members of a hidden membership in an administrative unit, the *Member.Read.Hidden* scope is required.

## HTTP request

```http
GET /administrativeUnits/{id}/members
GET /administrativeUnits/{id}/members/$ref
```
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md) and/or [group](../resources/group.md) objects in the response body.  Instead, if you put `$ref` at the end of the request, the response will contain a collection of `@odata.id` links/URLs to the members.

## Examples
##### List member objects
The following request will list the members of the administrative unit, returning a collection of users and/or groups.

```http
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
 
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 100

{
  "value":[
    {
      "@odata.type":"#microsoft.graph.user",
      "id":"492c5308-59fd-4740-9c83-4b3db07a6d70"
      "accountEnabled":true,
      "businessPhones":[],
      "companyName":null,
      "displayName":"Demo User"
    },
    {
      "@odata.type":"#microsoft.graph.group",
      "id":"07eaa5c7-c9b6-45cf-8ff7-3147d5122caa",
      "description":"This group is the best ever",
      "displayName":"Awesome group"
    }
  ]
}
```

##### List member references
The following request will list the member references of the administrative unit, returning a collection of `@odata.id` references to the members.
```
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members/$ref
```
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
 
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 100

{
  "value":[
    {
      "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/492c5308-59fd-4740-9c83-4b3db07a6d70"
    },
    {
      "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/07eaa5c7-c9b6-45cf-8ff7-3147d5122caa"
    }
  ]
}
```
