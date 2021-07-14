---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkTag = await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"]
	.Request()
	.GetAsync();

```