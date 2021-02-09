---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var installedApps = await graphClient.Chats["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"].InstalledApps
	.Request()
	.GetAsync();

```