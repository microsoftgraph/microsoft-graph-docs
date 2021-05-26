---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var updatableAsset = new Microsoft.Graph.WindowsUpdates.UpdatableAssetGroup
{
};

await graphClient.Admin.Windows.Updates.UpdatableAssets
	.Request()
	.AddAsync(updatableAsset);

```