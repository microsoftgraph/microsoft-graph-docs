---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("expand", "children")
};

var driveItem = await graphClient.Drive.Items["{bundle-id}"]
	.Request( queryOptions )
	.GetAsync();

```