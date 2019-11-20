---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeetings = await graphClient.Communications.OnlineMeetings
	.Request()
	.Filter("VideoTeleconferenceId eq '123456789'")
	.GetAsync();

```