---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = await graphClient.Groups["{group-id}"].Conversations["{conversation-id}"]
	.Request()
	.GetAsync();

```