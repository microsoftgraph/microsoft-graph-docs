# Best practices for working with Microsoft Graph

This article describes best practices that you can apply to help your applications get the most out of Microsoft Graph - whether that involves learning about Microsoft Graph, improving app performance, or making your application more reliable for end users.

## Use Graph Explorer to get to know the API

The easiest way to start exploring the data available through Microsoft Graph is to use [Graph Explorer](https://aka.ms/ge). Graph Explorer lets you craft REST requests (with full CRUD support), adapt the HTTP request headers, and see the data responses. To help you get started, Graph Explorer also provides a set of sample queries.

Experiment with new APIs before you integrate them into your application.

## Authentication

To access the data in Microsoft Graph, your application will need to acquire an OAuth 2.0 access token, and present it to Microsoft Graph in either of the following:

- The HTTP *Authorization* request header, as a *Bearer* token
- The graph client constructor, when using a Microsoft Graph client library

Use the Microsoft Authentication Library API, [MSAL](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-libraries) to acquire the access token to Microsoft Graph.

## Consent and authorization

Apply the following best practices for consent and authorization in your app:

- **Use least privilege**. Only request permissions that are absolutely necessary, and only when you need them. For the APIs your application calls, check the permissions section in the method topics (for example, see [creating a user](../api-reference/v1.0/api/user_post_users.md), and choose the least privileged permissions. For a full list of permissions, see [permissions reference](permissions_reference.md).

- **Use the correct permission type based on scenarios**. If you're building an interactive application where a signed in user is present, your application should use *delegated* permissions, where the application is delegated permission to act as the signed-in user when making calls to Microsoft Graph. If, however, your application runs without a signed-in user, such as a background service or daemon, your application should use application permissions.

    >**Note:** Using application permissions for interactive scenarios can put your application at compliance and security risk. It can inadvertantly elevate a user's privileges to access data, circumnavigating policies configured by an administrator.
<!-- LG: Use a more clear lead-in here, like "Consider the end user and admin experience"? -->
- **Be thoughtful when configuring your app**. This will directly affect end user and admin experiences, along with application adoption and security. For example:

    - Your application's privacy statement, terms of use, name, logo and domain will show up in consent and other experiences - so make sure to configure these carefully so they are understood by your end-users.
    - Consider who will be consenting to your application - either end users or administrators - and configure your application to [request permissions appropriately](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-scopes).
    - Ensure that you understand the difference between [static, dynamic and incremental consent](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-compare#incremental-and-dynamic-consent).

- **Consider multi-tenant applications**. Expect customers to have various application and consent controls in different states. For example:

    - Tenant administrators can disable the ability for end users to consent to applications. In this case, an administrator would need to consent on behalf of their users.
    - Tenant administrators can set custom authorization policies such as blocking users from reading other user's profiles, or limiting self-service group creation to a limited set of users. In this case, your application should expect to handle 403 error response when acting on behalf of a user.

## Handle responses effectively

Depending on the requests you make to Microsoft Graph, your applications should be prepared to handle different types of responses. The following are some of the most important practices to follow to ensure that your application behaves reliably and predictably for your end users.

### Pagination

When querying a resource collection, you should expect that Microsoft Graph will the return result set in multiple pages, due to server-side page size limits. When a result set spans multiple pages, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results.

For example, listing the signed-in users messages:

```http
GET https://graph.microsoft.com/v1.0/me/messages
```

Would return a response containing an `@odata.nextLink` property, if the result set exceeds the server-side page size limit.

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$skip=23"
```

>**Note:** Your application should **always** handle the possibility that the responses are paged in nature, and use the `@odata.nextLink` property to obtain the next paged set of results, until all pages of the result set have been read. The final page will not contain an `@odata.nextLink` property. You should include the entire URL in the `@odata:nextLink` property in your request for the next page of results, treating the entire URL as an opaque string.

For more details, see [paging](paging.md).

### Handling expected errors

While your application should handle all error responses (in the 400 and 500 ranges), pay special attention to certain expected errors and responses, listed in the following table.

| Topic   | HTTP error code    | Best practice|
|:-----------|:--------|:----------|
| User does not have access | 403 | If your application is up and running, it could encounter this error even if it has been granted the necessary permissions through a consent experience.  In this case, it's most likely that the signed-in user does not have privileges to access the resource requested. Your application should provide a generic "Access denied" error back to the signed-in user. |
|Not found| 404 | In certain cases, a requested resource might not be found. For example a resource might not exist, because it has not yet been provisioned (like a user's photo) or because it has been deleted. Some deleted resources *might* be fully restored within 30 days of deletion - such as user, group and application resources, so your application should also take this into account.|
|Throttling|429|APIs might throttle at any time for a variety of reasons, so your application must **always** be prepared to handle 429 responses. This error response includes the *Retry-After* field in the HTTP response header. Backing off requests using the *Retry-After* delay is the fastest way to recover from throttling. For more information, see [throttling](throttling.md).|
|Service unavailable| 503 | This is likely because the services is busy. You should employ a back-off strategy similar to 429. Additionally, you should **always** make new retry requests over a new HTTP connection.|

### Evolvable enums

Client applications can be broken by the addition of members to an existing enum. For some newer enums in Microsoft Graph, a mechanism is available to allow for adding new members without incurring a breaking change. On these newer enums, you'll see a common *sentinel* member called `unknownFutureValue` that demarcates known and unknown enum members. Known members will have a number less than the sentinel member, while unknown members will be greater in value.
By default, unknown members are not returned by Microsoft Graph. If, however, your application is written to handle the appearance of unknown members, it can opt-in to receive unknown enum members, using an HTTP *Prefer* request header.

>**Note:** If your application is prepared to handle unknown enum members, it should opt-in by using an HTTP *prefer* request header: `Prefer: include-unknown-enum-members`.

## Storing data locally

Your application should ideally make calls to Microsoft Graph to retrieve data in real time as necessary. You should only cache or store data locally if required for a specific scenario, and if that use case is covered by your terms of use and privacy policy, and does not violate the [Microsoft Graph terms of use](../misc/terms-of-use.md). Your application should also implement proper retention and deletion policies.

## Optimizations

In general, for performance and even security or privacy reasons, you should only get the data your application really needs, and nothing more.

### Use projections

Choose only the properties your application really needs and no more, because this saves unnecessary network traffic and data processing in your application (and in the service).

>**Note:** Use the `$select` query parameter to limit the properties returned by a query to those needed by your application.

For example, when retrieving the messages of the signed-in user, you can specify that only the **from** and **subject** properties be returned:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

### Getting minimal responses

For some operations, such as PUT and PATCH (and in some cases POST), if your application doesn't need to make use of a response payload, you can ask the API to return minimal data. Note that some services already return a 204 No Content response for PUT and PATCH operations.

>**Note:** Request minimal representation responses using an HTTP request header where appropriate: *Prefer: return=minimal*. Note that for creation operations, this might not be appropriate because your application may expect to get the service generated `id` for the newly created object in the response.

### Track changes: delta query and webhook notifications

If your application needs to know about changes to data, you can get a webhook notification whenever data of interest has changed. This is more efficient than simply polling on a regular basis.

Use [webhook notifications](../api-reference/v1.0/resources/webhooks.md) to get push notifications when data changes.

If your application is required to cache or store Microsoft Graph data locally, and keep that data up to date, or track changes to data for any other reasons, you should use delta query. This will avoid excessive computation by your application to retrieve data your application already has, minimize network traffic, and reduce the likelihood of reaching a throttling threshold.

Use [delta query](delta_query_overview.md) to efficiently keep data up to date.

### Using webhooks and delta query together

Webhooks and delta query are often used better together, because if you use delta query alone, you need to figure out the right polling interval - too short and this might lead to empty responses which wastes resources, too long and you might end up with stale data. If you use webhook notifications as the trigger to make delta query calls, you get the best of both worlds.

Use [webhook notifications](../api-reference/v1.0/resources/webhooks.md) as the trigger to make delta query calls. You should also ensure that your application has a backstop polling threshold, in case no notifications are triggered.

### Batching

JSON batching allows you to optimize your application by combining multiple requests into a single JSON object. Combining individual requests into a single batch request can save the application significant network latency and can conserve connection resources.

Use [batching](json_batching.md) where significant network latency can have a big impact on the performance.

## Reliability and support
To ensure reliability and facilitate support for your application:

- Honor DNS TTL and set connection TTL to match it. This ensures availability in case of failovers.
- Open connections to all advertised DNS answers.
- Always log the *request-id* and *timestamp* from the HTTP response header. This is required when escalating issues or reporting issues in Stack Overflow or to Microsoft Customer Support.
