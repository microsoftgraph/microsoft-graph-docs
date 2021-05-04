---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ids = new List<String>()
{
	"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
	"66825e03-7ef5-42da-9069-724602c31f6b"
};

await graphClient.Communications
	.GetPresencesByUserId(ids)
	.Request()
	.PostAsync();

```