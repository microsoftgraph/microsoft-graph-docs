---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schools = await graphClient.Education.Schools
	.Request()
	.GetAsync();

```