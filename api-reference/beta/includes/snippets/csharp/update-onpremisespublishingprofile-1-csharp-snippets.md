---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var hybridAgentUpdaterConfiguration = new HybridAgentUpdaterConfiguration
{
	UpdateWindow = new UpdateWindow
	{
		UpdateWindowStartTime = new TimeOfDay(0, 0, 0),
		UpdateWindowEndTime = new TimeOfDay(23, 59, 0)
	}
};

var onPremisesPublishingProfiles = new OnPremisesPublishingProfile();
onPremisesPublishingProfiles.HybridAgentUpdaterConfiguration = hybridAgentUpdaterConfiguration;

await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"]
	.Request()
	.UpdateAsync(onPremisesPublishingProfiles);

```