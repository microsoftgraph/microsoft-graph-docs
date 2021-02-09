---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var presence = await graphClient.Me.Presence
	.Request()
	.GetAsync();

```