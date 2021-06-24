---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deployment = new Microsoft.Graph.WindowsUpdates.Deployment
{
	State = new DeploymentState
	{
		RequestedValue = Microsoft.Graph.WindowsUpdates.RequestedDeploymentStateValue.Paused
	}
};

await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"]
	.Request()
	.UpdateAsync(deployment);

```