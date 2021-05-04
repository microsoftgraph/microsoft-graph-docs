---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Outlook.Tasks["{outlookTask-id}"]
	.Complete()
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.PostAsync();

```