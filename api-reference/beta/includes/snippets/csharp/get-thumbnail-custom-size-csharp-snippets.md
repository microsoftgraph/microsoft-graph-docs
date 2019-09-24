---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "c300x400_Crop")
};

var thumbnails = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails
	.Request( queryOptions )
	.GetAsync();

```