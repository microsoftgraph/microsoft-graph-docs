# Use the Microsoft Graph API

Microsoft Graph is a RESTful web API that enables you to access Microsoft Cloud service resources. After you [register your app](auth_register_app_v2.md) and [get authentication tokens for a user](auth_v2_user.md) or [service](auth_v2_service.md), you can make requests to the Microsoft Graph API.

> **Important:**  How conditional access policies apply to Microsoft Graph is changing. Applications need to be updated to handle scenarios where conditional access policies are configured. For more information and guidance, see [Developer Guidance for Azure Active Directory Conditional Access](https://docs.microsoft.com/azure/active-directory/develop/active-directory-conditional-access-developer).

To read from or write to a resource such as a user or an email message, you construct a request that looks like the following.

```http
https://graph.microsoft.com/{version}/{resource}?query-parameters
```

The components of a request include:

* [HTTP method](#http-methods) - The HTTP method used on the request to Microsoft Graph.
* [`{version}`](#version) - The version of the Microsoft Graph API your application is using.
* [`{resource}`](#resource) - The resource in Microsoft Graph that you're referencing.
* [query-parameters](#query-parameters-optional) - An optional set of parameters to modify the request or response.

After you make a request, a response is returned that includes: 

* Status code - An HTTP status code that indicates success or failure. For details about HTTP error codes, see [Errors](errors.md).
* Response message - The data that you requested or the result of the operation. The response message can be empty for some operations.
* **Next** link - If your request returns a lot of data, you need to page through it by choosing **Next**. For details, see [Paging](paging.md).

## HTTP methods

Microsoft Graph uses the HTTP method on your request to determine what your request is doing. The API supports the following methods.


|**Method** |**Description**                             |
| :----- | :------------------------------------------- |
| GET    | Read data from a resource.                   |
| POST   | Create a new resource, or perform an action. |
| PATCH  | Update a resource with new values.           |
| PUT    | Replace a resource with a new one.           |
| DELETE | Remove a resource.                           |

* For the methods **GET** and **DELETE**, no request body is required.
* The **POST**, **PATCH**, and **PUT** methods require a request body, usually specified in JSON format, that contains additional information, such as the values for properties of the resource.

## Version

Microsoft Graph currently supports two versions: `v1.0` and `beta`.

* `v1.0` includes generally available APIs. Use the v1.0 version for all production apps.
* `beta` includes APIs that are currently in preview. Because we might introduce breaking changes to our beta APIs, we recommend that you use the beta version only to test apps that are in development; do not use beta APIs in your production apps.

We are always looking for feedback on our beta APIs. To provide feedback or request features, see our [UserVoice](https://officespdev.uservoice.com/) page.

For more information about API versions, see [Versioning and support](versioning_and_support.md).

## Resource

Your URL will include the resource or resources you are interacting with in the request, such as `me`, `users`, `groups`, `drives`, and `sites`. Each of the top-level resources also include **relationships**, which you can use to access additional resources, like `me/messages` or `me/drive`. You can also interact with resources using **methods**; for example, to send an email, use `me/sendMail`.

For more information about how to navigate resource relationships and methods, see [Traverse the graph](traverse_the_graph.md). 

Each resource might require different permissions to access it. You will often need a higher level of permissions to create or update a resource than to read it. For details about required permissions, see the method reference topic. 

For details about permissions, see [Permissions reference](permissions_reference.md).

## Query parameters (optional)

You can use optional query parameters to customize the response in your Microsoft Graph app. Use query parameters to include more or fewer properties than the default response, filter the response for items that match a custom query, or provide additional parameters for a method.

For example, adding the following filter parameter restricts the messages returned to only those with the `emailAddress` property of `jon@contoso.com`.

```http
https://graph.microsoft.com/v1.0/me/messages?filter=emailAddress eq 'jon@contoso.com'
```

For more information about query parameters, see [Customize responses](query_parameters.md).

## Next steps

You're ready to get up and running with Microsoft Graph. To learn more, go to the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to try out some requests, try the [Quick Start](https://developer.microsoft.com/en-us/graph/quick-start), or get started using one of our [SDKs and code samples](https://developer.microsoft.com/en-us/graph/code-samples-and-sdks).
