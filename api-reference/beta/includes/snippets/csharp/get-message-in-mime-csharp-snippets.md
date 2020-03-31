---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Me.Messages["4aade2547798441eab5188a7a2436bc1"].Content
	.Request()
	.GetAsync();

```