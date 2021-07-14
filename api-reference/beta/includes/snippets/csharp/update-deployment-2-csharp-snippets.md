---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deployment = new Microsoft.Graph.WindowsUpdates.Deployment
{
	Settings = new WindowsDeploymentSettings
	{
		Monitoring = new Microsoft.Graph.WindowsUpdates.MonitoringSettings
		{
			MonitoringRules = new List<Microsoft.Graph.WindowsUpdates.MonitoringRule>()
			{
				new Microsoft.Graph.WindowsUpdates.MonitoringRule
				{
					Signal = Microsoft.Graph.WindowsUpdates.MonitoringSignal.Rollback,
					Threshold = 5,
					Action = Microsoft.Graph.WindowsUpdates.MonitoringAction.PauseDeployment
				}
			}
		}
	}
};

await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"]
	.Request()
	.UpdateAsync(deployment);

```