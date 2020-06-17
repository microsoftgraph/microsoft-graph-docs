---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "My Day at the Beach",
	Bundle = new Bundle
	{
		Album = new Album
		{
		}
	},
	Children = (IDriveItemChildrenCollectionPage)new List<DriveItem>()
	{
		new DriveItem
		{
			Id = "1234asdf"
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