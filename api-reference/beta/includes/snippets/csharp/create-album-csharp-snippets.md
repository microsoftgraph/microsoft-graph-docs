---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "My Day at the Beach",
	AdditionalData = new Dictionary<string, object>()
	{
		{"@name.conflictBehavior","rename"}
	},
	Bundle = new Bundle
	{
		Album = new Album
		{
		}
	},
	Children = new List<DriveItem>()
	{
		new DriveItem
		{
			Id = "1234asdf"
		}
	}
};

await graphClient.Drive.Bundles
	.Request()
	.AddAsync(driveItem);

```