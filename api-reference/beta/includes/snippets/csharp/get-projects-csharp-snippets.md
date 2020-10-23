---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var projects = await graphClient.Me.Profile.Projects
	.Request()
	.GetAsync();

```