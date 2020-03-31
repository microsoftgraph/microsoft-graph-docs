---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = await graphClient.Applications["{id}"]
	.Request()
	.GetAsync();

```