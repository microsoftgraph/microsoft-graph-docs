---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var place = await graphClient.Places["3162F1E1-C4C0-604B-51D8-91DA78989EB1"]
	.Request()
	.GetAsync();

```