---
title: "Microsoft Graph .NET Client Library Overview"
description: "Provides an overview of the .Net client library."
localization_priority: Normal
author: MichaelMainer
---

# Microsoft Graph .NET Client Library Overview

The Microsoft Graph .NET Client Library is made up of 6 major components:

* A client object
* An authentication provider
* An HTTP provider + serializer
* Request builder objects
* Request objects
* Property bag object model classes for serialization and deserialization

The library is designed to be highly extensible. This overview covers basic scenarios but many of the individual components can be replaced with custom implementations.

## GraphServiceClient

To begin making requests with the library, you will need to initialize a **GraphServiceClient** instance for building and sending requests.

### GraphServiceClientConstructor

| Parameter                                      | Required?      | Default Value                                    |
|:-----------------------------------------------|:---------------|:-------------------------------------------------|
|`string` baseUrl                                | No             | https://graph.microsoft.com/currentServiceVersion|
|`IAuthenticationProvider` authenticationProvider| Yes            | n/a                                              |
|`IHttpProvider` httpProvider                    | No             | `new HttpProvider(new Serializer())`             |

## IAuthenticationProvider

The authentication provider is responsible for authenticating requests before sending them to the service. The Microsoft Graph .NET Client Library doesn't implement any authentication by default. Instead, you will need to retrieve access tokens for the service via the authentication library of your choice or by coding against one of the authentication endpoints directly. Please [read here](https://developer.microsoft.com/en-us/graph/docs/concepts/auth_overview) for more details about authenticating the Microsoft Graph service.

### DelegateAuthenticationProvider

The `DelegateAuthenticationProvider` is an implementation of `IAuthenticationProvider` that accepts a delegate to call during `AuthenticateRequestAsync`. This is the simplest way to append a retrieved access token to a request message:

``` csharp
var graphServiceClient = new GraphServiceClient(new DelegateAuthenticationProvider((requestMessage) => {
    requestMessage
        .Headers
        .Authorization = new AuthenticationHeaderValue("bearer", accessToken);

    return Task.FromResult(0);
}));
```


## Resource model

Microsoft Graph service resource are represented by property bag model classes of the same name in the client library. For example, the [user resource](https://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/user) is represented by the **User** class in the client library. Each of these model classes contain properties that represent the properties of the resources they represent.

These classes are used for serializing and deserializing the resources in requests to the service. They do not contain any logic to issue requests.

The resource model classes are generated based on the $metadata description of the service.

## Requests

To make requests against the service, you'll need to build a request using the request builders off the client. The request builders are responsible for building the request URL while the `Request()` method off a request builder will build the request object. The request builder patterns are intended to mirror the REST API pattern.

**Note:** Request and request builder classes are generated based on the $metadata description of the service. Interfaces are provided for each of these classes to enable easy unit testing around the logic contained in the classes. Since these interfaces are also generated, their signatures are subject to change without being considered a breaking change in the library. Anybody consuming these interfaces should be prepared for the class names or interface definitions to change between library versions.

### 1. Request builders

You get the first request builder from the `GraphServiceClient` object. For example, to get a request builder for the /me navigation you call:

|Task       | SDK                    | URL                            |
|:----------|:----------------------:|:-------------------------------|
|Get me     | graphServiceClient.Me  | GET graph.microsoft.com/v1.0/me|

The call will return an `IUserRequestBuilder` object. From Me you can continue to chain the request builders.

The [Microsoft Graph service documentation](https://graph.microsoft.io/en-us/docs) has more details about the full functionality of the API.


### 2. Request calls

After you build the request you call the `Request` method on the request builder. This will construct the request object needed to make calls against the service.

For /me/calendar you call:

``` csharp
var calendarRequest = graphServiceClient
    .Me
    .Calendar
    .Request();
```

All request builders have a `Request` method that can generate a request object. Request objects may have different methods on them depending on the type of request. To get /me/calendar you call:

``` csharp
var calendar = await graphServiceClient
    .Me
    .Calendar
    .Request()
    .GetAsync();
```

Any errors while building or sending a request will bubble up as a `ServiceException`. See [errors](/docs/errors.md) for more information on errors.

## Query options

If you only want to retrieve certain properties of a resource you can select them. Here's how to get only the ID of the me object:

``` csharp
var user = await graphServiceClient
    .Me
    .Request()
    .Select("id")
    .GetAsync();
```

All properties other than `Id` will be null on the returned user object.

Expand, Skip, Top, OrderBy, and Filter are also supported via the client library when supported by the Microsoft Graph service for the request type.

## Custom query options

If you need to include more specific behavior during a request that is not supported by the library, you can create a custom queryOptions List that you can add when calling ```Request```:

``` chsarp
List<QueryOption> options = new List<QueryOption>
{
     new QueryOption("$search", "lunch")
};
var messages = await client.Me.Messages.Request(options).GetAsync();
```

## Collections

Please see [collections](/docs/collections.md) for details on collections and paging.