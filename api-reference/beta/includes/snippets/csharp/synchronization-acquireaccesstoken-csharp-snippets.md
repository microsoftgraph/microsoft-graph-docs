---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var credentials = new List<SynchronizationSecretKeyStringValuePair>()
{
	new SynchronizationSecretKeyStringValuePair
	{
	}
};

await graphClient.Applications["{applicationsId}"].Synchronization
	.AcquireAccessToken(credentials)
	.Request()
	.PostAsync();

```