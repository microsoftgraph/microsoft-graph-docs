---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Chats["19:ea28e88c00e94c7786b065394a61f296@thread.v2"].Tabs["d731fca0-0f14-4537-971a-0ef9101ff13d"]
	.Request()
	.DeleteAsync();

```