---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "New Folder",
	Folder = new Folder
	{
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"@microsoft.graph.conflictBehavior", "rename"}
	}
};

await graphClient.Me.Drive.Root.Children
	.Request()
	.AddAsync(driveItem);

```