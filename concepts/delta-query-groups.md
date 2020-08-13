---
title: "Get incremental changes for groups"
description: "Delta query lets you query for additions, deletions, or updates to groups, by way of a series of delta function calls. Delta query enables you discover changes to groups"
author: "davidmu1"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Get incremental changes for groups

[Delta query](./delta-query-overview.md) lets you query for additions, deletions, or updates to groups, by way of a series of [delta](/graph/api/group-delta?view=graph-rest-1.0) function calls. Delta query enables you discover changes to groups
without having to fetch the entire set of groups from Microsoft Graph and compare changes.

Clients using synchronizing groups with a local profile store can use Delta Query for both their initial full synchronization along with incremental synchronizations in the future. Typically, a client would do an initial full synchronization of all the groups in a tenant, and subsequently, get incremental changes to groups periodically.

## Tracking group changes

Tracking group changes is a round of one or more GET requests with the **delta** function. You make a GET
request much like the way you [list groups](/graph/api/group-list?view=graph-rest-1.0), except that you include the following:

- The **delta** function.
- A [state token](./delta-query-overview.md) (*deltaToken* or *skipToken*) from the previous GET **delta** function call.

## Example

The following example shows a series  requests to track changes to groups:

1. [Initial request](#initial-request) and [response](#initial-response)
2. [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. [Final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. [deltaLink request](#deltalink-request) and [deltaLink response](#deltalink-response)

## Initial request

To begin tracking changes in the group resource, you make a request including the delta function on the group resource.

Note the following:

- The optional `$select` query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The optional `$select` query parameter is also used to show how group members can be retrieved together with group objects. This allows tracking of membership changes, such as when users are added or removed from groups.
- The initial request does not include a state token. State tokens will be used in subsequent requests.

``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,members
```

## Initial response

If successful, this method returns `200 OK` response code and [group](/graph/api/resources/group?view=graph-rest-1.0) collection object in the response body. If the entire set of groups is too large to fit in one response, a `nextLink` containing a state token will also be included.

In this example, a `nextLink` was included; the original `$select` query parameter is encoded in the state token.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups(displayName,description)",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ",
  "value": [
    {
      "displayName":"TestGroup1",
      "description":"Employees in test group 1",
      "id":"c2f798fd-f95d-4623-8824-63aec21fffff",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "693acd06-2877-4339-8ade-b704261fe7a0"
               },
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "49320844-be99-4164-8167-87ff5d047ace"
               }
      ]
    },
    {
      "displayName":"TestGroup2",
      "description":"Employees in test group 2",
      "id":"ec22655c-8eb2-432a-b4ea-8b8a254bffff"
    }
  ]
}
```

>**Note:** The `members@delta` property is included in the first group object - TestGroup1 - and contains the two current members of the group. TestGroup2 does not contain that property because the group does not have any members.

## nextLink request

The second request uses the `nextLink` from the previous response, which contains the `skipToken`. Notice the `$select` parameter is not explicitly present as it is encoded in the token.

``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ
```

## nextLink response

The response contains another `nextLink` with a new `skipToken` value, which indicates that more groups are available. You should continue making requests using the `nextLink` URL until a `deltaLink` URL is returned in the final response, even if the value is an empty array (this can happen under certain circumstances).

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"TestGroup3",
      "description":"Employees in test group 3",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "632f6bb2-3ec8-4c1f-9073-0027a8c68593"
               }
      ]
    },
    {
      "displayName":"TestGroup4",
      "description":"Employees in test group 4",
      "id":"421e797f-9406-4934-b778-4908421e3505",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "3c8ac7c4-d365-4df9-abfa-356a9dd7763c"
               },
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "49320844-be99-4164-8167-87ff5d047ace"
               }
      ]
    }
  ]
}
```

## Final nextLink request

The third request again uses the latest `nextLink`.

``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=ppqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7
```

## Final nextLink response

Finally, the `deltaLink` URL is returned, which means there is no more data for the existing state of groups. For future requests, the application uses the `deltaLink` and the `deltaToken` value it contains to learn about new changes to groups.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
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

Using the `deltaLink` from the [last response](#final-nextlink-response), you will be able to get net new changes to groups since the last request. Changes include:
- Newly created group objects.
- Deleted group objects.
- Group objects for which a property has changed (e.g. **displayName** has been modified).
- Group objects for which member objects have been added or removed.

``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw
```

## deltaLink response

If no changes have occurred, a `deltaLink` is returned with no results - the `value` property is empty. Make sure to replace the previous link in the application with the new one for use in future calls.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": []
}
```

If changes have occurred, a collection of changed groups is included. The response also contains either a `nextLink` - in case there are multiple pages of changes to retrieve - or a `deltaLink`. You should implement the same pattern of following the `nextLinks` as before and persist the final `deltaLink` for future calls.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
          {
              "displayName": "TestGroup3",
              "description": "A test group for change tracking",
              "id": "2e5807ce-58f3-4a94-9b37-ffff2e085957",
              "members@delta": [
                  {
                      "@odata.type": "#microsoft.graph.user",
                      "id": "632f6bb2-3ec8-4c1f-9073-0027a8c6859",
                      "@removed": {
                          "reason": "deleted"
                      }
                  },
                  {
                      "@odata.type": "#microsoft.graph.user",
                      "id": "37de1ae3-408f-4702-8636-20824abda004"
                  }
              ]
          }
      ]
}
```

Some things to note about the example response above:

- The objects are returned with the same set of properties originally specified via the `$select` query parameter.

- Both changed and unchanged properties are included. In the example above, the `description` property has a new value, while the `displayName` property has not changed.

- `members@delta` contains any changes to membership.

  - The first user in the list has been removed from the group - either by removing the membership or by deleting the user object itself. The `@removed` property describes that. Only users that have been permanently deleted are removed from groups. Users that have been temporary deleted keep their group memberships and will not appear in the delta result until they are permanently deleted. For details, see [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-1.0).

  - The second user has been added to the group.

## Paging through members in a large group

The `members@delta` property is included in group objects by default, when the `$select` query parameter has not been specified, or when the `$select=members` parameter is explicitly specified. For groups with many members it is possible that all members cannot fit into a single response; in this section we describe the pattern you should implement to handle such cases.

>**Note:** This pattern applies to both the initial retrieval of group state as well as to subsequent calls to get delta changes.

Let's assume you are executing the following delta query - either to capture the initial full state of groups, or later on to get delta changes:

``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,members
```

1. Microsoft Graph may return a response that contains just one group object, with a large list of members in the `members@delta` property:

**First page**

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=<...>",
  "value": [
    {
      "displayName":"LargeGroup",
      "description":"A group containing thousands of users",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "632f6bb2-3ec8-4c1f-9073-0027a8c6859",
              "@removed": {
                  "reason": "deleted"
              }
          },
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "37de1ae3-408f-4702-8636-20824abda004"
          },
          <...more users here...>
      ]
    }
    <...no more groups included - this group filled out the entire response...>
  ]
}
```

2. When you follow the `nextLink` you may receive a response again containing the same group object. The same property values will be returned but the `members@delta` property now contains a different list of users.

**Second page**

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=<...>",
  "value": [
    {
      "displayName":"LargeGroup",
      "description":"A group containing thousands of users",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "c08a463b-7b8a-40a4-aa31-f9bf690b9551",
              "@removed": {
                  "reason": "deleted"
              }
          },
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "23423fa6-821e-44b2-aae4-d039d33884c2"
          },
          <...more users here...>
      ]
    }
    <...no more groups included - this group filled out the entire response...>
  ]
}
```

3. Eventually, the entire member list will be returned in this fashion, and other groups will start showing up in the response.

We recommend the following best practices to correctly handle this pattern:
- Always follow `nextLink` and locally merge each group's state: as you receive responses related to the same group, use them to build the full membership list in your application.
- It is best not to assume a specific sequence of the responses. Assume that the same group could show up anywhere in the `nextLink` sequence and handle that in your merge logic.


## See also
[Microsoft Graph delta query](delta-query-overview.md) overview.
