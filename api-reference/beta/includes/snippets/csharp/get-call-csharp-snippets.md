---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = await graphClient.Communications.Calls["2f1a1100-b174-40a0-aba7-0b405e01ed92"]
	.Request()
	.GetAsync();

```