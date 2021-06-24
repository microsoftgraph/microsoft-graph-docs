---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shift = await graphClient.Teams["{team-id}"].Schedule.Shifts["{shift-id}"]
	.Request()
	.GetAsync();

```