---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var presence = await graphClient.Communications.Presences["{presence-id}"]
	.Request()
	.GetAsync();

```