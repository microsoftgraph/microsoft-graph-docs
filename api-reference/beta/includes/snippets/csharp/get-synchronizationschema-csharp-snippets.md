---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationSchema = await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema
	.Request()
	.GetAsync();

```