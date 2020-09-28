---
title: "Use the Microsoft Graph API"
description: "Microsoft Graph is a RESTful web API that enables you to access Microsoft Cloud service resources. After you register your app and get authentication tokens for a user or service, you can make requests to the Microsoft Graph API."
author: "jackson-woods"
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Use the Microsoft Graph API

Microsoft Graph is a RESTful web API that enables you to access Microsoft Cloud service resources. After you [register your app](auth-register-app-v2.md) and [get authentication tokens for a user](auth-v2-user.md) or [service](auth-v2-service.md), you can make requests to the Microsoft Graph API.

> **Important:**  How conditional access policies apply to Microsoft Graph is changing. Applications need to be updated to handle scenarios where conditional access policies are configured. For more information and guidance, see [Developer Guidance for Azure Active Directory Conditional Access](/azure/active-directory/develop/active-directory-conditional-access-developer).

## OData namespace

The Microsoft Graph API defines most of its resources, methods, and enumerations in the OData namespace, `microsoft.graph`, in the [Microsoft Graph metadata](traverse-the-graph.md#microsoft-graph-api-metadata). A small number of API sets are defined in their sub-namespaces, such as the [call records API](/graph/api/resources/callrecords-api-overview?view=graph-rest-beta) which defines resources like [callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta) in `microsoft.graph.callRecords`. 

Unless explicitly specified in the corresponding topic, assume types, methods, and enumerations are part of the `microsoft.graph` namespace.

## Call a REST API method

To read from or write to a resource such as a user or an email message, you construct a request that looks like the following:

<!-- {
  "blockType": "ignored"
}-->
```http
{HTTP method} https://graph.microsoft.com/{version}/{resource}?{query-parameters}
```

The components of a request include:

* [{HTTP method}](#http-methods) - The HTTP method used on the request to Microsoft Graph.
* [{version}](#version) - The version of the Microsoft Graph API your application is using.
* [{resource}](#resource) - The resource in Microsoft Graph that you're referencing. 
* [{query-parameters}](#query-parameters) - Optional OData query options or REST method parameters that customize the response.

After you make a request, a response is returned that includes: 

* Status code - An HTTP status code that indicates success or failure. For details about HTTP error codes, see [Errors](errors.md).
* Response message - The data that you requested or the result of the operation. The response message can be empty for some operations.
* `nextLink` - If your request returns a lot of data, you need to page through it by using the URL returned in `@odata.nextLink`. For details, see [Paging](paging.md).

## HTTP methods

Microsoft Graph uses the HTTP method on your request to determine what your request is doing. The API supports the following methods.

|**Method** |**Description**                             |
| :----- | :------------------------------------------- |
| GET    | Read data from a resource.                   |
| POST   | Create a new resource, or perform an action. |
| PATCH  | Update a resource with new values.           |
| PUT    | Replace a resource with a new one.           |
| DELETE | Remove a resource.                           |

* For the CRUD methods `GET` and `DELETE`, no request body is required.
* The `POST`, `PATCH`, and `PUT` methods require a request body, usually specified in JSON format, that contains additional information, such as the values for properties of the resource.

## Version

Microsoft Graph currently supports two versions: `v1.0` and `beta`.

* `v1.0` includes generally available APIs. Use the v1.0 version for all production apps.
* `beta` includes APIs that are currently in preview. Because we might introduce breaking changes to our beta APIs, we recommend that you use the beta version only to test apps that are in development; do not use beta APIs in your production apps.

We are always looking for feedback on our beta APIs. To provide feedback or request features, see our [UserVoice](https://officespdev.uservoice.com/) page.

For more information about API versions, see [Versioning and support](versioning-and-support.md).

## Resource

A resource can be an entity or complex type, commonly defined with properties. Entities differ from complex types by always including an **id** property.

Your URL will include the resource you are interacting with in the request, such as `me`, **user**, **group**, **drive**, and **site**. Often, top-level resources also include _relationships_, which you can use to access additional resources, like `me/messages` or `me/drive`. You can also interact with resources using _methods_; for example, to send an email, use `me/sendMail`. For more information, see [Access data and methods by navigating Microsoft Graph](traverse-the-graph.md).

Each resource might require different permissions to access it. You will often need a higher level of permissions to create or update a resource than to read it. For details about required permissions, see the method reference topic. 

For details about permissions, see [Permissions reference](permissions-reference.md).

## Query parameters

Query parameters can be OData system query options, or other strings that a method accepts to customize its response.

You can use optional OData system query options to include more or fewer properties than the default response, filter the response for items that match a custom query, or provide additional parameters for a method.

For example, adding the following `filter` parameter restricts the messages returned to only those with the `emailAddress` property of `jon@contoso.com`.

<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/messages?filter=emailAddress eq 'jon@contoso.com'
```

For more information about OData query options, see [Use query parameters to customize responses](query-parameters.md).

Aside from OData query options, some methods require parameter values specified as part of the query URL. For example, you can get a collection of events that occurred during a time period in a user's calendar, by querying the **calendarView** relationship of a **user**, and specifying the period `startDateTime` and `endDateTime` values as query parameters:

<!-- {
  "blockType": "ignored"
}-->
```http
GET https://graph.microsoft.com/me/calendarView?startDateTime=2019-09-01T09:00:00.0000000&endDateTime=2019-09-01T17:00:00.0000000
```

## Tools for interacting with Microsoft Graph

### Graph Explorer

Graph Explorer is a web-based tool that you can use to build and test requests using Microsoft Graph APIs. You can access Graph Explorer at: `https://developer.microsoft.com/graph/graph-explorer`.

You can either access demo data without signing in, or you can sign in to a tenant of your own. Use the following steps to build the request:

1. Select the HTTP method.
2. Select the version of API that you want to use.
3. Type the query in the request text box.
4. Select **Run Query**. 

The following example shows a request that returns information about users in the demo tenant:

![Screenshot of Graph Explorer with a GET user request highlighted](./images/graph-explorer.png)

Sample queries are provided in Graph Explorer to enable you to more quickly run common requests. To see the samples that are available, select **show more samples**. Select **On** for the set of samples that you want to see, and then after closing the selection window, you should see a list of predefined requests.

A status code and message are displayed after a request is sent and the response is shown in the **Response Preview** tab.

### Postman

Postman is a tool that you can use to build and test requests using the Microsoft Graph APIs. You can download Postman at: `https://www.getpostman.com/`. To interact with Microsoft Graph in Postman, you use the Microsoft Graph collection.

For more information, see [Use Postman with the Microsoft Graph API](./use-postman.md?context=graph%252fapi%252fbeta&view=graph-rest-beta).

## Next steps

You're ready to get up and running with Microsoft Graph. Try the [Quick Start](https://developer.microsoft.com/graph/quick-start), or get started using one of our [SDKs and code samples](https://developer.microsoft.com/graph/code-samples-and-sdks).