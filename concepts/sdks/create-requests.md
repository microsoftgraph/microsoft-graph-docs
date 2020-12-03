---
title: "Make API calls using the Microsoft Graph SDKs"
description: "Provides instructions for creating Microsoft Graph HTTP requests using the SDKs."
localization_priority: Normal
author: DarrelMiller
---

# Make API calls using the Microsoft Graph SDKs

The Microsoft Graph SDK service libraries provide a client class that you can use as the starting point for creating all API requests. There are two styles of client class: one uses a fluent interface to create the request (for example, `client.Users["user-id"].Manager`) and the other accepts a path string (for example, `api("/users/user-id/manager")`). When you have a request object, you can specify a variety of options such as filtering and sorting, and finally, you select the type of operation you want to perform.

There is also the [Microsoft Graph PowerShell SDK](../powershell/get-started.md), which has no client class at all. Instead, all requests are represented as PowerShell commands. For example, to get a user's manager, the command is `Get-MgUserManager`. For more information on finding commands for API calls, see [Navigating the Microsoft Graph PowerShell SDK](../powershell/navigating.md).

## Read information from Microsoft Graph

To read information from Microsoft Graph, you first need to create a request object and then run the `GET` method on the request.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-read.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-read.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-read.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-read.md)]

---

## Use $select to control the properties returned

When retrieving an entity, not all properties are automatically retrieved; sometimes they need to be explicitly selected. Also, in some scenarios it isn't necessary to return the default set of properties. Selecting just the required properties can improve the performance of the request. You can customize the request to include the `$select` query parameter with a list of properties.

<!-- markdownlint-disable MD024 -->
# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-select.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-select.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-select.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-select.md)]

---

## Retrieve a list of entities

Retrieving a list of entities is similar to retrieving a single entity except there a number of other options for configuring the request. The `$filter` query parameter can be used to reduce the result set to only those rows that match the provided condition.  The `$orderBy` query parameter will request that the server provide the list of entities sorted by the specified properties.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-list.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-list.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-list.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-list.md)]

---

The object returned when retrieving a list of entities is likely to be a paged collection. For details about how to get the complete list of entities, see [paging through a collection](../paging.md).

## Access an item of a collection

For SDKs that support a fluent style, collections of entities can be accessed using an array index. For template-based SDKs, it is sufficient to embed the item identifier in the path segment following the collection. For PowerShell, identifiers are passed as parameters.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-index.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-index.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-index.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-index.md)]

---

## Use $expand to access related entities

You can use the `$expand` filter to request a related entity, or collection of entities, at the same that you request the main entity.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-expand.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-expand.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-expand.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-expand.md)]

---

## Delete an entity

Delete requests are constructed in the same way as requests to retrieve an entity, but use a `DELETE` request instead of a `GET`.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-delete.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-delete.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-delete.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-delete.md)]

---

## Make a POST request to create a new entity

For SDKs that support a fluent style, new items can be added to collections with an `Add` method. For template-based SDKs, the request object exposes a `post` method. For PowerShell, a `New-*` command is available that accepts parameters that map to the entity to add. The created entity is usually returned from the call.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-create.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-create.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-create.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-create.md)]

---

## Updating an existing entity with PATCH

Most updates in Microsoft Graph are performed using a `PATCH` method and therefore it is only necessary to include the properties that you want to change in the object you pass.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-update.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-update.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-update.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-update.md)]

---

## Use HTTP headers to control request behavior

You can use a `Header()` function to attach custom headers to a request. For PowerShell, adding headers is only possible with the `Invoke-GraphRequest` method. A number of Microsoft Graph scenarios use custom headers to adjust the behavior of the request.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-headers.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-headers.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-headers.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-headers.md)]

---

## Provide custom query parameters

For SDKs that support a fluent style, you can provide custom query parameter values by using a list of `QueryOptions` objects. For template-based SDKs, the parameters are URL-encoded and added to the request URI. For PowerShell, defined query parameters for a given API are exposed as parameters to the corresponding command.

# [C#](#tab/CS)

[!INCLUDE [sample-code](includes/snippets/csharp/create-requests-queryparams.md)]

# [TypeScript](#tab/TypeScript)

[!INCLUDE [sample-code](includes/snippets/typescript/create-requests-queryparams.md)]

# [Java](#tab/java)

[!INCLUDE [sample-code](includes/snippets/java/create-requests-queryparams.md)]

# [PowerShell](#tab/PowerShell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-queryparams.md)]

---
