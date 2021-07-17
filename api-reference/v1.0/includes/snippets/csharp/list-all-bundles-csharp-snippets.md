---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bundles = await graphClient.Drive.Bundles
	.Request()
	.GetAsync();

```