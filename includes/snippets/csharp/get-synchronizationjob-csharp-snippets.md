---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationJob = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"]
	.Request()
	.GetAsync();

```