---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	IsRead = true
};

await graphClient.Me.Messages["{id}"]
	.Request()
	.UpdateAsync(message);

```