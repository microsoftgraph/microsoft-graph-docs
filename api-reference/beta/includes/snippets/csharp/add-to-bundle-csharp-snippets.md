---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Id = "123456!87"
};

await graphClient.Drive.Bundles["{bundle-id}"].Children
	.Request()
	.AddAsync(driveItem);

```