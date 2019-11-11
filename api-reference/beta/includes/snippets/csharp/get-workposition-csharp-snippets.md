---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workPosition = await graphClient.Me.Profile.Positions["{id}"]
	.Request()
	.GetAsync();

```