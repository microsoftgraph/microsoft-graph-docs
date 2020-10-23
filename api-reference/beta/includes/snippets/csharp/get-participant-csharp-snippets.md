---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participant = await graphClient.Communications.Calls["7531d31f-d10d-44de-802f-c569dbca451c"].Participants["7e1b4346-85a6-4bdd-abe3-d11c5d420efe"]
	.Request()
	.GetAsync();

```