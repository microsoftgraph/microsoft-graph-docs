---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participants = await graphClient.Communications.Calls["7531d31f-d10d-44de-802f-c569dbca451c"].Participants
	.Request()
	.GetAsync();

```