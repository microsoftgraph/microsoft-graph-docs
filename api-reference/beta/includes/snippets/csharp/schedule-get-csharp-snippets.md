---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedule = await graphClient.Teams["{teamId}"].Schedule
	.Request()
	.GetAsync();

```