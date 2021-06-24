---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "Shared legal agreements"
};

await graphClient.Drive.Items["{driveItem-id}"]
	.Request()
	.UpdateAsync(driveItem);

```