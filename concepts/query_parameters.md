# Customize responses: optional query parameters

Microsoft Graph provides optional query parameters that you can use to specify and control the amount of data returned in a response. The following following query parameters are supported.

|Name|Description|Example (click examples to try in [Graph Explorer][graph-explorer])
|:---------------|:--------|:-------|
|[$filter](#filter)|Filters results (rows).|[`/users?$filter=startswith(givenName,'J')`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0)
|[$select](#select)|Filters properties (columns).|[`/users?$select=givenName,surname`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$select=givenName,surname&method=GET&version=v1.0)
|[$expand](#expand)|Retrieves related resources.|[`/groups/{id}?$expand=members`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups/22be6ccb-15a5-459f-94ac-d1393bdd9e66?$expand=members&method=GET&version=v1.0)
|[$orderby](#orderby)|Orders results.|[`/users?$orderby=displayName,userPrincipalName desc`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$orderby=displayName,userPrincipalName%20DESC&method=GET&version=v1.0)
|[$top](#top)|Limits results. Typically used with `$skipToken`.|[`/users?$top=2`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$top=2&method=GET&version=v1.0)
|[$skipToken](#skiptoken)|Used with `$top` to retrieve a page of results.|See `nextLink` from the $top query for an example.
|[$count](#count)|Retrieves the total count of matching resources.|[`/me/messages?$top=2&$count=true`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$top=2%26$count=true&method=GET&version=v1.0)
<!-- TODO: figure out whether $search is actually used
|[`$search`](#search)|A property and value pair separated by a colon.|
-->

These parameters are compatible with the [OData V4 query language][odata-query].

> **Note:** On the `beta` endpoint, the `$` prefix is optional. For example, instead of `$filter`, you can use `filter`. For more details and examples, see [Supporting query parameters without $ prefixes in Microsoft Graph](http://dev.office.com/queryparametersinMicrosoftGraph).

**Encoding query parameters:**

The values of query parameters should be percent-encoded. Many HTTP clients, browsers and tools (e.g., the [Graph Explorer][graph-explorer]) will help you with this. If a query is failing, one possible reason is failure to encode the values of query parameters appropriately.

An unencoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName, 'J')
```

A properly encoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName%2C+'J')
```

## filter

`$filter` can be used to retrieve just a subset of a collection. For example, to find users whose display name starts with `J`, use `startswith`.

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0)

**Request:**

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'J')
```

**Response:**

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users",
    "value": [
        {
            "id": "e013b9f3-a1ab-48d1-907b-e716c39d6363",
            "businessPhones": [
                "4255550100"
            ],
            "displayName": "Jan Madden",
            "givenName": "Jan",
            "jobTitle": null,
            "mail": "demo32@a830edad9050849NDA1.onmicrosoft.com",
            "mobilePhone": null,
            "officeLocation": null,
            "preferredLanguage": null,
            "surname": "Madden",
            "userPrincipalName": "demo32@a830edad9050849NDA1.onmicrosoft.com"
        },
        {
            "id": "89efe8ed-d141-4151-a3e4-570a70022dff",
            "businessPhones": [
                "+1 425 555 0109"
            ],
            "displayName": "Janet Schorr",
            "givenName": "Janet",
            "jobTitle": "Product Marketing Manager",
            "mail": "janets@a830edad9050849NDA1.onmicrosoft.com",
            "mobilePhone": null,
            "officeLocation": "18/2111",
            "preferredLanguage": null,
            "surname": "Schorr",
            "userPrincipalName": "janets@a830edad9050849NDA1.onmicrosoft.com"
        },
        ...
    ]
}
```

`$filter` has a very rich and expressive syntax with many built-in operators. Logical operators include equals (`eq`), not equals (`ne`), greater than (`gt`), greater than or equals (`gte`), and (`and`), or (`or`), not (`not`) etc. Arithmetic operators include add (`add`), subtract (`sub`), etc. String operators include contains (`contains`), starts with (`startswith`), etc. Lambda operators include any (`any`) and all (`all`). For additional details on `$filter` syntax, see the [OData protocol][odata-filter].


## select

In a collection or an individual entity, to specify a different set of properties to return instead of the default set, use the `$select` query parameter. The `$select` parameter allows for choosing a subset or superset of the default set returned.
For example, when retrieving your messages, you might want to select that only the `from` and `subject` properties of messages are returned.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

<!--For example, when retrieving the children of an item on a drive, you want to select that only the `name` and `size` properties of items are returned.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root/children?$select=name,size
```

By submitting the request with the `$select=name,size` query string, the objects
in the response will only have those property values included.

```json
{
  "value": [
    {
      "id": "13140a9sd9aba",
      "name": "Documents",
      "size": 1024
    },
    {
      "id": "123901909124a",
      "name": "Pictures",
      "size": 1012010210
    }
  ]
}
```-->

## expand

In Microsoft Graph API requests, navigations to an object or collection of the referenced item are not automatically expanded.
This is by design because it reduces network traffic and the time it takes to generate a response from the service.
However, in some cases you might want to include those results in a response.

You can use the `$expand` query string parameter to instruct the API to expand a child object or collection and include those results.

For example, to retrieve the root drive information and the top level child items in a drive, you use the `$expand` parameter.
This example also uses a [`$select`](#select) statement to only return the `id` and `name` properties of the children items.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

> **Note:** The maximum number of expanded objects for a request is 20. Also, if you query on the [`user`](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user) resource, you can use `$expand` to get the properties of only one child object or collection at a time.
The following example gets `user` objects, each with up to 20 `directReport` objects in the `directReports` collection expanded:

```http
GET https://graph.microsoft.com/v1.0/users?$expand=directReports
```

Some other resources may have a limit as well, so always check for possible errors.

## orderby

To specify the sort order of the items returned from the Microsof Graph API, use the `$orderby` query parameter.

For example, to return the users in the organization ordered by their display name, the syntax is as follows:

```http
GET https://graph.microsoft.com/v1.0/users?$orderby=displayName
```

You can also sort by complex type entities. The following example gets messages and sorts them by the `address` field of the `from` property, which is of the complex type `emailAddress`:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$orderby=from/emailAddress/address
```

To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space, for example, `?$orderby=name%20desc`.

 > **Note:** If you query on the [`user`](../api-reference/v1.0/resources/user.md) resource, `$orderby` can't be combined with filter expressions.

## top

To specify the maximum number of items to return in a result set, use the `$top` query parameter.
The `$top` query parameter identifies a subset in the collection. This subset is formed by selecting only the first N items of the set, where N is a positive integer specified by this query parameter.
For example, to return the first five messages in the user's mailbox, the syntax is as follows:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$top=5
```

## skip

(To set the number of items to skip before retrieving items in a collection, use the `$skip` query parameter.
For example, to return events sorted by date created, and starting with the 21st event, the syntax is as follows.

```http
GET  https://graph.microsoft.com/v1.0/me/events?$orderby=createdDateTime&$skip=20
```

## skipToken

To request second and subsequent pages of Graph data use the `$skipToken` query parameter.
]The `$skipToken` query parameter is provided in Urls returned from the Graph when the Graph has returned a partial subset of results, usually due to server-side paging.
It identifies the point in a collection where the server finished sending results, and is passed back to the Graph to indicate where it should resume sending results from.
For example, the value of a `$skipToken` query parameter could identify the tenth item in a collection or the 20th item in a collection containing 50 items, or any other position within the collection.

In some responses, you'll see an `@odata.nextLink` value.
Some of them include a `$skipToken` value.
The `$skipToken` value is like a marker that tells the service where to resume for the next set of results.
The following is an example of a `@odata.nextLink` value from a response where users have been requested ordered by `displayName`:

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$orderby=displayName&$skiptoken=X%2783630372100000000000000000000%27"
```

To return the next page of users in your organization, the syntax is as follows.

```http
GET  https://graph.microsoft.com/v1.0/users?$orderby=displayName&$skiptoken=X%2783630372100000000000000000000%27
```

## count

Use `$count` as a query parameter to include a count of the total number of items in a collection alongside the page of data values returned from the Graph, as in the following example:

```http
GET  https://graph.microsoft.com/v1.0/me/contacts?$count=true
```

This would return both the `contacts` collection, and the number of items in the `contacts` collection in the `@odata.count` property.

>**Note:** This is not supported for [`directoryObject`](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/directoryobject) collections.

## search

To restrict the results of a request that match a search criterion, use the `$search` query parameter.

> **Note:** You can currently **only** search [message](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/message) and [person](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/person) collections. A `$search` request returns up to 250 results. You cannot use [`$filter`](#filter) or [`$orderby`](#orderby) in a search request.

Search criteria are expressed using Advanced Query Syntax (AQS). The results are sorted by the date and time that the message was sent.

You can specify the following properties on a `message` in a `$search` criterion:
`attachments`, `bccRecipients`, `body`, `category`, `ccRecipients`, `content`, `from`, `hasAttachments`, `participants`, `receivedDateTime`, `sender`, `subject`, `toRecipients`

If you do a search on messages and specify only a value, the search is carried out on the default search properties of `from`, `subject` and `body`.

The following example returns all messages in the signed-in user's Inbox that contains "pizza" in any of the three default search properties:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="pizza"
```

The next example searches all messages in the user's Inbox that were sent from a specific email address:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="from:help@contoso.com"
```

[graph-explorer]: https://graph.microsoft.io/en-us/graph-explorer
[odata-filter]: http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752358
[odata-query]: http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356
