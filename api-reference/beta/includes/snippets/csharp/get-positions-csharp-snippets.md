---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var positions = await graphClient.Me.Profile.Positions
	.Request()
	.GetAsync();

```