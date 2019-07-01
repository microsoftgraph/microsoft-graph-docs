---
title: "Working with Microsoft Graph collections"
description: "Contains an example of how to work with collection objects returned by Microsoft Graph."
localization_priority: Normal
author: MichaelMainer
---

# Working with Microsoft Graph collections

## Getting a collection

# [C#](#tab/CS)

To retrieve a collection, like the list of groups in the service, you call `GetAsync` on the collection request:

```csharp
IGraphServiceGroupsCollectionPage page = await graphServiceClient.Groups
	                											 .Request()
	                											 .GetAsync();
```

`GetAsync` returns an `ICollectionPage<T>` implementation on success and throws a `ServiceException` on error. For the groups collection, the type returned is `IGraphServiceGroupsCollectionPage`, which inherits `ICollectionPage<Item>`.

`IGraphServiceGroupsCollectionPage` contains three properties:

|Name                |Description                                                                                                                                                  |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
|**CurrentPage**     |An `IList<Item>`.                                                                                                                                            |
|**NextPageRequest** |An `IGraphServiceGroupsCollectionRequest` used to get to the next page of items, if another page exists. This value will be null if there is not a next page.|
|**AdditionalData**    |An `IDictionary<string, object>` to any additional values returned by the service. In this case, none.

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

## Adding to a collection

Some collections, like the groups collection, can be changed. To create a group you can call:

# [C#](#tab/CS)

```csharp
var groupToCreate = new Group
    {
		GroupTypes = new List<string> { "Unified" },
		DisplayName = "Unified group",
		Description = "Best group ever"
	};

var newGroup = await graphServiceClient
                         .Groups
						 .Request()
						 .AddAsync(groupToCreate);
```

`AddAsync` returns the created group on success and throws a `ServiceException` on error.

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

## Expanding a collection

# [C#](#tab/CS)

```csharp
var children = await graphServiceClient
                    .Me
                    .Drive
					.Items[itemId]
					.Children
					.Request()
					.Expand("thumbnails")
                    .GetAsync();
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