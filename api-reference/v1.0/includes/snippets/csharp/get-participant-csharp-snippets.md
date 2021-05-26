---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participant = await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"]
	.Request()
	.GetAsync();

```