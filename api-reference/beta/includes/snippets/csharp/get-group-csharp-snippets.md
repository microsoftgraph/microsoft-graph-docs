---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups["45b7d2e7-b882-4a80-ba97-10b7a63b8fa4"]
	.Request()
	.GetAsync();

```