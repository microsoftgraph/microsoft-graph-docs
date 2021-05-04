---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participants = new List<String>()
{
	""
};

var clientContext = "clientContext-value";

await graphClient.Communications.Calls["{call-id}"].Participants
	.MuteAll(participants,clientContext)
	.Request()
	.PostAsync();

```