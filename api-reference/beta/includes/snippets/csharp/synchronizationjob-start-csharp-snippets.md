---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"]
	.Start()
	.Request()
	.PostAsync();

```