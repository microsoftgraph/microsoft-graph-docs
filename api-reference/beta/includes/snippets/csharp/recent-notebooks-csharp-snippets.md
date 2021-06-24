---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getrecentnotebooks = await graphClient.Me.Onenote.Notebooks
	.Getrecentnotebooks(true)
	.Request()
	.GetAsync();

```