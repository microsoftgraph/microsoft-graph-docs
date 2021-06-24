---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSynchronizationProfile = await graphClient.Education.SynchronizationProfiles["{educationSynchronizationProfile-id}"]
	.Request()
	.GetAsync();

```