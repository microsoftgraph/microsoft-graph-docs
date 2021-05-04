---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Groups["{group-id}"].Events["{event-id}"]
	.Request()
	.GetAsync();

```