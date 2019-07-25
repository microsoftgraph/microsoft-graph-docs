---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applications = await graphClient.Applications
	.Request()
	.GetAsync();

```