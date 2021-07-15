---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var updateCategory = Microsoft.Graph.WindowsUpdates.UpdateCategory.Feature;

var assets = new List<Microsoft.Graph.WindowsUpdates.UpdatableAsset>()
{
	new Microsoft.Graph.WindowsUpdates.AzureADDevice
	{
		Id = "String (identifier)"
	}
};

await graphClient.Admin.Windows.Updates.UpdatableAssets
	.UnenrollAssets(updateCategory,assets)
	.Request()
	.PostAsync();

```