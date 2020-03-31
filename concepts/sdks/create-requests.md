---
title: "Make API calls using the Microsoft Graph SDKs"
description: "Provides instructions for creating Microsoft Graph HTTP requests using the SDKs."
localization_priority: Normal
author: DarrelMiller
---

# Make API calls using the Microsoft Graph SDKs

The Microsoft Graph SDK service libraries provide a client class that you can use as the starting point for creating all API requests. There are two styles of client class: one uses a fluent interface to create the request (for example, `client.Me.Manager`) and the other  accepts a path string (for example, `api("/me/manager")`). When you have a request object, you can specify a variety of options such as filtering and sorting, and finally, you select the type of operation you want to perform.

## Read information from Microsoft Graph

To read information from Microsoft Graph, you first need to create a request object and then run the `GET` method on the request.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-read.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-read.md)]
---

## Use $select to control the properties returned

When retrieving an entity, not all properties are automatically retrieved; sometimes they need to be explicitly selected. Also, in some scenarios it isn't necessary to return the default set of properties. Selecting just the required properties can improve the performance of the request. You can customize the *request* object to emit the `$select` query parameter with a list of properties.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-select.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-select.md)]
---


## Retrieve a list of entities

Retrieving a list of entities is similar to retrieving a single entity except there a number of other options for configuring the request. The `$filter` query parameter can be used to reduce the result set to only those rows that match the provided condition.  The `$orderBy` query parameter will request that the server provide the list of entities sorted by the specified properties.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-list.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-list.md)]
---

The object returned when retrieving a list of entities is likely to be a paged collection. For details about how to get the complete list of entities, see [paging through a collection](../paging.md).

## Access an item of a collection

For SDKs that support a fluent style, collections of entities can be accessed using an array index. For template-based SDKs, it is sufficient to embed the item identifier in the path segment following the collection.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-index.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-index.md)]
---

## Use $expand to access related entities

You can use the `$expand` filter to request a related entity, or collection of entities, at the same that you request the main entity.  The `Expand()` function on the *request* object adds the necessary query parameter.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-expand.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-expand.md)]
---


## Delete an entity

To delete an entity, construct the *request* in the same way that you do to retrieve an entity. The *delete* method on the *request* object indicates the desire to delete the entity.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-delete.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-delete.md)]
---

## Make a POST request to create a new entity

To create a new entity in a collection, call an `add` or `post` method and pass in an object that contains the information to be used to create the new entity. An updated version of the created entity is usually returned from the call.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-create.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-create.md)]
---

## Updating an existing entity with PATCH

Most updates in Microsoft Graph are performed using a `PATCH` method and therefore it is only necessary to include the properties that you want to change in the object you pass.  

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-update.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-update.md)]
---


## Use HTTP headers to control request behavior

You can use a `header()` function to attach custom headers to a request. A number of Microsoft Graph scenarios use custom headers to adjust the behavior of the request.
 
# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-headers.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-headers.md)]
---

## Provide custom query parameters

In situations where an API call allows custom query parameters, you can provide those parameter values by using a list of `QueryOptions` objects.

# [C#](#tab/CS)
[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-queryparams.md)]
# [TypeScript](#tab/TypeScript)
[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-queryparams.md)]
---
