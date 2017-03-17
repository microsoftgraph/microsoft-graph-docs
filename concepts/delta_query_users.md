# Get incremental changes for users (preview)

[Delta query](./delta_query_overview.md) lets you query for additions, deletions, or updates to users, by way of a series of [delta](../api-reference/beta/api/user_delta.md) function calls. Delta query enables you discover changes to users without having to fetch the entire set of users from Microsoft Graph and compare changes.

Delta query supports both full synchronization that retrieves all of the users in a tenant, and incremental synchronization that retrieves only the users that have changed since the last synchronization. Typically, you would do an initial full synchronization of all the users in a tenant, and subsequently, get incremental changes to users periodically. 

## Tracking user changes

Tracking user changes is a round of one or more GET requests with the **delta** function. You make a GET request much like the way you [list users](../api-reference/beta/api/user_list.md), except that you include the following:

- The **delta** function.
- A [state token](./delta_query_overview.md) (_deltaToken_ or _skipToken_) from the previous GET **delta** function call.

## Example

The following example shows a series  requests to track changes to users:

1. [Initial request](#initial-request) and [response](#initial-response)
2. [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. [Final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. [deltaLink request](#deltalink-request) and [deltaLink response](#deltalink-response)

## Initial request

To begin tracking changes in the user resource, you make a request including the delta function on the user resource. 

Note the following:

- The optional $select query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The initial request does not include a state token. State tokens will be used in subsequent requests.

``` http
GET https://graph.microsoft.com/beta/users/delta?$select=displayName,givenName,surname
```

### Initial response

If successful, this method returns `200, OK` response code and [user](../api-reference/beta/resources/user.md) collection object in the response body. Assuming the entire set of users is too large, the response will also include a nextLink state token.

In this example, a nextLink URL is returned indicating there are additional pages of data to be retrieved in the session. The $select query parameter from the initial request is encoded into the nextLink URL.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users(displayName,givenName,surname)",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhZRi1hQ7Spe__dpvm3U4zReE4CYXC2zOtaKdi7KHlUtC2CbRiBIUwOxPKLa",
  "value": [
    {
      "displayName":"Testuser1",
      "givenName":"John",
      "surname":"Doe",
      "id":"ffff7b1a-13b6-477b-8c0c-380905cd99f7"
    },
    {
      "displayName":"Testuser2",
      "givenName":"Jane",
      "surname":"Doe",
      "id":"605d1257-ffff-40b6-8e6f-528a53f5dc55"
    }
  ]
}
```

## nextLink request

The second request specifies the `skipToken` returned from the previous response. Notice the `$select` parameter is not required, as the `skipToken` encodes and includes it.

``` http
GET https://graph.microsoft.com/beta/users/delta?$skiptoken=oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhZRi1hQ7Spe__dpvm3U4zReE4CYXC2zOtaKdi7KHlUtC2CbRiBIUwOxPKLa
```

## nextLink response

The response contains a `nextLink` and another `skipToken`, indicating there are more users available. You continue making requests using the nextLink URL until a deltaLink URL is returned in the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"Testuser3",
      "givenName":"Pat",
      "surname":"Doe",
      "id":"d8c37826-ffff-4cae-b348-e2725b1e814b"
    },
    {
      "displayName":"Testuser4",
      "givenName":"Meghan",
      "surname":"Doe",
      "id":"8b1ee412-cd8f-4d59-ffff-24010edb9f1f"
    }
  ]
}
```

## Final nextLink request

The third request continues to use the latest `skipToken` returned from the last sync request. 

``` http
GET https://graph.microsoft.com/beta/users/delta?$skiptoken=oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhaOYDE2VPA4vxIPA90-P6OzGd6Rvku5fDgBRIGS
```

## Final nextLink response

When the deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource. Save the `deltaToken` and use it in the request URL to discover changes to users. 

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/beta/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460",
  "value": [
    {
      "displayName":"Testuser5",
      "givenName":"Al",
      "surname":"Doe",
      "id":"25dcffff-959e-4ece-9973-e5d9b800e8cc"
    },
    {
      "displayName":"Testuser6",
      "givenName":"Sam",
      "surname":"Doe",
      "id":"f6ede700-27d0-4c42-bfb9-4dffff43c74a"
    }
  ]
}
```

## deltaLink request

Using the `deltaToken` from the [last response](#final-nextlink-response), you will be able to get changed (by being added, deleted, or updated) users since the last request.

``` http
GET https://graph.microsoft.com/beta/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460
```

## deltaLink response

If no changes have occurred, the same `deltatoken` is returned with no results.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/beta/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460",
  "value": []
}
```

If changes have occurred, the same `deltatoken` is returned including a collection of changed users.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/beta/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460",
  "value": [
    {
      "displayName":"Testuser7",
      "givenName":"Joe",
      "surname":"Doe",
      "id":"25dcffff-959e-4ece-9973-e5d9b800e8cc"
    },
    {
      "removed":"changed",
      "id":"8ffff70c-1c63-4860-b963-e34ec660931d"
    }
}
```
## See also
[Microsoft Graph delta query](../concepts/delta_query_overview.md) overview.