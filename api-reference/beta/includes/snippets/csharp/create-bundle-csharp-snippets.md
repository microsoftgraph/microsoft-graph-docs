---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "Just some files",
	AdditionalData = new Dictionary<string, object>()
	{
		{"@name.conflictBehavior","rename"}
	},
	Bundle = new Bundle
	{
	},
	Children = new List<DriveItem>()
	{
		new DriveItem
		{
			Id = "1234asdf"
		},
		new DriveItem
		{
			Id = "1234qwerty"
		}
	}
};

await graphClient.Drive.Bundles
	.Request()
	.AddAsync(driveItem);

```