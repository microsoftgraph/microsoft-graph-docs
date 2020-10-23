---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bitlockerRecoveryKey = await graphClient.Bitlocker.RecoveryKeys["b465e4e8-e4e8-b465-e8e4-65b4e8e465b4"]
	.Request()
	.Select("key")
	.GetAsync();

```