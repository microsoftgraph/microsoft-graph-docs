---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Events["{id}"].Attachments["{id}"]
	.Request()
	.DeleteAsync();

```