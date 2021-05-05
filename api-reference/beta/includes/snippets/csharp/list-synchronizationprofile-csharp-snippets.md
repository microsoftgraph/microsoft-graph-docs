---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationProfiles = await graphClient.Education.SynchronizationProfiles
	.Request()
	.GetAsync();

```