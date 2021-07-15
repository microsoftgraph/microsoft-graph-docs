---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87";

await graphClient.Users["{user-id}"].Presence
	.ClearPresence(sessionId)
	.Request()
	.PostAsync();

```