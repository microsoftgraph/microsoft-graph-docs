---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesAgentGroup = new OnPremisesAgentGroup
{
	DisplayName = "Group New Name"
};

await graphClient.OnPremisesPublishingProfiles["provisioning"].AgentGroups["8832388F-3814-4952-B288-FFB62081FE25"]
	.Request()
	.UpdateAsync(onPremisesAgentGroup);

```