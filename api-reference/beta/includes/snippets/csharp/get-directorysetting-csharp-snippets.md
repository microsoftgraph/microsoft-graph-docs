---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = await graphClient.Settings["{id}"]
	.Request()
	.GetAsync();

```