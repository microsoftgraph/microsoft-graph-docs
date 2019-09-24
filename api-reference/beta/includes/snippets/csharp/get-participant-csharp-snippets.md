---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participant = await graphClient.App.Calls["{id}"].Participants["{id}"]
	.Request()
	.GetAsync();

```