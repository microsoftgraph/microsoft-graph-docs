---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Teams["{id}"].Channels["{id}"].FilesFolder
	.Request()
	.GetAsync();

```