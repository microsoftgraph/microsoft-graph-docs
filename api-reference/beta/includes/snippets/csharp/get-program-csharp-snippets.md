---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var programs = await graphClient.Programs
	.Request()
	.GetAsync();

```