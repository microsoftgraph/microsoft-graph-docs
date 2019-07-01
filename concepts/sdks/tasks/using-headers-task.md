---
title: "Working with request headers"
description: "Contains examples of how to work with headers used by Microsoft Graph."
localization_priority: Normal
author: MichaelMainer
---

# Working with headers


## Adding request headers

# [C#](#tab/CS)

```csharp

// Custom headers can be added by creating a new option collection and adding it to the request object.
List<Option> options = new List<Option>();
options.Add(new HeaderOption("Etag", etag));
options.Add(new HeaderOption("If-Match", etag));

var newObject = graphServiceClient.Me
                                  .Request(options)
                                  .Patch(updatedUserObject);

// You can also pass headers in individually if you only need to include one header
var newObject = graphServiceClient.Me
                                  .Request(new HeaderOption("Etag", etag))
                                  .Patch(updatedUserObject);

```

# [Javascript](#tab/Javascript)

<!-- TODO -->

# [Android](#tab/Android)

<!-- TODO -->

# [Objective-C](#tab/Objective-C)

<!-- TODO -->

# [PHP](#tab/PHP)

<!-- TODO -->

# [Ruby](#tab/Ruby)

<!-- TODO -->

---

## Reading response headers

# [C#](#tab/CS)

```csharp

/**
HTTP response data is available in the AdditionalData property bag of the response object. You can access both
the statusCode of the response and the responseHeaders to get more information, such as the request ID,
Content-Type, and other data that may be relevant to you that is not part of the object model inherently.

To work with the response headers, you can deserialize the data using the client's serializer to make it easy to
parse through the header dictionary.
**/

var user = await graphServiceClient.Me.Request().GetAsync();
var responseHeaders = user.AdditionalData["responseHeaders"];

// Deserialize headers to dictionary for easy access to values
var responseHeaderCollection = graphClient.HttpProvider
                                .Serializer
                                .DeserializeObject<Dictionary<string, List<string>>>(responseHeaders.ToString());

var requestId = responseHeaderCollection["request-id"][0];

// Currently, requests that have a return type of void or Stream do
// not return response headers and cannot be inspected.

```

# [Javascript](#tab/Javascript)

<!-- TODO -->

# [Android](#tab/Android)

<!-- TODO -->

# [Objective-C](#tab/Objective-C)

<!-- TODO -->

# [PHP](#tab/PHP)

<!-- TODO -->

# [Ruby](#tab/Ruby)

<!-- TODO -->

---