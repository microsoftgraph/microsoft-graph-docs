---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = await graphClient.Teams["{team-id}"].PrimaryChannel
	.Request()
	.GetAsync();

```