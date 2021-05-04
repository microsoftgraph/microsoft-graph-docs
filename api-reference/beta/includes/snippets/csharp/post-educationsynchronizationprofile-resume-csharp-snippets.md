---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.SynchronizationProfiles["{educationSynchronizationProfile-id}"]
	.Resume()
	.Request()
	.PostAsync();

```