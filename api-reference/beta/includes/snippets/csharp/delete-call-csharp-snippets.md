---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Communications.Calls["57dab8b1-894c-409a-b240-bd8beae78896"]
	.Request()
	.DeleteAsync();

```