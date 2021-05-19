---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addMembers = new List<Microsoft.Graph.WindowsUpdates.UpdatableAsset>()
{
	new Microsoft.Graph.WindowsUpdates.UpdatableAsset
	{
		Id = "String (identifier)"
	}
};

var removeMembers = new List<Microsoft.Graph.WindowsUpdates.UpdatableAsset>()
{
	new Microsoft.Graph.WindowsUpdates.UpdatableAsset
	{
		Id = "String (identifier)"
	}
};

var addExclusions = new List<Microsoft.Graph.WindowsUpdates.UpdatableAsset>()
{
	new Microsoft.Graph.WindowsUpdates.UpdatableAsset
	{
		Id = "String (identifier)"
	}
};

var removeExclusions = new List<Microsoft.Graph.WindowsUpdates.UpdatableAsset>()
{
	new Microsoft.Graph.WindowsUpdates.UpdatableAsset
	{
		Id = "String (identifier)"
	}
};

await graphClient.Admin.Windows.Updates.Deployments["{windowsUpdates.deployment-id}"].Audience
	.UpdateAudience(addMembers,removeMembers,addExclusions,removeExclusions)
	.Request()
	.PostAsync();

```