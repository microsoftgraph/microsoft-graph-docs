---
title: "Use query parameters to customize responses"
description: "Microsoft Graph provides optional query parameters that you can use to specify and control the amount of data returned in a response."
author: "mumbi-o"
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Use query parameters to customize responses

Microsoft Graph supports optional query parameters that you can use to specify and control the amount of data returned in a response. The support for the exact query parameters varies from one API operation to another, and depending on the API, can differ between the v1.0 and beta endpoints. 

> [!TIP] 
> On the beta endpoint, the `$` prefix is optional. For example, instead of `$filter`, you can use `filter`. 
> On the v1 endpoint, the `$` prefix is optional for only a subset of APIs. For simplicity, always include `$` if using the v1 endpoint.

Query parameters can be OData system query options or other query parameters. 

> [!VIDEO https://www.youtube-nocookie.com/embed/7BuFv3yETi4]

## OData system query options
A Microsoft Graph API operation might support one or more of the following OData system query options. These query options are compatible with the [OData V4 query language][odata-query].

>**Note:** OData 4.0 supports system query options in only GET operations.

Click the examples to try them in [Graph Explorer][graph-explorer].

| Name                     | Description | Example
|:-------------------------|:------------|:---------|
| [$count](#count-parameter)         | Retrieves the total count of matching resources. | [`/me/messages?$top=2&$count=true`][count-example]
| [$expand](#expand-parameter)       | Retrieves related resources.|[`/groups?$expand=members`][expand-example]
| [$filter](#filter-parameter)       | Filters results (rows).|[`/users?$filter=startswith(givenName,'J')`][filter-example]
| [$format](#format-parameter)       | Returns the results in the specified media format.|[`/users?$format=json`][format-example]
| [$orderby](#orderby-parameter)     | Orders results.|[`/users?$orderby=displayName desc`][orderby-example]
| [$search](#search-parameter)       | Returns results based on search criteria. |[`/me/messages?$search=pizza`][search-example]
| [$select](#select-parameter)       | Filters properties (columns).|[`/users?$select=givenName,surname`][select-example]
| [$skip](#skip-parameter)           | Indexes into a result set. Also used by some APIs to implement paging and can be used together with `$top` to manually page results. | [`/me/messages?$skip=11`][skip-example]
| [$top](#top-parameter)             | Sets the page size of results. |[`/users?$top=2`][top-example]


## Other query parameters

| Name                     | Description | Example
|:-------------------------|:------------|:---------|
| [$skipToken](#skiptoken-parameter) | Retrieves the next page of results from result sets that span multiple pages. (Some APIs use `$skip` instead.) | `/users?$skiptoken=X%274453707402000100000017...`|

## Other OData URL capabilities

The following OData 4.0 capabilities are URL segments, not query parameters.

| Name                     | Description | Example 
|:-------------------------|:------------|:---------|
| [$ref](/graph/api/group-post-members?view=graph-rest-1.0&tabs=http) | Updates entities membership to a collection. | `POST /groups/{id}/members/$ref` |
| [$value](/graph/api/profilephoto-get) | Retrieves or updates the binary value of an item. | `GET /me/photo/$value` |

## Encoding query parameters

The values of query parameters should be percent-encoded. Many HTTP clients, browsers, and tools (such as the [Graph Explorer][graph-explorer]) will help you with this. If a query is failing, one possible cause is failure to encode the query parameter values appropriately.

An unencoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName, 'J')
```

A properly encoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName%2C+'J')
```

### Escaping single quotes

For requests that use single quotes, if any parameter values also contain single quotes, those must be double escaped; otherwise, the request will fail due to invalid syntax. In the example, the string value `let''s meet for lunch?` has the single quote escaped.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$filter=subject eq 'let''s meet for lunch?'
```

## count parameter

Use the `$count` query parameter to include a count of the total number of items in a collection alongside the page of data values returned from Microsoft Graph. 

For example, the following request returns both the **contact** collection of the current user, and the number of items in the **contact** collection in the `@odata.count` property.

```http
GET  https://graph.microsoft.com/v1.0/me/contacts?$count=true
```

[Try in Graph Explorer](https://developer.microsoft.com/graph/graph-explorer?request=me/contacts?$count=true&method=GET&version=v1.0)


The `$count` query parameter is supported for these collections of resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-beta):
- [application](https://docs.microsoft.com/graph/api/resources/application?view=graph-rest-beta)
- [orgContact](https://docs.microsoft.com/graph/api/resources/orgcontact?view=graph-rest-beta)
- [device](https://docs.microsoft.com/graph/api/resources/device?view=graph-rest-beta)
- [group](https://docs.microsoft.com/graph/api/resources/group?view=graph-rest-beta)
- [servicePrincipal](https://docs.microsoft.com/graph/api/resources/serviceprincipal?view=graph-rest-beta)
- [users](https://docs.microsoft.com/graph/api/resources/user?view=graph-rest-beta).

## expand parameter

Many Microsoft Graph resources expose both declared properties of the resource as well as its relationships with other resources. These relationships are also called reference properties or navigation properties, and they can reference either a single resource or a collection of resources. For example, the mail folders, manager, and direct reports of a user are all exposed as relationships. 

Normally, you can query either the properties of a resource or one of its relationships in a single request, but not both. You can use the `$expand` query string parameter to include the expanded resource or collection referenced by a single relationship (navigation property) in your results.

The following example gets root drive information along with the top-level child items in a drive:

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children
```

[Try in Graph Explorer](https://developer.microsoft.com/graph/graph-explorer?request=me/drive/root?$expand=children&method=GET&version=v1.0)

With some resource collections, you can also specify the properties to be returned in the expanded resources by adding a `$select` parameter. The following example performs the same query as the previous example but uses a [`$select`](#select-parameter) statement to limit the properties returned for the expanded child items to the **id** and **name** properties.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

[Try in Graph Explorer][expand-example]

> **Note:** Not all relationships and resources support the `$expand` query parameter. For example, you can expand the **directReports**, **manager**, and **memberOf** relationships on a user, but you cannot expand its **events**, **messages**, or **photo** relationships. Not all resources or relationships support using `$select` on expanded items. 
> 
> With Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-1.0), like [user](/graph/api/resources/user?view=graph-rest-1.0) and [group](/graph/api/resources/group?view=graph-rest-1.0), `$expand` is only supported for `beta` and  typically returns a maximum of 20 items for the expanded relationship.

## filter parameter

Use the `$filter` query parameter to retrieve just a subset of a collection. The `$filter` query parameter can also be used to retrieve relationships like members, memberOf, transitiveMembers, and transitiveMemberOf. For example, get all the security groups I'm a member of.

The following example can be used to find users whose display name starts with the letter 'J', use `startswith`.

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'J')
```

[Try in Graph Explorer][filter-example]

Support for `$filter` operators varies across Microsoft Graph APIs. The following logical operators are generally supported: 

- equals (`eq`)
- in (`in`)
- not equals (`ne`)
- greater than (`gt`)
- greater than or equals (`ge`)
- less than (`lt`), less than or equals (`le`)
- and (`and`)
- or (`or`)
- not (`not`)
 
The `startswith` string operator is often supported. The `any` lambda operator is supported for some APIs. 

> **Note:** You must [specify properties in certain ways](/graph/api/user-list-messages?view=graph-rest-1.0#using-filter-and-orderby-in-the-same-query) when using both `$filter` and `$orderby` in the same query to get messages.

For some usage examples, see the following table. For more details about `$filter` syntax, see the [OData protocol][odata-filter].  

The following table shows some examples that use the `$filter` query parameter.

> **Note:** Click the examples to try them in [Graph Explorer][graph-explorer].

| Description | Example
|:------------|:--------|
| Search for users with the name Mary across multiple properties. | [`https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'mary') or startswith(givenName,'mary') or startswith(surname,'mary') or startswith(mail,'mary') or startswith(userPrincipalName,'mary')`](https://developer.microsoft.com/graph/graph-explorer?request=users?$filter=startswith(displayName,'mary')+or+startswith(givenName,'mary')+or+startswith(surname,'mary')+or+startswith(mail,'mary')+or+startswith(userPrincipalName,'mary')&method=GET&version=v1.0) |
| Get all the signed-in user's events that start after 7/1/2017. | [`https://graph.microsoft.com/v1.0/me/events?$filter=start/dateTime ge '2017-07-01T08:00'`](https://developer.microsoft.com/graph/graph-explorer?request=me/events?$filter=start/dateTime+ge+'2017-07-01T08:00'&method=GET&version=v1.0) |
| Get all emails from a specific address received by the signed-in user. | [`https://graph.microsoft.com/v1.0/me/messages?$filter=from/emailAddress/address eq 'someuser@example.com'`](https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$filter=from/emailAddress/address+eq+'someuser@.com'&method=GET&version=v1.0) |
| Get all emails received by the signed-in user in April 2017. | [`https://graph.microsoft.com/v1.0/me/mailFolders/inbox/messages?$filter=ReceivedDateTime ge 2017-04-01 and receivedDateTime lt 2017-05-01`](https://developer.microsoft.com/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=ReceivedDateTime+ge+2017-04-01+and+receivedDateTime+lt+2017-05-01&method=GET&version=v1.0) |
| Get all unread mail in the signed-in user's Inbox. | [`https://graph.microsoft.com/v1.0/me/mailFolders/inbox/messages?$filter=isRead eq false`](https://developer.microsoft.com/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=isRead+eq+false&method=GET&version=v1.0) |
| List all Microsoft 365 groups in an organization. | [`https://graph.microsoft.com/v1.0/groups?$filter=groupTypes/any(c:c+eq+'Unified')`](https://developer.microsoft.com/graph/graph-explorer?request=groups?$filter=groupTypes/any(c:c+eq+'Unified')&method=GET&version=v1.0) |
| Use OData cast to get transitive membership in groups with a display name that starts with 'a' including a count of returned objects. | [`https://graph.microsoft.com/beta/me/transitiveMemberOf/microsoft.graph.group?$count=true&$filter=startswith(displayName, 'a')`](https://developer.microsoft.com/graph/graph-explorer?request=me/transitiveMemberOf/microsoft.graph.group?$count=true&$orderby=displayName&$filter=startswith(displayName,'a')&method=GET&version=v1.0) |

> **Note:** Please read the documentation for the specific directory objects (Azure AD resources) to learn more about `$filter` operator support.
> The `contains` string operator is currently not supported on any Microsoft Graph resources.

## format parameter

Use the `$format` query parameter to specify the media format of the items returned from Microsoft Graph.

For example, the following request returns the users in the organization in the json format:

```http
GET https://graph.microsoft.com/v1.0/users?$format=json
```

[Try in Graph Explorer][format-example]

> **Note:** The `$format` query parameter supports a number of formats (for example, atom, xml, and json) but results may not be returned in all formats.

## orderby parameter

Use the `$orderby` query parameter to specify the sort order of the items returned from Microsoft Graph.

For example, the following request returns the users in the organization ordered by their display name:

```http
GET https://graph.microsoft.com/v1.0/users?$orderby=displayName
```
[Try in Graph Explorer][orderby-example]

You can also sort by complex type entities. The following request gets messages and sorts them by the **address** field of the **from** property, which is of the complex type **emailAddress**:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$orderby=from/emailAddress/address
```
[Try in Graph Explorer](https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$orderby=from/emailAddress/address&method=GET&version=v1.0)

To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space; for example, `?$orderby=name%20desc`.

With some APIs, you can order results on multiple properties. For example, the following request orders the messages in the user's Inbox, first by the name of the person who sent it in descending order (Z to A), and then by subject in ascending order (default).

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages?$orderby=from/emailAddress/name desc,subject
```

[Try in Graph Explorer](https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$orderby=from/emailAddress/name%20desc,subject&method=GET&version=v1.0)

> **Note:** When you specify $filter the server will infer a sort order for the results. If you use both `$orderby` and `$filter` to get messages, because the server always infers 
a sort order for the results of a `$filter`, you must [specify properties in certain ways](/graph/api/user-list-messages?view=graph-rest-1.0#using-filter-and-orderby-in-the-same-query).


The following example shows a query filtered by the **subject** and **importance** properties, and then sorted by the **subject**, **importance**, and 
**receivedDateTime** properties in descending order.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$filter=Subject eq 'welcome' and importance eq 'normal'&$orderby=subject,importance,receivedDateTime desc
```

[Try in Graph Explorer](https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$filter=subject%20eq%20%27welcome%27%20and%20importance%20eq%20%27normal%27%20&$orderby=subject,importance,receivedDateTime%20desc&method=GET&version=v1.0)

> **Note:** Combining `$orderby` and `$filter` query parameters is supported on the beta endpoint for the following AD resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-beta):
>
>- [application](https://docs.microsoft.com/graph/api/resources/application?view=graph-rest-beta)
>- [orgContact](https://docs.microsoft.com/graph/api/resources/orgcontact?view=graph-rest-beta)
>- [device](https://docs.microsoft.com/graph/api/resources/device?view=graph-rest-beta)
>- [group](https://docs.microsoft.com/graph/api/resources/group?view=graph-rest-beta)
>- [servicePrincipal](https://docs.microsoft.com/graph/api/resources/serviceprincipal?view=graph-rest-beta)
>- [user](https://docs.microsoft.com/graph/api/resources/user?view=graph-rest-beta)
>
> To use `$orderby` and `$filter` together, you need to:
>
> - Add `$count=true` to the query parameters
> - Add `ConsistencyLevel: eventual` request header
>
> See [optional user query parameters](/graph/api/user-list?view=graph-rest-beta&tabs=http#optional-query-parameters) for more information.

## search parameter

Use the `$search` query parameter to restrict the results of a request to match a search criterion.

### Using $search on message collections

You can search messages based on a value in specific message properties. The results of the search are sorted by the date and time that the message was sent. A `$search` request returns up to 250 results.

If you do a search on messages and specify only a value without specific message properties, the search is carried out on the default search properties of **from**, **subject**, and **body**.

The following example returns all messages in the signed-in user's Inbox that contains "pizza" in any of the three default search properties:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="pizza"
```

[Try in Graph Explorer][search-example]

Alternatively, you can search messages by specifying message property names in the following table, that are recognized by the Keyword Query Language (KQL) syntax. These property names correspond to properties defined in the **message** entity of Microsoft Graph. Outlook and other Microsoft 365 applications such as SharePoint support KQL syntax, providing the convenience of a common discovery domain for their data stores.


| Searchable email property                | Description | Example 
|:-------------------------|:------------|:---------|
| **attachment**           | The names of files attached to an email message.|[`me/messages?$search="attachment:api-catalog.md"`][search-att-example]
| **bcc**           | The **bcc** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="bcc:samanthab@contoso.com"&$select=subject,bccRecipients`][search-bcc-example]
| **body**           | The body of an email message.|[`me/messages?$search="body:excitement"`][search-body-example]
| **cc**           | The **cc** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="cc:danas"&$select=subject,ccRecipients`][search-cc-example]
| **from**           | The sender of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="from:randiw"&$select=subject,from`][search-from-example]
| **hasAttachment** | True if an email message contains an attachment that is not an inline attachment, false otherwise. |[`me/messages?$search="hasAttachments:true"`][search-from-example]
| **importance**           | The importance of an email message, which a sender can specify when sending a message. The possible values are `low`, `medium`, or `high`.|[`me/messages?$search="importance:high"&$select=subject,importance`][search-imp-example]
| **kind**           | The type of message. The possible values are `contacts`, `docs`, `email`, `faxes`, `im`, `journals`, `meetings`, `notes`, `posts`, `rssfeeds`, `tasks`, or `voicemail`.|[`me/messages?$search="kind:voicemail"`][search-kind-example]
| **participants**           | The **from**, **to**, **cc**, and **bcc** fields of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="participants:danas"`][search-part-example]
| **received**           | The date that an email message was received by a recipient.|[`me/messages?$search="received:07/23/2018"&$select=subject,receivedDateTime`][search-rcvd-example]
| **recipients**           | The **to**, **cc**, and **bcc** fields of an email meesage, specified as an SMTP address, display name, or alias.|[`me/messages?$search="recipients:randiq"&$select=subject,toRecipients,ccRecipients,bccRecipients`][search-rcpts-example]
| **sent**           | The date that an email message was sent by the sender.|[`me/messages?$search="sent:07/23/2018"&$select=subject,sentDateTime`][search-sent-example]
| **size**           | The size of an item in bytes.|[`me/messages?$search="size:1..500000"`][search-size-example]
| **subject**           | The text in the subject line of an email message. .|[`me/messages?$search="subject:has"&$select=subject`][search-sbj-example]
| **to**           | The **to** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="to:randiw"&$select=subject,toRecipients`][search-to-example]


For more information about searchable email properties, KQL syntax, supported operators, and tips on searching, see the following articles:

- [Searchable properties in Exchange](https://docs.microsoft.com/Exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators#searchable-properties-in-exchange).

- [Keyword Query Language (KQL) syntax reference](https://docs.microsoft.com/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)

- [Message properties and search operators for In-Place eDiscovery in Exchange 2016](https://technet.microsoft.com/library/dn774955(v=exchg.160).aspx)

### Using $search on person collections

You can use the Microsoft Graph People API to retrieve the people who are most relevant to a user. Relevance is determined by the user’s communication and collaboration patterns and business relationships. The People API supports the `$search` query parameter. A `$search` request returns up to 250 results.

Searches on people occur on both the **displayName** and **emailAddress** properties of the [person](/graph/api/resources/person?view=graph-rest-1.0) resource.

The following request does a search for a person named "Irene McGowen" in the **displayName** and **emailAddress** properties in each person in the **people** collection of the signed-in user. Because a person named "Irene McGowan" is relevant to the signed-in user, the information for "Irene McGowan" is returned.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search="Irene McGowen"
```

The following example shows the response. 

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

To learn more about the People API, see [Get information about relevant people](./people-example.md#search-people).  

### Using $search on directory object collections

You can use a `$search` query parameter to filter results using tokenization. Tokenized search works by extracting words from your input and output string, using spaces, numbers, different casing, and symbols to separate the words, as follow:

* **Spaces**: `hello world` => `hello`, `world`
* **Different casing**⁽¹⁾: `HelloWorld` or `helloWORLD` => `hello`, `world`
* **Symbols**⁽²⁾: `hello.world` => `hello`, `.`, `world`, `helloworld`
* **Numbers**: `hello123world` => `hello`, `123`, `world`

⁽¹⁾ Currently, tokenization only works when the casing is changing from lowercase to uppercase, so `HELLOworld` is considered a single token: `helloworld`, and `HelloWORld` is two tokens: `hello`, `world`. 
⁽²⁾ Tokenization logic also combines words that are separated only by symbols; for example, searching for `helloworld` will find `hello-world` and `hello.world`.

> **Note**: after tokenization, the tokens are matched independently of the original casing, and they are matched in any order.
> `$search` query parameter on directory objects collections **requires** a special request header: `ConsistencyLevel: eventual`.

The tokenized search support works only on the **displayName** and **description** fields. Any field can be put in `$search`; fields other than **displayName** and **description** default to `$filter` startswith behavior. For example:

`https://graph.microsoft.com/beta/groups/?$search="displayName:OneVideo"`

This looks for all groups with display names that look like "OneVideo". `$search` can be used together with `$filter` as well. For example:

`https://graph.microsoft.com/beta/groups/?$filter=mailEnabled eq true&$search="displayName:OneVideo"`

This looks for all mail-enabled groups with display names that look like "OneVideo". The results are restricted based on a logical conjunction (an "AND") of the `$filter` and the entire query in the `$search`. The search text is tokenized based on casing, but matches are performed in a case-insensitive manner. For example, "OneVideo" would be split into two input tokens "one" and "video", but matches properties insensitive to case.

The syntax of search follows these rules:

* Generic format: $search="clause1" \[AND \| OR\] "\[clauseX\]"\.
* Any number of clauses is supported. Parentheses for precedence is also supported.
* The syntax for each clause is: "\<property>:\<text to search>".
* The property name must be specified in clause. Any property that can be used in `$filter` can also be used inside `$search`. Depending on the property, the search behavior is either "search" or "startswith" if search is not supported on the property.
* The whole clause part must be put inside double quotes.
* Logical operator 'AND' 'OR' must be put outside double quotes. They must be in upper case.
* Given that the whole clause part needs to be put inside double quotes, if it contains double quote and backslash, it needs to be escaped with a backslash. No other characters need to be escaped.

The following table shows some examples.

| Object class | Description | Example |
| ------------ | ----------- | ------- |
| User | Address book display name of the user. | `https://graph.microsoft.com/beta/users?$search="displayName:Guthr"` |
| User | Address book display name or mail of the user. | `https://graph.microsoft.com/beta/users?$search="displayName:Guthr" OR "mail:Guthr"` |
| Group | Address book display name or description of the group. | `https://graph.microsoft.com/beta/groups?$search="description:One" AND ("displayName:Video" OR "displayName:Drive")` |
| Group | Address book display name on a mail-enabled group. | `https://graph.microsoft.com/beta/groups?$filter=mailEnabled eq true&$search="displayName:OneVideo"` |

Both the string inputs you provide in `$search`, as well as the searchable properties, are split up into parts by spaces, different casing, and character types (numbers and special characters).

## select parameter

Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources. With $select, you can specify a subset or a superset of the default properties.

For example, when retrieving the messages of the signed-in user, you can specify that only the **from** and **subject** properties be returned:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

[Try in Graph Explorer][select-example]

> **Important:** In general, we recommend that you use `$select` to limit the properties returned by a query to those needed by your app. This is especially true of queries that might potentially return a large result set. Limiting the properties returned in each row will reduce network load and help improve your app's performance.
>
> In `v1.0`, some Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-1.0), like [user](/graph/api/resources/user?view=graph-rest-1.0) and [group](/graph/api/resources/group?view=graph-rest-1.0), return a limited, default subset of properties on reads. For these resources, you must use `$select` to return properties outside of the default set.  

## skip parameter

Use the `$skip` query parameter to set the number of items to skip at the start of a collection.
For example, the following request returns events for the user sorted by date created, starting with the 21st event in the collection:

```http
GET  https://graph.microsoft.com/v1.0/me/events?$orderby=createdDateTime&$skip=20
```
[Try in Graph Explorer][skip-example]

> **Note:** Some Microsoft Graph APIs, like Outlook Mail and Calendars (**message**, **event**, and **calendar**), use `$skip` to implement paging. When results of a query span multiple pages, these APIs will return an `@odata:nextLink` property with a URL that contains a `$skip` parameter. You can use this URL to return the next page of results. To learn more, see [Paging](./paging.md).

## skipToken parameter

Some requests return multiple pages of data, either due to server-side paging or due to the use of the [`$top`](#top-parameter) parameter to limit the page size of the response. Many Microsoft Graph APIs use the `skipToken` query parameter to reference subsequent pages of the result.  
The `$skiptoken` parameter contains an opaque token that references the next page of results and is returned in the URL provided in the `@odata.nextLink` property in the response. To learn more, see [Paging](./paging.md).
> **Note:** if you're using OData Count (adding `$count=true` in the querystring), the `@odata.count` property will be present only in the first page.

## top parameter

Use the `$top` query parameter to specify the page size of the result set. 

If more items remain in the result set, the response body will contain an `@odata.nextLink` parameter. This parameter contains a URL that you can use to get the next page of results. To learn more, see [Paging](./paging.md). 

$top accepts a minimum value of 1 and a maximum value of 999 (inclusive).  

For example, the following request returns the first five messages in the user's mailbox:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$top=5
```

[Try in Graph Explorer][top-example]


## Error handling for query parameters

Some requests will return an error message if a specified query parameter is not supported. For example, you cannot use `$expand` on the `user/photo` relationship. 

```http
https://graph.microsoft.com/beta/me?$expand=photo
```

```json
{
    "error":{
        "code":"ExpandNotSupported",
        "message":"Expand is not allowed for property 'Photo' according to the entity schema.",
        "innerError":{
            "request-id":"1653fefd-bc31-484b-bb10-8dc33cb853ec",
            "date":"2017-07-31T20:55:01"
        }
    }
}
```

However, it is important to note that query parameters specified in a request might fail silently. This can be true for unsupported query parameters as well as for unsupported combinations of query parameters. In these cases, you should examine the data returned by the request to determine whether the query parameters you specified had the desired effect. 

[graph-explorer]: https://developer.microsoft.com/graph/graph-explorer
[odata-filter]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752358
[odata-query]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356
[count-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$top=2%26$count=true&method=GET&version=v1.0
[expand-example]: https://developer.microsoft.com/graph/graph-explorer?request=groups?$expand=members&method=GET&version=v1.0
[filter-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0
[format-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$format=json&method=GET&version=v1.0
[orderby-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$orderby=displayName%20DESC&method=GET&version=v1.0
[search-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=pizza&method=GET&version=v1.0
[select-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$select=givenName,surname&method=GET&version=v1.0
[skip-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$skip=11&method=GET&version=v1.0
[top-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$top=2&method=GET&version=v1.0

[search-att-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22attachment%3Aapi-catalog%2Emd%22&method=GET&version=v1.0
[search-bcc-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22bcc%3Asamanthab%40contoso%2Ecom%22%26$select=subject,bccRecipients&method=GET&version=v1.0
[search-body-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22body%3Aexcitement%22&method=GET&version=v1.0
[search-cc-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22cc%3Adanas%22%26$select=subject,ccRecipients&method=GET&version=v1.0
[search-from-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22from%3Arandiw%22%26$select=subject,from&method=GET&version=v1.0
[search-hasatt-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22hasAttachments=true%22&method=GET&version=v1.0
[search-imp-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22importance%3Ahigh%22%26$select=subject,importance&method=GET&version=v1.0
[search-kind-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22kind%3Avoicemail%22&method=GET&version=v1.0
[search-part-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22participants%3Adanas%22&method=GET&version=v1.0

[search-rcvd-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22received%3A07/23/2018%22%26$select=subject,receivedDateTime&method=GET&version=v1.0

[search-rcpts-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22recipients%3Arandiw%22%26$select=subject,toRecipients,ccRecipients,bccRecipients&method=GET&version=v1.0
[search-sent-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22sent%3A07/23/2018%22%26$select=subject,sentDateTime&method=GET&version=v1.0
[search-size-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22size%3A1%2E%2E500000%22&method=GET&version=v1.0

[search-sbj-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22subject%3Ahas%22%26$select=subject&method=GET&version=v1.0
[search-to-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22to%3Arandiw%22%26$select=subject,toRecipients&method=GET&version=v1.0



## See also

- [Query parameter limitations](known-issues.md#query-parameter-limitations)
