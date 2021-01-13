---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var presence = await graphClient.Users["66825e03-7ef5-42da-9069-724602c31f6b"].Presence
	.Request()
	.GetAsync();

```