---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("format", "{format}")
};

var stream = await graphClient.Me.Drive.Items["{driveItem-id}"].Content
	.Request( queryOptions )
	.GetAsync();

```