---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var anniversaries = await graphClient.Me.Profile.Anniversaries
	.Request()
	.GetAsync();

```