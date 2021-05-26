---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recoveryKeys = await graphClient.InformationProtection.Bitlocker.RecoveryKeys
	.Request()
	.Header("ocp-client-name","\"My Friendly Client\"")
	.Header("ocp-client-version","\"1.2\"")
	.Filter("deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'")
	.GetAsync();

```