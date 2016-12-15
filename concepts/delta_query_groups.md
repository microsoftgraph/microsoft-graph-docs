# Get incremental changes for groups (preview)

[Delta query](./delta_query_overview.md) lets you query for additions, deletions, or updates to groups, by way of a series of [delta](../api-reference/beta/api/group_delta.md) function calls. Delta query enables you discover changes to groups 
without having to fetch the entire set of groups from Microsoft Graph and compare changes.

Delta query supports both full synchronization that retrieves all of the groups in a tenant, and incremental synchronization that retrieves only the groups that have changed since the last synchronization. Typically, you would do an initial full synchronization of all the groups in a tenant, and subsequently, get incremental changes to groups periodically. 

## Tracking group changes

Tracking group changes is a round of one or more GET requests with the **delta** function. You make a GET
request much like the way you [list groups](../api-reference/beta/api/group_list.md), except that you include the following:

- The **delta** function.
- A [state token](./delta_query_overview.md#state-tokens) (_deltaToken_ or _skipToken_) from the previous GET **delta** function call.

## Example

The following example shows a series  requests to track changes to groups:

1. [Initial request](#initial-request) and [response](#initial-response)
2. [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. [Final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. [deltaLink request](#deltalink-request) and [deltaLink response](#deltalink-response)

## Initial request

To begin tracking changes in the group resource, you make a request including the delta function on the group resource. 

Note the following:

- The optional $select query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The initial request does not include a state token. State tokens will be used in subsequent requests.

``` http
GET https://graph.microsoft.com/beta/groups/delta?$select=displayName,description
```

### Initial response

If successful, this method returns `200, OK` response code and [group](../api-reference/beta/resources/group.md) collection object in the response body. Assuming the entire set of groups is too large, the response will also include a nextLink state token.

In this example, a nextLink URL is returned indicating there are additional pages of data to be retrieved in the session. The $select query parameter from the initial request is encoded into the nextLink URL.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups(displayName,description)",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ",
  "value": [
    {
      "displayName":"TestGroup1",
      "description":"Employees in test group 1",
      "id":"c2f798fd-f95d-4623-8824-63aec21fffff"
    },
    {
      "displayName":"TestGroup2",
      "description":"Employees in test group 2",
      "id":"ec22655c-8eb2-432a-b4ea-8b8a254bffff"
    }
  ]
}
```

## nextLink request

The second request specifies the `skipToken` returned from the previous response. Notice the `$select` parameter is not required, as the `skipToken` encodes and includes it.

``` http
GET https://graph.microsoft.com/beta/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ
```

## nextLink response

The response contains a `nextLink` and another `skipToken`, indicating there are more groups available. You continue making requests using the nextLink URL until a deltaLink URL is returned in the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"TestGroup3",
      "description":"Employees in test group 3",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957"
    },
    {
      "displayName":"TestGroup4",
      "description":"Employees in test group 4",
      "id":"421e797f-9406-4934-b778-4908421e3505"
    }
  ]
}
```

## Final nextLink request

The third request continues to use the latest `skipToken` returned from the last sync request. 

``` http
GET https://graph.microsoft.com/beta/groups/delta?$skiptoken=ppqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7
```

## Final nextLink response

When the deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource. Save the `deltaToken` and use it in the request URL to discover changes to groups. 

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
    {
      "displayName":"TestGroup5",
      "description":"Employees in test group 5",
      "id":"bed7f0d4-750e-4e7e-ffff-169002d06fc9"
    },
    {
      "displayName":"TestGroup6",
      "description":"Employees in test group 6",
      "id":"421e797f-9406-ffff-b778-4908421e3505"
    }
  ]
}
```

## deltaLink request

Using the `deltaToken` from the [last response](#final-nextlink-response), you will be able to get changed (by being added, deleted, or updated) groups since the last request.

``` http
GET https://graph.microsoft.com/beta/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw
```

## deltaLink response

If no changes have occurred, the same `deltatoken` is returned with no results.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": []
}
```

If changes have occurred, the same `deltatoken` is returned including a collection of changed groups.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
    {
      "displayName":"TestGroup7",
      "description":"Employees in test group 7",
      "id":"f764235c-ffff-4843-a14a-1d8826967260"
    }
  ]
}
```

## See also
[Microsoft Graph delta query](../concepts/delta_query_overview.md) overview.