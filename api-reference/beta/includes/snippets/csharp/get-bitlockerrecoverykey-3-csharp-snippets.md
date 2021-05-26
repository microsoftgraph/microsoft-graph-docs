---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bitlockerRecoveryKey = await graphClient.InformationProtection.Bitlocker.RecoveryKeys["{bitlockerRecoveryKey-id}"]
	.Request()
	.Header("ocp-client-name","\"My Friendly Client\"")
	.Header("ocp-client-version","\"1.2\"")
	.GetAsync();

```