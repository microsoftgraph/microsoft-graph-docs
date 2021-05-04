---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = await graphClient.Teams["{team-id}"]
	.Request()
	.GetAsync();

```