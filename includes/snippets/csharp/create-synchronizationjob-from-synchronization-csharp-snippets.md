---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationJob = new SynchronizationJob
{
	TemplateId = "aws"
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs
	.Request()
	.AddAsync(synchronizationJob);

```