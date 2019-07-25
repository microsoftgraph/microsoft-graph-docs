---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participants = await graphClient.App.Calls["57DAB8B1894C409AB240BD8BEAE78896"].Participants
	.Request()
	.Header("Authorization","Bearer <TOKEN>")
	.GetAsync();

```