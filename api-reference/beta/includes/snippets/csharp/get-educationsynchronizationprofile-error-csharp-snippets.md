---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var errors = await graphClient.Education.SynchronizationProfiles["{educationSynchronizationProfile-id}"].Errors
	.Request()
	.GetAsync();

```