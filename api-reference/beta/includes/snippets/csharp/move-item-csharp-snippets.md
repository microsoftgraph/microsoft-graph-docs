---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	ParentReference = new ItemReference
	{
		Id = "new-parent-folder-id"
	},
	Name = "new-item-name.txt"
};

await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.UpdateAsync(driveItem);

```