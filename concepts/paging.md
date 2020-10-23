---
title: "Paging Microsoft Graph data in your app "
description: "odata.nextLink` property in the response that contains a URL to the next page of results. "
author: "davidmu1"
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Paging Microsoft Graph data in your app 

Some queries against Microsoft Graph return multiple pages of data either due to server-side paging or due to the use of the `$top` query parameter to specifically limit the page size in a request. When a result set spans multiple pages, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results. 

For example, the following URL requests all the users in an organization with a page size of 5, specified with the `$top` query parameter:

```html
https://graph.microsoft.com/v1.0/users?$top=5
```

If the result contains more than five users, Microsoft Graph will return an `@odata.nextLink` property similar to the following along with the first page of users.

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=X%274453707 ... 6633B900000000000000000000%27"
```

You can retrieve the next page of results by sending the URL value of the `@odata.nextLink` property to Microsoft Graph. 

```html
https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=X%274453707 ... 6633B900000000000000000000%27
```

Microsoft Graph will continue to return a reference to the next page of data in the `@odata.nextLink` property with each response until all pages of the result have been read.

>**Important:** You should include the entire URL in the `@odata.nextLink` property in your request for the next page of results. Depending on the API that the query is being performed against, the `@odata.nextLink` URL value will contain either a `$skiptoken` or a `$skip` query parameter. The URL also contains all the other query parameters present in the original request. Do not try to extract the `$skiptoken` or `$skip` value and use it in a different request. 

Paging behavior varies across different Microsoft Graph APIs. Consider the following when working with paged data:

- Different APIs might have different default and maximum page sizes.
- Different APIs might behave differently if you specify a page size (via the `$top` query parameter) that exceeds the maximum page size for that API. Depending on the API, the requested page size might be ignored, it might default to the maximum page size for that API, or Microsoft Graph might return an error. 
- Not all resources or relationships support paging. For example, queries against [directoryRoles](/graph/api/resources/directoryrole?view=graph-rest-1.0) do not support paging. This includes reading role objects themselves as well as role members.

## Learn more about paging
The following video introduces you to paging in Microsoft Graph.

> [!VIDEO https://www.youtube-nocookie.com/embed/DB_NoC9a1JI]
