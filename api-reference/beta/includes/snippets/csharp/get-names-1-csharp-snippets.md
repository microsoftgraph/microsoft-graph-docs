---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var names = await graphClient.Me.Profile.Names
	.Request()
	.GetAsync();

```