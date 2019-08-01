---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeeting = await graphClient.App.OnlineMeetings["{id}"]
	.Request()
	.GetAsync();

```