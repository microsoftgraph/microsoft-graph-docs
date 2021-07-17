---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Bundles["{driveItem-id}"].Children["{driveItem-id}"]
	.Request()
	.DeleteAsync();

```