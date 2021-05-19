---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var updateCategory = Microsoft.Graph.WindowsUpdates.UpdateCategory.Feature;

var memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice";

var ids = new List<String>()
{
	"String",
	"String",
	"String"
};

await graphClient.Admin.Windows.Updates.UpdatableAssets
	.UnenrollAssetsById(updateCategory,memberEntityType,ids)
	.Request()
	.PostAsync();

```