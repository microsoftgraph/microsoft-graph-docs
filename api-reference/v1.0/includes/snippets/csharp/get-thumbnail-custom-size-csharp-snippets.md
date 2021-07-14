---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "c300x400_crop")
};

var thumbnails = await graphClient.Me.Drive.Items["{driveItem-id}"].Thumbnails
	.Request( queryOptions )
	.GetAsync();

```