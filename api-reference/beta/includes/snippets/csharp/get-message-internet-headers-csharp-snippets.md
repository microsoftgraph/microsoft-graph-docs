---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["{message-id}"]
	.Request()
	.Select("internetMessageHeaders")
	.GetAsync();

```