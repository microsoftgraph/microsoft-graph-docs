---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var notes = await graphClient.Me.Profile.Notes
	.Request()
	.GetAsync();

```