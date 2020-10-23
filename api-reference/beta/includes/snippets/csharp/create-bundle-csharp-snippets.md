---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "Just some files",
	Bundle = new Bundle
	{
	},
	Children = (IDriveItemChildrenCollectionPage)new List<DriveItem>()
	{
		new DriveItem
		{
			Id = "1234asdf"
		},
		new DriveItem
		{
			Id = "1234qwerty"
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"@microsoft.graph.conflictBehavior", "rename"}
	}
};

await graphClient.Drive.Bundles
	.Request()
	.AddAsync(driveItem);

```