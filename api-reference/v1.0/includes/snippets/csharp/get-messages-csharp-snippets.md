---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Me.Messages
	.Request()
	.Select( e => new {
			 e.Sender,
			 e.Subject 
			 })
	.GetAsync();

```